-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2008 at 08:39 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `holodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(100) NOT NULL auto_increment,
  `username` text NOT NULL,
  `appstatus` text NOT NULL,
  `age` text NOT NULL,
  `country` text NOT NULL,
  `timezone` text NOT NULL,
  `realname` text NOT NULL,
  `modname` text NOT NULL,
  `time` text NOT NULL,
  `experience` text NOT NULL,
  `message1` text NOT NULL,
  `message2` text NOT NULL,
  `message3` text NOT NULL,
  `users` text NOT NULL,
  `visitoripaddy` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `applications`
--


-- --------------------------------------------------------

--
-- Table structure for table `catalogue_deals`
--

CREATE TABLE IF NOT EXISTS `catalogue_deals` (
  `id` int(10) NOT NULL COMMENT 'The ID of this deal [the part after "deal"]',
  `tid` int(10) NOT NULL COMMENT 'The template ID of the item that should be in this deal',
  `amount` int(10) NOT NULL COMMENT 'The amount, of how many items of the type _TID should be in this deal'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `catalogue_deals`
--

INSERT INTO `catalogue_deals` (`id`, `tid`, `amount`) VALUES
(2, 272, 1),
(3, 325, 1),
(3, 485, 1),
(2, 270, 2),
(2, 484, 1),
(1, 72, 1),
(3, 318, 2),
(4, 76, 1),
(4, 410, 1),
(4, 328, 1),
(5, 312, 1),
(5, 313, 3),
(6, 402, 1),
(6, 352, 4),
(97, 41, 6),
(98, 42, 6),
(99, 43, 6),
(96, 44, 6);

-- --------------------------------------------------------

--
-- Table structure for table `catalogue_items`
--

CREATE TABLE IF NOT EXISTS `catalogue_items` (
  `tid` int(10) NOT NULL auto_increment,
  `catalogue_name` varchar(100) collate latin1_general_ci NOT NULL,
  `catalogue_description` varchar(200) collate latin1_general_ci NOT NULL,
  `catalogue_cost` int(5) NOT NULL,
  `typeid` tinyint(1) NOT NULL,
  `length` tinyint(2) NOT NULL,
  `width` tinyint(2) NOT NULL,
  `top` double(4,2) NOT NULL,
  `name_cct` varchar(110) collate latin1_general_ci NOT NULL,
  `colour` varchar(100) collate latin1_general_ci NOT NULL,
  `catalogue_id_page` tinyint(3) NOT NULL,
  `door` int(3) NOT NULL,
  `tradeable` int(1) NOT NULL,
  `recycleable` int(1) NOT NULL,
  `catalogue_id_index` int(5) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13579 ;

--
-- Dumping data for table `catalogue_items`
--

INSERT INTO `catalogue_items` (`tid`, `catalogue_name`, `catalogue_description`, `catalogue_cost`, `typeid`, `length`, `width`, `top`, `name_cct`, `colour`, `catalogue_id_page`, `door`, `tradeable`, `recycleable`, `catalogue_id_index`) VALUES
(1, 'Green Parasol', 'Block those rays!', 25, 1, 1, 1, 0.00, 'rare_parasol*0', '#ffffff,#ffffff,#ffffff,#94f718', 67, 0, 1, 1, 1),
(2, 'floor', 'Floor', 3, 0, 0, 0, 0.00, 'floor', '0', 7, 0, 1, 1, 2),
(3, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 1', '0', 7, 0, 1, 1, 3),
(4, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 2', '0', 7, 0, 1, 1, 4),
(5, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 3', '0', 7, 0, 1, 1, 5),
(6, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 4', '0', 7, 0, 1, 1, 6),
(7, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 5', '0', 7, 0, 1, 1, 7),
(8, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 6', '0', 7, 0, 1, 1, 8),
(9, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 7', '0', 7, 0, 1, 1, 9),
(10, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 8', '0', 7, 0, 1, 1, 10),
(11, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 9', '0', 7, 0, 1, 1, 11),
(12, 'wallpaper', 'wallpaper', 3, 0, 0, 0, 0.00, 'wallpaper 10', '0', 7, 0, 1, 1, 12),
(13, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 11', '0', 7, 0, 1, 1, 13),
(14, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 12', '0', 7, 0, 1, 1, 14),
(15, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 13', '0', 7, 0, 1, 1, 15),
(16, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 14', '0', 7, 0, 1, 1, 16),
(17, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 15', '0', 7, 0, 1, 1, 17),
(18, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 16', '0', 7, 0, 1, 1, 18),
(19, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 17', '0', 7, 0, 1, 1, 19),
(20, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 18', '0', 7, 0, 1, 1, 20),
(21, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 19', '0', 7, 0, 1, 1, 21),
(22, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 20', '0', 7, 0, 1, 1, 22),
(23, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 21', '0', 7, 0, 1, 1, 23),
(24, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 22', '0', 7, 0, 1, 1, 24),
(25, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 23', '0', 7, 0, 1, 1, 25),
(26, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 24', '0', 7, 0, 1, 1, 26),
(27, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 25', '0', 7, 0, 1, 1, 27),
(28, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 26', '0', 7, 0, 1, 1, 28),
(29, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 27', '0', 7, 0, 1, 1, 29),
(30, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 28', '0', 7, 0, 1, 1, 30),
(31, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 29', '0', 7, 0, 1, 1, 31),
(32, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 30', '0', 7, 0, 1, 1, 32),
(33, 'wallpaper', 'wallpaper', 5, 0, 0, 0, 0.00, 'wallpaper 31', '0', 7, 0, 1, 1, 33),
(34, 'Basket', 'Night, night', 20, 1, 1, 1, 0.00, 'nest', '0,0,0', 8, 0, 0, 1, 34),
(35, 'Basket', 'Night, night', 20, 1, 1, 1, 0.00, 'nest', '0,0,0', 8, 0, 0, 1, 35),
(36, 'Basket', 'Night, night', 20, 1, 1, 1, 0.00, 'nest', '0,0,0', 8, 0, 0, 1, 36),
(37, 'Doggy Bones', 'Natural nutrition for the barking one', 2, 4, 1, 1, 0.00, 'deal97', '0,0,0', 9, 0, 1, 1, 37),
(38, 'Sardines', 'Fresh catch of the day', 2, 4, 1, 1, 0.00, 'deal98', '0,0,0', 9, 0, 1, 1, 38),
(39, 'Cabbage', 'Health food for pets', 2, 4, 1, 1, 0.00, 'deal99', '0,0,0', 9, 0, 1, 1, 39),
(40, 'T-Bones', 'For the croc!', 2, 4, 1, 1, 0.00, 'deal96', '0,0,0', 9, 0, 1, 1, 40),
(41, 'Bones Mega Multipack', 'Fantastic 20% Saving!', 1, 4, 1, 1, 0.00, 'petfood1', '0,0,0', 9, 0, 1, 1, 41),
(42, 'Sardines Mega Multipack', 'Fantastic 20% Saving!', 1, 4, 1, 1, 0.00, 'petfood2', '0,0,0', 9, 0, 1, 1, 42),
(43, 'Cabbage Mega Multipack', 'Fantastic 20% Saving!', 1, 4, 1, 1, 0.00, 'petfood3', '0,0,0', 9, 0, 1, 1, 43),
(44, 'T-Bones Mega Multipack', 'Fantastic 20% Saving!', 1, 4, 1, 1, 0.00, 'petfood4', '0,0,0', 9, 0, 1, 1, 44),
(45, 'Red Water Bowl', 'Aqua unlimited', 2, 4, 1, 1, 0.00, 'waterbowl*1', '#ff3f3f,#ffffff,#ffffff', 9, 0, 1, 1, 45),
(46, 'Green Water Bowl', 'Aqua unlimited', 2, 4, 1, 1, 0.00, 'waterbowl*2', '#3fff3f,#ffffff,#ffffff', 9, 0, 1, 1, 46),
(47, 'Yellow Water Bowl', 'Aqua unlimited', 2, 4, 1, 1, 0.00, 'waterbowl*3', '#ffff00,#ffffff,#ffffff', 9, 0, 1, 1, 47),
(48, 'Blue Water Bowl', 'Aqua unlimited', 2, 4, 1, 1, 0.00, 'waterbowl*4', '#0099ff,#ffffff,#ffffff', 9, 0, 1, 1, 48),
(49, 'Brown Water Bowl', 'Aqua unlimited', 2, 4, 1, 1, 0.00, 'waterbowl*5', '#bf7f00,#ffffff,#ffffff', 9, 0, 1, 1, 49),
(50, 'Chocolate Mouse', 'For gourmet kittens', 1, 4, 1, 1, 0.00, 'goodie2', '0,0,0', 9, 0, 1, 1, 50),
(51, 'Marzipan Man', 'Crunchy Dog Treat', 1, 4, 1, 1, 0.00, 'goodie1', '#ff4cbf,#ffffff', 9, 0, 1, 1, 51),
(52, 'Marzipan Man', 'Crunchy Dog Treat', 1, 4, 1, 1, 0.00, 'goodie1*1', '#3fffff,#ffffff', 9, 0, 1, 1, 52),
(53, 'Marzipan Man', 'Crunchy Dog Treat', 1, 4, 1, 1, 0.00, 'goodie1*2', '#ffbf00,#ffffff', 9, 0, 1, 1, 53),
(54, 'Rubber Ball', 'it''s bouncy-tastic', 2, 4, 1, 1, 0.00, 'toy1', '#ff0000,#ffff00,#ffffff,#ffffff', 9, 0, 1, 1, 54),
(55, 'Rubber Ball', 'it''s bouncy-tastic', 2, 4, 1, 1, 0.00, 'toy1*1', '#ff7f00,#007f00,#ffffff,#ffffff', 9, 0, 1, 1, 55),
(56, 'Rubber Ball', 'it''s bouncy-tastic', 2, 4, 1, 1, 0.00, 'toy1*2', '#003f7f,#ff00bf,#ffffff,#ffffff', 9, 0, 1, 1, 56),
(57, 'Rubber Ball', 'it''s bouncy-tastic', 2, 4, 1, 1, 0.00, 'toy1*3', '#bf1900,#00bfbf,#ffffff,#ffffff', 9, 0, 1, 1, 57),
(58, 'Rubber Ball', 'it''s bouncy-tastic', 2, 4, 1, 1, 0.00, 'toy1*4', '#000000,#ffffff,#ffffff,#ffffff', 9, 0, 1, 1, 58),
(59, 'Amanjena Table', 'It must be Jinn-er time!', 5, 1, 3, 2, 1.00, 'arabian_bigtb', '0,0,0', 10, 0, 1, 1, 59),
(60, 'Green Blossom Chair', 'Exotic, soft seating', 5, 2, 1, 1, 1.00, 'arabian_chair', '0,0,0', 10, 0, 1, 1, 60),
(61, 'Carved Cedar Divider', 'Soft wooden screen', 6, 1, 1, 2, 0.00, 'arabian_divdr', '0,0,0', 10, 0, 1, 1, 61),
(62, 'Green Blossom Pillow', 'Exotic comfort', 4, 2, 1, 1, 1.00, 'arabian_pllw', '0,0,0', 10, 0, 1, 1, 62),
(63, 'Berber Kilim Rug', 'Green blossom design', 5, 4, 3, 5, 0.00, 'arabian_rug', '0,0,0', 10, 0, 1, 1, 63),
(64, 'Ornamental Urn', 'Beware the snake!', 6, 1, 1, 1, 0.00, 'arabian_snake', '0,0,0', 10, 0, 1, 1, 64),
(65, 'Ancestral Scimitars', 'Not for yielding', 3, 0, 0, 0, 0.00, 'arabian_swords', '0,0,0', 10, 0, 1, 1, 65),
(66, 'Tea Maker', 'Quench that desert thirst', 8, 1, 1, 1, 0.00, 'arabian_teamk', '0,0,0', 10, 0, 1, 1, 66),
(67, 'Hexagonal Tea Table', 'Serve up a treat', 4, 1, 1, 1, 0.00, 'arabian_tetbl', '0,0,0', 10, 0, 1, 1, 67),
(68, 'Mint Tea Tray', 'Tea for every occasion', 3, 1, 1, 1, 0.00, 'arabian_tray1', '0,0,0', 10, 0, 1, 1, 68),
(70, 'Sweets Tray', 'Indulge yourself!', 3, 1, 1, 1, 0.00, 'arabian_tray3', '0,0,0', 10, 0, 1, 1, 70),
(71, 'Fruit Tray', 'Sweet, juicy and ripe', 3, 1, 1, 1, 0.00, 'arabian_tray4', '0,0,0', 10, 0, 1, 1, 71),
(72, 'Arabian Window Frame', 'Arabian days and nights', 3, 0, 0, 0, 0.00, 'arabian_wndw', '0,0,0', 10, 0, 1, 1, 72),
(73, 'Candle Tray', 'For those Arabian nights', 3, 1, 1, 1, 0.20, 'arabian_tray2', '0,0,0', 10, 0, 1, 1, 73),
(74, 'AlhambraTrax 1', 'Music of the Arabian night!', 3, 1, 1, 1, 0.20, 'sound_set_62', '0,0,0', 10, 0, 1, 1, 74),
(75, 'AlhambraTrax 2', 'Desert hits by the oasis!', 3, 1, 1, 1, 0.20, 'sound_set_63', '0,0,0', 10, 0, 1, 1, 75),
(76, 'AlhambraTrax 3', 'Make a little Jinn-gle!', 3, 1, 1, 1, 0.20, 'sound_set_64', '0,0,0', 10, 0, 1, 1, 76),
(77, 'Marble Tile', 'Slick sophistication, don''t slip!', 1, 4, 1, 1, 1.00, 'tile_marble', '0,0,0', 10, 0, 1, 1, 77),
(78, 'Red Tile', 'Ideal for your downtown promenades & piazzas', 1, 4, 1, 1, 1.00, 'tile_brown', '0,0,0', 10, 0, 1, 1, 78),
(79, 'Area Quest Desk', 'For the true Habbo Scholars', 15, 1, 2, 1, 0.00, 'silo_studydesk', '0,0,0', 11, 0, 1, 1, 79),
(80, 'Double Bed', 'Plain and simple x2', 3, 3, 2, 3, 1.50, 'bed_silo_two', '0,0,0', 11, 0, 1, 1, 80),
(81, 'Single Bed', 'Plain and simple', 3, 3, 1, 3, 1.50, 'bed_silo_one', '0,0,0', 11, 0, 1, 1, 81),
(82, 'Bookcase', 'For nic naks and art deco books', 3, 1, 2, 1, 2.85, 'shelves_silo', '0,0,0', 11, 0, 1, 1, 82),
(83, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo', '#ffffff,#ffffff,#ffffff,#ffffff,#A2C6C8,#A2C6C8,#A2C6C8,#A2C6C8', 11, 0, 1, 1, 83),
(84, 'Armchair', 'Large, but worth it', 3, 2, 1, 1, 1.00, 'sofachair_silo', '#ffffff,#ffffff,#A2C6C8,#A2C6C8,#ffffff', 11, 0, 1, 1, 84),
(85, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small', '#ffffff,#A2C6C8,#ffffff,#A2C6C8', 11, 0, 1, 1, 85),
(86, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3', '#ffffff,#ffffff,#ffffff,#A2C6C8', 11, 1, 1, 1, 86),
(87, 'Screen', 'Stylish sectioning', 3, 1, 2, 1, 1.20, 'divider_silo2', '0,0,0', 11, 0, 1, 1, 87),
(88, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1', '#ffffff,#A2C6C8,0,#A2C6C8', 11, 0, 1, 1, 88),
(89, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo', '#ffffff,#ffffff,#A2C6C8,#A2C6C8,#ffffff', 11, 0, 1, 1, 89),
(90, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo', '#ffffff,#A2C6C8,#ffffff', 11, 0, 1, 1, 90),
(91, 'Bar Stool', 'Practical and convenient', 3, 2, 1, 1, 1.50, 'barchair_silo', '#ffffff,#A2C6C8,#ffffff', 11, 0, 1, 1, 91),
(92, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med', '#ffffff,#8FAEAF', 11, 0, 1, 1, 92),
(93, 'The Wheel of Destiny!', 'So you gotta ask yourself "Do I feel lucky?"', 10, 0, 0, 0, 0.00, 'habbowheel', '0,0,0', 12, 0, 1, 1, 93),
(94, 'Digital TV', 'Bang up to date', 6, 1, 1, 3, 0.00, 'tv_luxus', '0,0,0', 12, 0, 1, 1, 94),
(95, 'Large TV', 'For family viewing', 4, 1, 1, 2, 0.00, 'wood_tv', '0,0,0', 12, 0, 1, 1, 95),
(96, 'Portable TV', 'Don''t miss those soaps', 3, 1, 1, 1, 0.00, 'red_tv', '0,0,0', 12, 0, 1, 1, 96),
(97, 'Pad of stickies', 'Pad of stickies', 3, 0, 0, 0, 0.00, 'post.it', '0,0,0', 12, 0, 1, 1, 97),
(98, 'Pizza Box', 'You dirty Habbo', 3, 1, 1, 1, 0.00, 'pizza', '0,0,0', 12, 0, 1, 1, 98),
(99, 'Empty Cans', 'Are you a slob too?', 3, 1, 1, 1, 0.00, 'drinks', '0,0,0', 12, 0, 1, 1, 99),
(100, 'Empty Spinning Bottle', 'For interesting games!', 3, 4, 1, 1, 0.00, 'bottle', '0,0,0', 12, 0, 1, 1, 100),
(101, 'Holo-dice', 'What''s your lucky number?', 6, 1, 1, 1, 0.00, 'edice', '0,0,0', 12, 0, 1, 1, 101),
(102, 'Cake', 'Save me a slice!', 4, 1, 1, 1, 0.00, 'habbocake', '0,0,0', 12, 0, 1, 1, 102),
(103, 'Menorah', 'Light up your room', 3, 1, 1, 1, 0.00, 'menorah', '0,0,0', 12, 0, 1, 1, 103),
(104, 'Squidgy Bunny', 'Yours to cuddle up to', 3, 1, 1, 1, 0.00, 'bunny', '0,0,0', 12, 0, 1, 1, 104),
(105, 'Mummy', 'Beware the curse...', 3, 0, 0, 0, 0.00, 'poster 44', '0,0,0', 12, 0, 1, 1, 105),
(106, 'White Candle Plate', 'Simple but stylish', 3, 1, 1, 1, 0.00, 'wcandleset', '0,0,0', 12, 0, 1, 1, 106),
(107, 'Red Candle Plate', 'Simple but stylish', 3, 1, 1, 1, 0.00, 'rcandleset', '0,0,0', 12, 0, 1, 1, 107),
(108, 'Joint of Ham', 'Tuck in', 3, 1, 1, 1, 0.00, 'ham', '0,0,0', 12, 0, 1, 1, 108),
(109, 'Lert', 'Set it off.', 5, 1, 1, 1, 0.00, 'hockey_light', '0,0,0', 12, 0, 1, 1, 109),
(110, 'Yellow Maze Barrier', 'No escape this way!', 25, 1, 1, 2, 0.00, 'barrier*1', '0,0,#FFC927,#FFC927', 12, 0, 1, 1, 110),
(111, 'White Road Barrier', 'No trespassing, please!', 25, 1, 1, 2, 0.00, 'barrier*2', '0,0,#FFC927,#FFC927', 12, 0, 1, 1, 111),
(112, 'Red Road Barrier', 'No trespassing, please!', 25, 1, 1, 2, 0.00, 'barrier*3', '0,0,#FFC927,#FFC927', 12, 0, 1, 1, 112),
(113, 'Classic Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 113),
(114, 'Blue Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 114),
(115, 'Purple Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 115),
(116, 'Yellow Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 116),
(117, 'White Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 117),
(118, 'Red Traffic Light', 'Chill and wait your turn!', 25, 1, 1, 1, 0.00, 'traffic_light', '0,#D91E26,0', 12, 0, 1, 1, 118),
(119, 'Dragon Screen', 'For your great wall', 8, 1, 1, 1, 0.00, 'wall_china', '0,0,0', 13, 0, 1, 1, 119),
(120, 'Dragon Screen', 'Firm, fireproof foundation', 8, 1, 1, 1, 0.00, 'corner_china', '0,0,0', 13, 0, 1, 1, 120),
(121, 'Chinese Lacquer Bookshelf', 'To hold the mind''s treasures', 8, 2, 2, 1, 0.00, 'china_shelve', '0,0,0', 13, 0, 1, 1, 121),
(122, 'Chinese Lacquer Table', 'Exotic and classy', 5, 1, 1, 1, 0.80, 'china_table', '0,0,0', 13, 0, 1, 1, 122),
(123, 'Chinese Lacquer Chair', 'The elegant beauty of tradition', 5, 2, 1, 1, 1.00, 'chair_china', '0,0,0', 13, 0, 1, 1, 123),
(124, 'Calligraphy poster', 'chinese calligraphy', 3, 0, 0, 0, 0.00, 'poster 57', '0,0,0', 13, 0, 1, 1, 124),
(125, 'Red knots poster', 'whish you luck', 5, 0, 0, 0, 0.00, 'poster 58', '0,0,0', 13, 0, 1, 1, 125),
(126, 'Chinese Sofa', 'Seating,Oriental style!', 10, 2, 3, 1, 1.00, 'cn_sofa', '0,0,0', 13, 0, 1, 1, 126),
(127, 'Lantern', 'Light of the East', 15, 1, 1, 1, 1.00, 'cn_lamp', '0,0,0', 13, 0, 1, 1, 127),
(128, 'Bubble Bath', 'The ultimate in pampering', 6, 2, 1, 2, 1.20, 'bath', '0,0,0', 14, 0, 1, 1, 128),
(129, 'Sink', 'Hot and cold thrown in for no charge', 3, 1, 1, 1, 0.00, 'sink', '0,0,0', 14, 0, 1, 1, 129),
(130, 'Rubber Duck', 'Every bather needs one', 1, 1, 1, 1, 0.00, 'duck', '0,0,0', 14, 0, 1, 1, 130),
(131, 'Loo Seat', 'Loo Seat', 4, 2, 1, 1, 1.20, 'toilet', '0,0,0', 14, 0, 1, 1, 131),
(132, 'Loo Seat', 'Loo Seat', 4, 2, 1, 1, 1.20, 'toilet_red', '0,0,0', 14, 0, 1, 1, 132),
(133, 'Loo Seat', 'Loo Seat', 4, 2, 1, 1, 1.20, 'toilet_yell', '0,0,0', 14, 0, 1, 1, 133),
(134, 'Floor Tiles', 'In a choice of colours', 3, 4, 4, 4, 0.00, 'tile', '0,0,0', 14, 0, 1, 1, 134),
(135, 'Floor Tiles', 'In a choice of colours', 3, 4, 4, 4, 0.00, 'tile_red', '0,0,0', 14, 0, 1, 1, 135),
(136, 'Floor Tiles', 'In a choice of colours', 3, 4, 4, 4, 0.00, 'tile_yell', '0,0,0', 14, 0, 1, 1, 136),
(137, 'Candy Bar', 'For cute constructions', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*5', '#ffffff,#ffffff,#FF9BBD,#FF9BBD', 15, 0, 1, 1, 137),
(138, 'Candy Corner', 'For sweet corners!', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*5', '#ffffff,#FF9BBD', 15, 0, 1, 1, 138),
(139, 'Candy Hatch (lockable)', 'Keep the Pink in!', 6, 1, 1, 1, 0.00, 'divider_poly3*5', '#ffffff,#ffffff,#ffffff,#EE7EA4,#EE7EA4', 15, 1, 1, 1, 139),
(140, 'Armchair', 'Think pink', 3, 2, 1, 1, 1.20, 'sofachair_polyfon_girl', '#ffffff,#ffffff,#EE7EA4,#EE7EA4', 15, 0, 1, 1, 140),
(141, 'Two-seater Sofa', 'Romantic pink for two', 4, 2, 2, 1, 1.20, 'sofa_polyfon_girl', '#ffffff,#ffffff,#ffffff,#ffffff,#EE7EA4,#EE7EA4,#EE7EA4,#EE7EA4', 15, 0, 1, 1, 141),
(142, 'Pink Faux-Fur', 'Bear Rug Cute', 4, 4, 2, 3, 0.00, 'carpet_polar*1', '#ffbbcf,#ffbbcf,#ffddef', 15, 0, 1, 1, 142),
(143, 'Single Bed', 'Snuggle down in princess pink', 3, 3, 1, 3, 1.50, 'bed_polyfon_girl_one', '#ffffff,#ffffff,#ffffff,#EE7EA4,#EE7EA4', 15, 0, 1, 1, 143),
(144, 'Double Bed', 'Snuggle down in princess pink', 4, 3, 2, 3, 1.50, 'bed_polyfon_girl', '#ffffff,#ffffff,#EE7EA4,#EE7EA4', 15, 0, 1, 1, 144),
(145, 'Camera', 'Smile!', 10, 1, 1, 1, 0.00, 'camera', '0,0,0', 16, 0, 1, 1, 145),
(146, 'Film', 'Film for five photos', 6, 0, 0, 0, 0.00, 'photo_film', '0,0,0', 16, 0, 0, 0, 146),
(147, 'Union Jack', 'The UK flag', 3, 0, 0, 0, 0.00, 'poster 500', '0,0,0', 17, 0, 1, 1, 147),
(148, 'Jolly Roger', 'For pirates everywhere', 3, 0, 0, 0, 0.00, 'poster 501', '0,0,0', 17, 0, 1, 1, 148),
(149, 'The Stars and Stripes', 'The US flag', 3, 0, 0, 0, 0.00, 'poster 502', '0,0,0', 17, 0, 1, 1, 149),
(150, 'The Swiss flag', 'There''s no holes in this...', 3, 0, 0, 0, 0.00, 'poster 503', '0,0,0', 17, 0, 1, 1, 150),
(151, 'The Bundesflagge', 'The German flag', 3, 0, 0, 0, 0.00, 'poster 504', '0,0,0', 17, 0, 1, 1, 151),
(152, 'The Maple Leaf', 'The Canadian flag', 3, 0, 0, 0, 0.00, 'poster 505', '0,0,0', 17, 0, 1, 1, 152),
(153, 'The flag of Finland', 'To ''Finnish'' your decor...', 3, 0, 0, 0, 0.00, 'poster 506', '0,0,0', 17, 0, 1, 1, 153),
(154, 'The French Tricolore', 'The French flag', 3, 0, 0, 0, 0.00, 'poster 507', '0,0,0', 17, 0, 1, 1, 154),
(155, 'The Spanish flag', 'The flag of Spain', 3, 0, 0, 0, 0.00, 'poster 508', '0,0,0', 17, 0, 1, 1, 155),
(156, 'The Jamaican flag', 'The flag of Jamaica', 3, 0, 0, 0, 0.00, 'poster 509', '0,0,0', 17, 0, 1, 1, 156),
(157, 'The Italian flag', 'The flag of Italy', 3, 0, 0, 0, 0.00, 'poster 510', '0,0,0', 17, 0, 1, 1, 157),
(158, 'The Dutch flag', 'The flag of The Netherlands', 3, 0, 0, 0, 0.00, 'poster 511', '0,0,0', 17, 0, 1, 1, 158),
(159, 'The Irish flag', 'The flag of Ireland', 3, 0, 0, 0, 0.00, 'poster 512', '0,0,0', 17, 0, 1, 1, 159),
(160, 'The Australian flag', 'Aussies rule!', 3, 0, 0, 0, 0.00, 'poster 513', '0,0,0', 17, 0, 1, 1, 160),
(161, 'The EU flag', 'Be proud to be in the Union!', 3, 0, 0, 0, 0.00, 'poster 514', '0,0,0', 17, 0, 1, 1, 161),
(162, 'The Swedish flag', 'Waved by Swedes everywhere', 3, 0, 0, 0, 0.00, 'poster 515', '0,0,0', 17, 0, 1, 1, 162),
(163, 'The English flag', 'Eng-er-land', 3, 0, 0, 0, 0.00, 'poster 516', '0,0,0', 17, 0, 1, 1, 163),
(164, 'The Scottish flag', 'Where''s your kilt?', 3, 0, 0, 0, 0.00, 'poster 517', '0,0,0', 17, 0, 1, 1, 164),
(165, 'The Welsh flag', 'A fiery dragon for your wall', 3, 0, 0, 0, 0.00, 'poster 518', '0,0,0', 17, 0, 1, 1, 165),
(166, 'The Rainbow Flag', 'Every colour for everyone', 3, 0, 0, 0, 0.00, 'poster 520', '0,0,0', 17, 0, 1, 1, 166),
(167, 'Flag of Brazil', 'Ordem e progresso', 3, 0, 0, 0, 0.00, 'poster 521', '0,0,0', 17, 0, 1, 1, 167),
(168, 'The flag of Japan', 'The flag of Japan', 3, 0, 0, 0, 0.00, 'poster 522', '0,0,0', 17, 0, 1, 1, 168),
(169, 'The flag of India', 'The flag of India', 3, 0, 0, 0, 0.00, 'poster 523', '0,0,0', 17, 0, 1, 1, 169),
(170, 'Comedy Poster', 'The Noble and Silver Show', 3, 0, 0, 0, 0.00, 'poster 1', '0,0,0', 18, 0, 1, 1, 170),
(171, 'Carrot Plaque', 'Take pride in your veg!', 3, 0, 0, 0, 0.00, 'poster 2', '0,0,0', 18, 0, 1, 1, 171),
(172, 'Fish Plaque', 'Smells fishy, looks cool', 3, 0, 0, 0, 0.00, 'poster 3', '0,0,0', 18, 0, 1, 1, 172),
(173, 'Bear Plaque', 'Fake of course!', 3, 0, 0, 0, 0.00, 'poster 4', '0,0,0', 18, 0, 1, 1, 173),
(174, 'Duck Poster', 'Quacking good design!', 3, 0, 0, 0, 0.00, 'poster 5', '0,0,0', 18, 0, 1, 1, 174),
(175, 'Abstract Poster', 'But is it the right way up?', 3, 0, 0, 0, 0.00, 'poster 6', '0,0,0', 18, 0, 1, 1, 175),
(176, 'Hammer Cabinet', 'For emergencies only', 3, 0, 0, 0, 0.00, 'poster 7', '0,0,0', 18, 0, 1, 1, 176),
(177, 'Habbo Colours', 'Habbos come in all colours', 3, 0, 0, 0, 0.00, 'poster 8', '0,0,0', 18, 0, 1, 1, 177),
(178, 'Rainforest Poster', 'Do your bit for the environment', 3, 0, 0, 0, 0.00, 'poster 9', '0,0,0', 18, 0, 1, 1, 178),
(179, 'Lapland Poster', 'Beautiful sunset', 3, 0, 0, 0, 0.00, 'poster 10', '0,0,0', 18, 0, 1, 1, 179),
(180, 'Certificate', 'I obey the Habbo way!', 3, 0, 0, 0, 0.00, 'poster 11', '0,0,0', 18, 0, 1, 1, 180),
(181, 'Lapland Poster', 'a beautiful sunset', 3, 0, 0, 0, 0.00, 'poster 12', '0,0,0', 18, 0, 1, 1, 181),
(182, 'BW Skyline Poster', 'Arty black and white', 3, 0, 0, 0, 0.00, 'poster 13', '0,0,0', 18, 0, 1, 1, 182),
(183, 'Fox Poster', 'A cunning painting', 3, 0, 0, 0, 0.00, 'poster 14', '0,0,0', 18, 0, 1, 1, 183),
(184, 'Himalayas Poster', 'Marvellous mountains', 3, 0, 0, 0, 0.00, 'poster 15', '0,0,0', 18, 0, 1, 1, 184),
(185, 'Bars', 'Added security', 3, 0, 0, 0, 0.00, 'poster 16', '0,0,0', 18, 0, 1, 1, 185),
(186, 'Butterfly Cabinet 1', 'Beautiful reproduction butterfly', 3, 0, 0, 0, 0.00, 'poster 17', '0,0,0', 18, 0, 1, 1, 186),
(187, 'Butterfly Cabinet 2', 'Beautiful reproduction butterfly', 3, 0, 0, 0, 0.00, 'poster 18', '0,0,0', 18, 0, 1, 1, 187),
(188, 'Hole In The Wall', 'Trying to get in or out?', 3, 0, 0, 0, 0.00, 'poster 19', '0,0,0', 18, 0, 1, 1, 188),
(189, 'Siva Poster', 'The Auspicious One', 3, 0, 0, 0, 0.00, 'poster 32', '0,0,0', 18, 0, 1, 1, 189),
(190, 'Save the Panda', 'We can''t bear to lose them', 3, 0, 0, 0, 0.00, 'poster 33', '0,0,0', 18, 0, 1, 1, 190),
(191, 'Scamme''d', 'Habbo-punk for the never-agreeing', 3, 0, 0, 0, 0.00, 'poster 34', '0,0,0', 18, 0, 1, 1, 191),
(192, 'The Habbo Babes 1', 'The Hotel''s girlband. Dream on!', 3, 0, 0, 0, 0.00, 'poster 35', '0,0,0', 18, 0, 1, 1, 192),
(193, 'The Habbo Babes 2', 'The Hotels girlband. Dream on!', 3, 0, 0, 0, 0.00, 'poster 36', '0,0,0', 18, 0, 1, 1, 193),
(194, 'The Habbo Babes 3', 'The Hotels girlband. Dream on!', 3, 0, 0, 0, 0.00, 'poster 37', '0,0,0', 18, 0, 1, 1, 194),
(195, 'Smiling Headbangerz', 'For really TOUGH Habbos!', 3, 0, 0, 0, 0.00, 'poster 38', '0,0,0', 18, 0, 1, 1, 195),
(196, 'Screaming Furnies', 'The rock masters of virtual music', 3, 0, 0, 0, 0.00, 'poster 39', '0,0,0', 18, 0, 1, 1, 196),
(197, 'Bonnie Blonde', 'The one and only. Adore her!', 3, 0, 0, 0, 0.00, 'poster 40', '0,0,0', 18, 0, 1, 1, 197),
(198, 'Habbo Golden Record', 'For the best music-makers', 3, 0, 0, 0, 0.00, 'poster 41', '0,0,0', 18, 0, 1, 1, 198),
(199, 'Tree on the beach', 'Relaxing scene', 3, 0, 0, 0, 0.00, 'poster 55', '0,0,0', 18, 0, 1, 1, 199),
(200, 'Comedy Poster', 'The Noble and Silver Show', 3, 0, 0, 0, 0.00, 'poster 1000', '0,0,0', 18, 0, 1, 1, 200),
(201, 'Prince Charles Poster', 'even walls have ears', 3, 0, 0, 0, 0.00, 'poster 1001', '0,0,0', 18, 0, 1, 1, 201),
(202, 'Queen Mum Poster', 'aw, bless...', 3, 0, 0, 0, 0.00, 'poster 1002', '0,0,0', 18, 0, 1, 1, 202),
(203, 'UK Map', 'get the lovely isles on your walls', 3, 0, 0, 0, 0.00, 'poster 1003', '0,0,0', 18, 0, 1, 1, 203),
(204, 'Eid Mubarak Poster', 'Celebrate with us', 3, 0, 0, 0, 0.00, 'poster 1004', '0,0,0', 18, 0, 1, 1, 204),
(205, 'Johnny Squabble', 'The muscly movie hero', 3, 0, 0, 0, 0.00, 'poster 1005', '0,0,0', 18, 0, 1, 1, 205),
(206, 'Hoot Poster', 'The eyes follow you...', 3, 0, 0, 0, 0.00, 'poster 1006', '0,0,0', 18, 0, 1, 1, 206),
(207, 'Suomen kartta', 'Suomen kartta', 3, 0, 0, 0, 0.00, 'poster 2000', '0,0,0', 18, 0, 1, 1, 207),
(208, 'SeinNightitititititdiskotappaja', 'Perinteinen ryijy,', 3, 0, 0, 0, 0.00, 'poster 2001', '0,0,0', 18, 0, 1, 1, 208),
(209, 'Urho Kaleva Kekkonen', 'Presidentin muotokuva', 3, 0, 0, 0, 0.00, 'poster 2002', '0,0,0', 18, 0, 1, 1, 209),
(210, 'Dodgy Geezer', 'Would you trust this man?', 3, 0, 0, 0, 0.00, 'poster 2003', '0,0,0', 18, 0, 1, 1, 210),
(211, 'Rasta Poster', 'irie!', 3, 0, 0, 0, 0.00, 'poster 2004', '0,0,0', 18, 0, 1, 1, 211),
(212, 'DJ Throne', 'He is the magic Habbo', 3, 0, 0, 0, 0.00, 'poster 2006', '0,0,0', 18, 0, 1, 1, 212),
(213, 'The Father Of Habbo', 'The legendary founder of the Hotel', 3, 0, 0, 0, 0.00, 'poster 2007', '0,0,0', 18, 0, 1, 1, 213),
(214, 'Habbo Leap Day Poster', 'Once every four Habbo years!', 3, 0, 0, 0, 0.00, 'poster 2008', '0,0,0', 18, 0, 1, 1, 214),
(215, 'Glass shelf', 'Translucent beauty', 4, 1, 2, 1, 0.00, 'glass_shelf', '0,0,0', 19, 0, 1, 1, 215),
(216, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa', '#ffffff,#ABD0D2,#ABD0D2,#ffffff,#ffffff,#ABD0D2,#ffffff,#ABD0D2', 19, 0, 1, 1, 216),
(217, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table', '#ffffff,#ABD0D2,#ABD0D2,#ffffff', 19, 0, 1, 1, 217),
(218, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair', '#ffffff,#ABD0D2,#ABD0D2,#ffffff', 19, 0, 1, 1, 218),
(219, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool', '#ffffff,#ABD0D2,#ABD0D2,#ffffff', 19, 0, 1, 1, 219),
(220, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*2', '#ffffff,#525252,#525252,#ffffff,#ffffff,#525252,#ffffff,#525252', 19, 0, 1, 1, 220),
(221, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*2', '#ffffff,#525252,#525252,#ffffff', 19, 0, 1, 1, 221),
(222, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*2', '#ffffff,#525252,#525252,#ffffff', 19, 0, 1, 1, 222),
(223, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*2', '#ffffff,#525252,#525252,#ffffff', 19, 0, 1, 1, 223),
(224, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 19, 0, 1, 1, 224),
(225, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*3', '#ffffff,#ffffff,#ffffff,#ffffff', 19, 0, 1, 1, 225),
(226, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*3', '#ffffff,#ffffff,#ffffff,#ffffff', 19, 0, 1, 1, 226),
(227, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*3', '#ffffff,#ffffff,#ffffff,#ffffff', 19, 0, 1, 1, 227),
(228, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*4', '#ffffff,#F7EBBC,#F7EBBC,#ffffff,#ffffff,#F7EBBC,#ffffff,#F7EBBC', 19, 0, 1, 1, 228),
(229, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*4', '#ffffff,#F7EBBC,#F7EBBC,#ffffff', 19, 0, 1, 1, 229),
(230, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*4', '#ffffff,#F7EBBC,#F7EBBC,#ffffff', 19, 0, 1, 1, 230),
(231, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*4', '#ffffff,#F7EBBC,#F7EBBC,#ffffff', 19, 0, 1, 1, 231),
(232, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*5', '#ffffff,#FF99BC,#FF99BC,#ffffff,#ffffff,#FF99BC,#ffffff,#FF99BC', 19, 0, 1, 1, 232),
(233, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*5', '#ffffff,#FF99BC,#FF99BC,#ffffff', 19, 0, 1, 1, 233),
(234, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*5', '#ffffff,#FF99BC,#FF99BC,#ffffff', 19, 0, 1, 1, 234),
(235, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*5', '#ffffff,#FF99BC,#FF99BC,#ffffff', 19, 0, 1, 1, 235),
(236, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*6', '#ffffff,#5EAAF8,#5EAAF8,#ffffff,#ffffff,#5EAAF8,#ffffff,#5EAAF8', 19, 0, 1, 1, 236),
(237, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*6', '#ffffff,#5EAAF8,#5EAAF8,#ffffff', 19, 0, 1, 1, 237),
(238, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*6', '#ffffff,#5EAAF8,#5EAAF8,#ffffff', 19, 0, 1, 1, 238),
(239, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*6', '#ffffff,#5EAAF8,#5EAAF8,#ffffff', 19, 0, 1, 1, 239),
(240, 'Glass sofa', 'Habbo Club', 4, 2, 2, 1, 1.20, 'glass_sofa*7', '#ffffff,#92D13D,#92D13D,#ffffff,#ffffff,#92D13D,#ffffff,#92D13D', 19, 0, 1, 1, 240),
(241, 'Glass table', 'Habbo Club', 4, 1, 2, 2, 0.80, 'glass_table*7', '#ffffff,#92D13D,#92D13D,#ffffff', 19, 0, 1, 1, 241),
(242, 'Glass chair', 'Habbo Club', 3, 2, 1, 1, 1.20, 'glass_chair*7', '#ffffff,#92D13D,#92D13D,#ffffff', 19, 0, 1, 1, 242),
(243, 'Glass stool', 'Habbo Club', 3, 2, 1, 1, 1.20, 'glass_stool*7', '#ffffff,#92D13D,#92D13D,#ffffff', 19, 0, 1, 1, 243),
(244, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*8', '#ffffff,#FFD837,#FFD837,#ffffff,#ffffff,#FFD837,#ffffff,#FFD837', 19, 0, 1, 1, 244),
(245, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*8', '#ffffff,#FFD837,#FFD837,#ffffff', 19, 0, 1, 1, 245),
(246, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*8', '#ffffff,#FFD837,#FFD837,#ffffff', 19, 0, 1, 1, 246),
(247, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*8', '#ffffff,#FFD837,#FFD837,#ffffff', 19, 0, 1, 1, 247),
(248, 'Glass sofa', 'Translucent beauty', 4, 2, 2, 1, 1.20, 'glass_sofa*9', '#ffffff,#E14218,#E14218,#ffffff,#ffffff,#E14218,#ffffff,#E14218', 19, 0, 1, 1, 248),
(249, 'Glass table', 'Translucent beauty', 4, 1, 2, 2, 0.80, 'glass_table*9', '#ffffff,#E14218,#E14218,#ffffff', 19, 0, 1, 1, 249),
(250, 'Glass chair', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_chair*9', '#ffffff,#E14218,#E14218,#ffffff', 19, 0, 1, 1, 250),
(251, 'Glass stool', 'Translucent beauty', 3, 2, 1, 1, 1.20, 'glass_stool*9', '#ffffff,#E14218,#E14218,#ffffff', 19, 0, 1, 1, 251),
(252, 'Red Gothic Chair', 'The head of the table', 10, 2, 1, 1, 1.20, 'gothic_chair*3', '#ffffff,#dd0000,#ffffff,#dd0000', 20, 0, 1, 1, 252),
(253, 'Gothic Sofa Red', 'The dark side of Habbo', 7, 2, 2, 1, 1.20, 'gothic_sofa*3', '#ffffff,#dd0000,#ffffff,#ffffff,#dd0000,#ffffff', 20, 0, 1, 1, 253),
(254, 'Gothic Stool Red', 'The dark side of Habbo', 5, 2, 1, 1, 1.20, 'gothic_stool*3', '#ffffff,#dd0000,#ffffff', 20, 0, 1, 1, 254),
(255, 'Cobbled Path', 'The path less travelled', 5, 4, 2, 4, 0.00, 'gothic_carpet', '0,0,0', 20, 0, 1, 1, 255),
(256, 'Dungeon Floor', 'What lies beneath?', 5, 4, 2, 4, 0.00, 'gothic_carpet2', '0,0,0', 20, 0, 1, 1, 256),
(257, 'Gothic Table', 'The dark side of Habbo', 15, 1, 1, 5, 1.00, 'goth_table', '0,0,0', 20, 0, 1, 1, 257),
(258, 'Gothic Railing', 'The dark side of Habbo', 8, 1, 2, 1, 0.00, 'gothrailing', '0,0,0', 20, 0, 1, 1, 258),
(259, 'Gothic Torch', 'The dark side of Habbo', 10, 0, 0, 0, 0.00, 'torch', '0,0,0', 20, 0, 1, 1, 259),
(260, 'Gothic Ectoplasm Fountain', 'Not suitable for drinking!', 10, 0, 0, 0, 0.00, 'gothicfountain', '0,0,0', 20, 0, 1, 1, 260),
(261, 'Gothic Candelabra', 'The dark side of Habbo', 10, 1, 1, 1, 0.00, 'gothiccandelabra', '0,0,0', 20, 0, 1, 1, 261),
(262, 'Gothic Portcullis', 'The dark side of Habbo', 10, 1, 2, 1, 0.00, 'gothgate', '0,0,0', 20, 1, 1, 1, 262),
(263, 'Industrial Turbine', 'Powerful and resilient', 10, 0, 0, 0, 0.00, 'industrialfan', '0,0,0', 20, 0, 1, 1, 263),
(264, 'Flaming Barrel', 'Beacon of light!', 3, 1, 1, 1, 0.00, 'grunge_barrel', '0,0,0', 21, 0, 1, 1, 264),
(265, 'Bench', 'Laid back seating', 3, 2, 3, 1, 1.20, 'grunge_bench', '0,0,0', 21, 0, 1, 1, 265),
(266, 'Candle Box', 'Late night debate', 2, 1, 1, 1, 0.00, 'grunge_candle', '0,0,0', 21, 0, 1, 1, 266),
(267, 'Grunge Chair', 'Alternative chair for alternative people', 4, 2, 1, 1, 1.20, 'grunge_chair', '0,0,0', 21, 0, 1, 1, 267),
(268, 'Grunge Mattress', 'Beats sleeping on the floor!', 3, 2, 3, 1, 1.00, 'grunge_mattress', '0,0,0', 21, 0, 1, 1, 268),
(269, 'Radiator', 'Started cool but now it''s hot!', 3, 1, 1, 1, 0.00, 'grunge_radiator', '0,0,0', 21, 0, 1, 1, 269),
(270, 'Grunge Bookshelf', 'Scrap books and photo albums', 5, 1, 3, 1, 0.00, 'grunge_shelf', '0,0,0', 21, 0, 1, 1, 270),
(271, 'Road Sign', 'Bought legitimately from an M1 cafe.', 3, 1, 1, 1, 0.00, 'grunge_sign', '0,0,0', 21, 0, 1, 1, 271),
(272, 'Grunge Table', 'Students of the round table!', 4, 1, 2, 2, 0.80, 'grunge_table', '0,0,0', 21, 0, 1, 1, 272),
(273, 'Bronze Coin', 'Worth 1 Habbo Credit', 1, 1, 1, 1, 0.15, 'CF_1_coin_bronze', '0,0,0', 22, 0, 1, 1, 273),
(274, 'Silver Coin', 'Worth 5 Habbo Credits', 5, 1, 1, 1, 0.15, 'CF_5_coin_silver', '0,0,0', 22, 0, 1, 1, 274),
(275, 'Gold Coin', 'Worth 10 Habbo Credits', 10, 1, 1, 1, 0.15, 'CF_10_coin_gold', '0,0,0', 22, 0, 1, 1, 275),
(276, 'Sack of Credits', 'Worth 20 Habbo Credits', 20, 1, 1, 1, 1.00, 'CF_20_moneybag', '0,0,0', 22, 0, 1, 1, 276),
(277, 'Gold Bar', 'Worth 50 Habbo Credits', 50, 1, 1, 1, 0.40, 'CF_50_goldbar', '0,0,0', 22, 0, 1, 1, 277),
(283, 'Director''s Chair', 'Exclusively for Directors', 5, 2, 1, 1, 1.20, 'habbowood_chair', '0,0,0', 23, 0, 1, 1, 283),
(284, 'Rope Divider', 'Rope Divider', 5, 1, 2, 1, 0.00, 'rope_divider', '0,0,0', 23, 1, 1, 1, 284),
(285, 'Habbowood Spotlight', 'For the star of the show', 15, 1, 1, 1, 0.00, 'spotlight', '0,0,0', 23, 0, 1, 1, 285),
(286, 'Deluxe Theatre Chair', 'For Lazy boys and girls!', 10, 2, 1, 1, 1.20, 'theatre_seat', '0,0,0', 23, 0, 1, 1, 286),
(287, 'Rare icecream white', 'Basic model', 25, 1, 1, 1, 0.00, 'rare_icecream_campaign', '0,0,0', 23, 0, 1, 1, 287),
(288, 'Habbowood Mirror', 'Star of the show!', 10, 0, 0, 0, 0.00, 'habw_mirror', '0,0,0', 23, 0, 1, 1, 288),
(289, 'Star Tile', '10% off the walk of fame!', 1, 4, 1, 1, 0.00, 'tile_stella', '0,0,0', 23, 0, 1, 1, 289),
(290, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 24, 0, 1, 1, 290),
(291, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja', '#ffffff,#ffffff,#ffffff,#ffffff,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC', 24, 0, 1, 1, 291),
(292, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med', '#ffffff,#F7EBBC', 24, 0, 1, 1, 292),
(293, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja', '#ffffff,#F7EBBC', 24, 0, 1, 1, 293),
(294, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja', '#ffffff,#F7EBBC,#F7EBBC', 24, 0, 1, 1, 294),
(295, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja', '#ffffff,#F7EBBC,#ffffff,#F7EBBC,#F7EBBC,#F7EBBC', 24, 0, 1, 1, 295),
(296, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 24, 0, 1, 1, 296),
(297, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1', '#ffffff,#F7EBBC', 24, 0, 1, 1, 297),
(298, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 24, 1, 1, 1, 298),
(299, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC', 24, 1, 1, 1, 299),
(300, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5', '#ffffff,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC', 24, 1, 1, 1, 300),
(301, 'Bamboo Forest', 'Watch out for pandas!', 25, 4, 2, 2, 0.00, 'jp_bamboo', '0,0,0', 25, 0, 1, 1, 301),
(302, 'Pillow Chair', 'Comfy and classical', 5, 2, 1, 1, 0.80, 'jp_pillow', '0,0,0', 25, 0, 1, 1, 302),
(303, 'Irori', 'Traditional heating and eating', 10, 1, 2, 2, 0.00, 'jp_irori', '0,0,0', 25, 0, 1, 1, 303),
(304, 'Small Tatami Mat', 'Shoes off please', 6, 4, 2, 2, 0.00, 'jp_tatami', '0,0,0', 25, 0, 1, 1, 304),
(305, 'Large Tatami Mat', 'Shoes off please', 8, 4, 2, 4, 0.00, 'jp_tatami2', '0,0,0', 25, 0, 1, 1, 305),
(306, 'Japanese Lantern', 'For a mellow Eastern glow', 10, 1, 1, 1, 0.00, 'jp_lantern', '0,0,0', 25, 0, 1, 1, 306),
(307, 'Japanese Drawer', 'Spiritual home for odds and ends', 6, 1, 1, 1, 0.00, 'jp_drawer', '0,0,0', 25, 0, 1, 1, 307),
(308, 'Ninja Stars', 'Not a frisbee', 10, 0, 0, 0, 0.00, 'jp_ninjastars', '0,0,0', 25, 0, 1, 1, 308),
(309, 'Kakejiku Ziritsu', 'Japanese Kakejiku', 3, 0, 0, 0, 0.00, 'jp_sheet1', '0,0,0', 25, 0, 1, 1, 309),
(310, 'Kakejiku Ninjya', 'Japanese Kakejiku', 3, 0, 0, 0, 0.00, 'jp_sheet2', '0,0,0', 25, 0, 1, 1, 310),
(311, 'Kakejiku Hokusai', 'Japanese Kakejiku', 3, 0, 0, 0, 0.00, 'jp_sheet3', '0,0,0', 25, 0, 1, 1, 311),
(312, 'Sushi Maguro', 'Sushi made with tuna', 3, 1, 1, 1, 0.00, 'jp_tray1', '0,0,0', 25, 0, 1, 1, 312),
(313, 'Sushi Ika', 'Sushi made with squid', 3, 1, 1, 1, 0.00, 'jp_tray2', '0,0,0', 25, 0, 1, 1, 313),
(314, 'Sushi Ikura', 'Sushi made with caviar', 3, 1, 1, 1, 0.00, 'jp_tray3', '0,0,0', 25, 0, 1, 1, 314),
(315, 'Sushi Uni', 'Sushi made with sea urchin', 3, 1, 1, 1, 0.00, 'jp_tray4', '0,0,0', 25, 0, 1, 1, 315),
(316, 'Sushi Tamago', 'Sushi made with egg', 3, 1, 1, 1, 0.00, 'jp_tray5', '0,0,0', 25, 0, 1, 1, 316),
(317, 'Sushi Kohada', 'Sushi made with mackerel', 3, 1, 1, 1, 0.00, 'jp_tray6', '0,0,0', 25, 0, 1, 1, 317),
(318, 'Double Bed', 'King-sized pine comfort', 3, 3, 2, 3, 1.70, 'bed_armas_two', '0,0,0', 26, 0, 1, 1, 318),
(319, 'Single Bed', 'Rustic charm for one', 3, 3, 1, 3, 1.70, 'bed_armas_one', '0,0,0', 26, 0, 1, 1, 319),
(320, 'Fireplace', 'Authentic, real flame fire', 4, 1, 2, 1, 0.00, 'fireplace_armas', '0,0,0', 26, 0, 1, 1, 320),
(321, 'Bardesk', 'Bar-Style Table - essential for extra guests', 3, 1, 1, 3, 1.20, 'bartable_armas', '0,0,0', 26, 0, 1, 1, 321),
(322, 'Dining Table', 'For informal dining', 3, 1, 2, 2, 1.00, 'table_armas', '0,0,0', 26, 0, 1, 1, 322),
(323, 'Bench', 'To complete the dining set', 3, 2, 2, 1, 1.20, 'bench_armas', '0,0,0', 26, 0, 1, 1, 323),
(324, 'Gate (lockable)', 'Knock, knock...', 6, 1, 1, 1, 0.00, 'divider_arm3', '0,0,0', 26, 1, 1, 1, 324),
(325, 'Corner plinth', 'Good solid wood', 3, 1, 1, 1, 1.20, 'divider_arm1', '0,0,0', 26, 0, 1, 1, 325),
(326, 'Room divider', 'I wooden go there', 3, 1, 2, 1, 1.20, 'divider_arm2', '0,0,0', 26, 0, 1, 1, 326),
(327, 'Bookcase', 'For all those fire-side stories', 3, 1, 2, 1, 3.20, 'shelves_armas', '0,0,0', 26, 0, 1, 1, 327),
(328, 'Barrel Minibar', 'It''s a barrel of laughs and a great talking point', 4, 1, 1, 1, 0.00, 'bar_armas', '0,0,0', 26, 0, 1, 1, 328),
(329, 'Barrel Stool', 'The ultimate recycled furniture', 1, 2, 1, 1, 1.30, 'bar_chair_armas', '0,0,0', 26, 0, 1, 1, 329),
(330, 'Table Lamp', 'Ambient lighting is essential', 3, 1, 1, 1, 0.00, 'lamp_armas', '0,0,0', 26, 0, 1, 1, 330),
(331, 'Lodge Candle', 'Wax lyrical with some old-world charm', 3, 1, 1, 1, 0.00, 'lamp2_armas', '0,0,0', 26, 0, 1, 1, 331),
(332, 'Occasional Table', 'Practical and beautiful', 2, 1, 1, 1, 1.00, 'small_table_armas', '0,0,0', 26, 0, 1, 1, 332),
(333, 'Stool', 'Rustic charm at it''s best', 1, 2, 1, 1, 1.20, 'small_chair_armas', '0,0,0', 26, 0, 1, 1, 333),
(334, 'Double Bed', 'Give yourself space to stretch out', 4, 3, 2, 3, 1.50, 'bed_polyfon', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 27, 0, 1, 1, 334),
(335, 'Single Bed', 'Cot of the artistic', 3, 3, 1, 3, 1.50, 'bed_polyfon_one', 'ffffff,#ffffff,#ffffff,#ABD0D2,#ABD0D2', 27, 0, 1, 1, 335),
(336, 'Fireplace', 'Comfort in stainless steel', 5, 1, 2, 1, 0.00, 'fireplace_polyfon', '0,0,0', 27, 0, 1, 1, 336),
(337, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon', '#ffffff,#ffffff,#ffffff,#ffffff,#ABD0D2,#ABD0D2,#ABD0D2,#ABD0D2', 27, 0, 1, 1, 337),
(338, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 27, 0, 1, 1, 338),
(339, 'Mini-Bar', 'You naughty Habbo!', 5, 1, 1, 1, 0.00, 'bar_polyfon', '0,0,0', 27, 0, 1, 1, 339),
(340, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3', '#ffffff,#ffffff,#ffffff,#ABD0D2,#ABD0D2', 27, 1, 1, 1, 340),
(341, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 27, 0, 1, 1, 341),
(342, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon', '#ffffff,#ABD0D2', 27, 0, 1, 1, 342),
(343, 'Dining Chair', 'Metallic seating experience', 3, 2, 1, 1, 1.00, 'chair_polyfon', '0,0,0', 27, 0, 1, 1, 343),
(344, 'Large Coffee Table', 'For larger gatherings', 4, 1, 2, 2, 0.80, 'table_polyfon', '0,0,0', 27, 0, 1, 1, 344),
(345, 'Large Coffee Table', 'For larger gatherings', 3, 1, 2, 2, 0.80, 'table_polyfon_med', '0,0,0', 27, 0, 1, 1, 345),
(346, 'Small Coffee Table', 'For serving a stylish latte', 1, 1, 2, 2, 0.00, 'table_polyfon_small', '0,0,0', 27, 0, 1, 1, 346),
(347, 'Large Dining Table', 'For larger gatherings', 4, 1, 2, 2, 0.80, 'smooth_table_polyfon', '0,0,0', 27, 0, 1, 1, 347),
(348, 'Shelf', 'Tidy up', 1, 1, 1, 1, 0.60, 'stand_polyfon_z', '0,0,0', 27, 0, 1, 1, 348),
(349, 'Bookcase', 'For the arty pad', 4, 1, 2, 1, 0.00, 'shelves_polyfon', '0,0,0', 27, 0, 1, 1, 349),
(350, 'Dining Chair', 'Keep it simple', 5, 0, 0, 0, 0.00, 'deal1', '0,0,0', 28, 0, 0, 0, 350),
(351, 'Doormat', 'Welcome Habbos in style', 5, 0, 0, 0, 0.00, 'deal2', '0,0,0', 28, 0, 0, 0, 351),
(352, 'Large Coffee Table', 'For larger gatherings', 5, 0, 0, 0, 0.00, 'deal3', '0,0,0', 28, 0, 0, 0, 352),
(353, 'Shelf', 'Tidy up', 5, 0, 0, 0, 0.00, 'deal4', '0,0,0', -1, 0, 0, 0, 353),
(354, 'Stool', 'Rustic charm at it''s best', 5, 0, 0, 0, 0.00, 'deal5', '0,0,0', -1, 0, 0, 0, 354),
(355, 'Chair', 'Hip plastic furniture', 5, 0, 0, 0, 0.00, 'deal6', '0,0,0', -1, 0, 0, 0, 355),
(356, 'Vase of Flowers', 'Guaranteed to stay fresh', 4, 1, 1, 1, 0.00, 'giftflowers', '0,0,0', 29, 0, 1, 1, 356),
(357, 'Cut Roses', 'Sleek and chic', 3, 1, 1, 1, 0.00, 'plant_rose', '0,0,0', 29, 0, 1, 1, 357),
(358, 'Cut Sunflower', 'For happy Habbos', 3, 1, 1, 1, 0.00, 'plant_sunflower', '0,0,0', 29, 0, 1, 1, 358),
(359, 'Yukka Plant', 'Easy to care for', 3, 1, 1, 1, 0.00, 'plant_yukka', '0,0,0', 29, 0, 1, 1, 359),
(360, 'Pineapple Plant', 'Needs loving glances', 3, 1, 1, 1, 0.00, 'plant_pineapple', '0,0,0', 29, 0, 1, 1, 360),
(361, 'Bonsai Tree', 'You can be sure it lives', 3, 1, 1, 1, 0.00, 'plant_bonsai', '0,0,0', 29, 0, 1, 1, 361),
(362, 'Mature Cactus', 'Habbo Dreams monster in hiding!  Shhhh', 3, 1, 1, 1, 0.00, 'plant_big_cactus', '0,0,0', 29, 0, 1, 1, 362),
(363, 'Fruit Tree', 'Great yield and sweet fruit', 3, 1, 1, 1, 0.00, 'plant_fruittree', '0,0,0', 29, 0, 1, 1, 363),
(364, 'Small Cactus', 'Even less watering than the real world', 1, 1, 1, 1, 0.00, 'plant_small_cactus', '0,0,0', 29, 0, 1, 1, 364),
(365, 'Maze Shrubbery', 'Build your maze!', 5, 1, 2, 1, 0.00, 'plant_maze', '0,0,0', 29, 0, 1, 1, 365),
(366, 'Maze Shrubbery Gate', 'Did we make it?', 6, 1, 2, 1, 0.00, 'plant_mazegate', '0,0,0', 29, 0, 1, 1, 366),
(367, 'Bulrush', 'Ideal for the riverside', 3, 1, 1, 1, 0.00, 'plant_bulrush', '0,0,0', 29, 0, 1, 1, 367),
(368, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*16', '#ffffff,#CC3399,#ffffff,#CC3399', 30, 0, 1, 1, 368),
(369, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*15', '#ffffff,#FF97BA,#ffffff,#FF97BA', 30, 0, 1, 1, 369),
(370, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*5', '#ffffff,#54ca00,#ffffff,#54ca00', 30, 0, 1, 1, 370),
(371, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto', '0,0,0', 30, 0, 1, 1, 371),
(372, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*8', '#ffffff,#c38d1a,#ffffff,#c38d1a', 30, 0, 1, 1, 372),
(373, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*7', '#ffffff,#ff6d00,#ffffff,#ff6d00', 30, 0, 1, 1, 373),
(374, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*1', '#ffffff,#ff1f08,#ffffff,#ff1f08', 30, 0, 1, 1, 374),
(375, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*4', '#ffffff,#ccddff,#ffffff,#ccddff', 30, 0, 1, 1, 375),
(376, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*6', '#ffffff,#3444ff,#ffffff,#3444ff', 30, 0, 1, 1, 376),
(377, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*3', '#ffffff,#ffee00,#ffffff,#ffee00', 30, 0, 1, 1, 377),
(378, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*2', '#ffffff,#99DCCC,#ffffff,#99DCCc', 30, 0, 1, 1, 378),
(379, 'Occasional Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*15', '#ffffff,#FF97BA', 30, 0, 1, 1, 379),
(380, 'Occasional Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*14', '#ffffff,#CC3399', 30, 0, 1, 1, 380),
(381, 'Occasional Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*1', '#ffffff,#ff1f08', 30, 0, 1, 1, 381),
(382, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*7', '#ffffff,#ff6d00', 30, 0, 1, 1, 382),
(383, 'Occasional Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square', '0,0,0', 30, 0, 1, 1, 383),
(384, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*2', '#ffffff,#99DCCC', 30, 0, 1, 1, 384),
(385, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*4', '#ffffff,#ccddff', 30, 0, 1, 1, 385),
(386, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*6', '#ffffff,#3444ff', 30, 0, 1, 1, 386),
(387, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*3', '#ffffff,#ffee00', 30, 0, 1, 1, 387),
(388, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*9', '#ffffff,#533e10', 30, 0, 1, 1, 388),
(389, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*5', '#ffffff,#54ca00', 30, 0, 1, 1, 389),
(390, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 1, 1, 1.00, 'table_plasto_square*8', '#ffffff,#c38d1a', 30, 0, 1, 1, 390),
(391, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*15', '#ffffff,#FF97BA', 30, 0, 1, 1, 391),
(392, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*14', '#ffffff,#CC3399', 30, 0, 1, 1, 392),
(393, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*7', '#ffffff,#ff6d00', 30, 0, 1, 1, 393),
(394, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*1', '#ffffff,#ff1f08', 30, 0, 1, 1, 394),
(395, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*2', '#ffffff,#99DCCC', 30, 0, 1, 1, 395),
(396, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*4', '#ffffff,#ccddff', 30, 0, 1, 1, 396),
(397, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*6', '#ffffff,#3444ff', 30, 0, 1, 1, 397),
(398, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*3', '#ffffff,#ffee00', 30, 0, 1, 1, 398),
(399, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*9', '#ffffff,#533e10', 30, 0, 1, 1, 399),
(400, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round', '0,0,0', 30, 0, 1, 1, 400),
(401, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*5', '#ffffff,#54ca00', 30, 0, 1, 1, 401),
(402, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_round*8', '#ffffff,#c38d1a', 30, 0, 1, 1, 402),
(403, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*15', '#ffffff,#FF97BA', 30, 0, 1, 1, 403),
(404, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*14', '#ffffff,#CC3399', 30, 0, 1, 1, 404),
(405, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*7', '#ffffff,#ff6d00', 30, 0, 1, 1, 405),
(406, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*1', '#ffffff,#ff1f08', 30, 0, 1, 1, 406),
(407, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*2', '#ffffff,#99DCCC', 30, 0, 1, 1, 407),
(408, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare', '0,0,0', 30, 0, 1, 1, 408),
(409, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*8', '#ffffff,#c38d1a', 30, 0, 1, 1, 409),
(410, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*5', '#ffffff,#54ca00', 30, 0, 1, 1, 410),
(411, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*9', '#ffffff,#533e10', 30, 0, 1, 1, 411),
(412, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*3', '#ffffff,#ffee00', 30, 0, 1, 1, 412),
(413, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*6', '#ffffff,#3444ff', 30, 0, 1, 1, 413),
(414, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_bigsquare*4', '#ffffff,#ccddff', 30, 0, 1, 1, 414),
(415, 'Occasional table Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*6', '#ffffff,#3444ff', 30, 0, 1, 1, 415),
(416, 'Square Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*1', '#ffffff,#ff1f08', 30, 0, 1, 1, 416),
(417, 'Round Dining Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*3', '#ffffff,#ffee00', 30, 0, 1, 1, 417),
(418, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*9', '#ffffff,#533e10', 30, 0, 1, 1, 418),
(419, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg', '0,0,0', 30, 0, 1, 1, 419),
(420, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*5', '#ffffff,#54ca00', 30, 0, 1, 1, 420),
(421, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*2', '#ffffff,#99DCCC', 30, 0, 1, 1, 421),
(422, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*8', '#ffffff,#c38d1a', 30, 0, 1, 1, 422),
(423, 'Occasional table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*7', '#ffffff,#ff6d00', 30, 0, 1, 1, 423),
(424, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*10', '#ffffff,#ccddff', 30, 0, 1, 1, 424),
(425, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*15', '#ffffff,#FF97BA', 30, 0, 1, 1, 425),
(426, 'Occasional Table', 'Hip plastic furniture', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*16', '#ffffff,#CC3399', 30, 0, 1, 1, 426),
(427, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty', '0,0,0', 30, 0, 1, 1, 427),
(428, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*1', '#ffffff,#8EB5D1,#ffffff,#8EB5D1', 30, 0, 1, 1, 428),
(429, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*2', '#ffffff,#ff9900,#ffffff,#ff9900', 30, 0, 1, 1, 429),
(430, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*3', '#ffffff,#ff2200,#ffffff,#ff2200', 30, 0, 1, 1, 430),
(431, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*4', '#ffffff,#00cc00,#ffffff,#00cc00', 30, 0, 1, 1, 431),
(432, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*4', '#ffffff,#0033CC,#ffffff,#0033CC', 30, 0, 1, 1, 432),
(433, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*4', '#ffffff,#333333,#ffffff,#333333', 30, 0, 1, 1, 433),
(434, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*7', '#ffffff,#99DCCc,#ffffff,#99DCCc', 30, 0, 1, 1, 434),
(435, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*8', '#ffffff,#c38d1a,#ffffff,#c38d1a', 30, 0, 1, 1, 435),
(436, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*9', '#ffffff,#533e10,#ffffff,#533e10', 30, 0, 1, 1, 436),
(437, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*10', '#ffffff,#CC3399,#ffffff,#CC3399', 30, 0, 1, 1, 437),
(438, 'Plastic Pod Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasty*11', '#ffffff,#FF97BA,#ffffff,#FF97BA', 30, 0, 1, 1, 438);
INSERT INTO `catalogue_items` (`tid`, `catalogue_name`, `catalogue_description`, `catalogue_cost`, `typeid`, `length`, `width`, `top`, `name_cct`, `colour`, `catalogue_id_page`, `door`, `tradeable`, `recycleable`, `catalogue_id_index`) VALUES
(439, 'Chair', 'Hip plastic furniture', 3, 2, 1, 1, 1.00, 'chair_plasto*9', '#ffffff,#533e10,#ffffff,#533e10', 30, 0, 1, 1, 439),
(440, 'Pura Shelves', 'Pura Series 404 shelves', 3, 1, 2, 1, 0.00, 'shelves_basic', '0,0,0', 32, 0, 1, 1, 440),
(441, 'A Pura Minibar', 'A Pura series 300 minibar', 4, 1, 1, 1, 0.00, 'bar_basic', '0,0,0', 32, 0, 1, 1, 441),
(442, 'Pura Refridgerator', 'Keep cool with a chilled snack or drink', 6, 1, 1, 1, 0.00, 'fridge', '0,0,0', 32, 0, 1, 1, 442),
(443, 'Pura Lamp', 'Switch on the atmosphere with this sophisticated light', 3, 1, 1, 1, 0.00, 'lamp_basic', '0,0,0', 32, 0, 1, 1, 443),
(444, 'White Plain Double Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budgetb', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 32, 0, 1, 1, 444),
(445, 'White Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budgetb_one', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 32, 0, 1, 1, 445),
(446, 'Aqua Plain Double Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budget', '#FFFFFF,#FFFFFF,#FFFFFF,#ABD0D2,#ABD0D2,#ABD0D2', 32, 0, 1, 1, 446),
(447, 'Aqua Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budget_one', '#FFFFFF,#FFFFFF,#FFFFFF,#ABD0D2,#ABD0D2,#ABD0D2', 32, 0, 1, 1, 447),
(448, 'Pink Plain Double Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budgetb', '#FFFFFF,#FFFFFF,#FFFFFF,#FF99BC,#FF99BC,#FF99BC', 32, 0, 1, 1, 448),
(449, 'Pink Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budgetb_one', '#FFFFFF,#FFFFFF,#FFFFFF,#FF99BC,#FF99BC,#FF99BC', 32, 0, 1, 1, 449),
(450, 'Black Plain Double Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budget', '#FFFFFF,#FFFFFF,#FFFFFF,#525252,#525252,#525252', 32, 0, 1, 1, 450),
(451, 'Black Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budget_one', '#FFFFFF,#FFFFFF,#FFFFFF,#525252,#525252,#525252', 32, 0, 1, 1, 451),
(452, 'Beige Plain Double Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budgetb', '#FFFFFF,#FFFFFF,#FFFFFF,#F7EBBC,#F7EBBC,#F7EBBC', 32, 0, 1, 1, 452),
(453, 'Beige Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budgetb_one', '#FFFFFF,#FFFFFF,#FFFFFF,#F7EBBC,#F7EBBC,#F7EBBC', 32, 0, 1, 1, 453),
(454, 'Blue Plain Single Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budget', '#FFFFFF,#FFFFFF,#FFFFFF,#5EAAF8,#5EAAF8,#5EAAF8', 32, 0, 1, 1, 454),
(455, 'Blue Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budget_one', '#FFFFFF,#FFFFFF,#FFFFFF,#5EAAF8,#5EAAF8,#5EAAF8', 32, 0, 1, 1, 455),
(456, 'Green Plain Single Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budgetb', '#FFFFFF,#FFFFFF,#FFFFFF,#92D13D,#92D13D,#92D13D', 32, 0, 1, 1, 456),
(457, 'Green Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budgetb_one', '#FFFFFF,#FFFFFF,#FFFFFF,#92D13D,#92D13D,#92D13D', 32, 0, 1, 1, 457),
(458, 'Yellow Plain Single Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budget', '#FFFFFF,#FFFFFF,#FFFFFF,#FFD837,#FFD837,#FFD837', 32, 0, 1, 1, 458),
(459, 'Yellow Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budget_one', '#FFFFFF,#FFFFFF,#FFFFFF,#FFD837,#FFD837,#FFD837', 32, 0, 1, 1, 459),
(460, 'Red Plain Single Bed', 'Sweet dreams for two', 3, 3, 2, 3, 1.50, 'bed_budgetb', '#FFFFFF,#FFFFFF,#FFFFFF,#E14218,#E14218,#E14218', 32, 0, 1, 1, 460),
(461, 'Red Plain Single Bed', 'All you need for a good night''s kip', 3, 3, 1, 3, 1.50, 'bed_budgetb_one', '#FFFFFF,#FFFFFF,#FFFFFF,#E14218,#E14218,#E14218', 32, 0, 1, 1, 461),
(462, 'Polar Sofa', 'Snuggle up together', 25, 2, 2, 1, 1.00, 'rclr_sofa', '0,0,0', -1, 0, 1, 1, 462),
(463, 'Palm Chair', 'Watch out for coconuts', 25, 2, 1, 1, 1.00, 'rclr_chair', '0,0,0', -1, 0, 1, 1, 463),
(464, 'Water Garden', 'Self watering', 25, 1, 1, 3, 0.00, 'rclr_garden', '0,0,0', -1, 0, 1, 1, 464),
(465, 'White Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*0', '#ffffff,#ffffff,#ffffff,#ffffff', 34, 0, 1, 1, 465),
(466, 'Pink Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*1', '#ffffff,#FF7C98,#ffffff,#ffffff', 34, 0, 1, 1, 466),
(467, 'Red Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*2', '#ffffff,#FF3333,#ffffff,#ffffff', 34, 0, 1, 1, 467),
(468, 'Aqua Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*3', '#ffffff,#67c39c,#ffffff,#ffffff', 34, 0, 1, 1, 468),
(469, 'Gold Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*4', '#ffffff,#FFAA2B,#ffffff,#ffffff', 34, 0, 1, 1, 469),
(470, 'Knight Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*5', '#ffffff,#555A37,#ffffff,#ffffff', 34, 0, 1, 1, 470),
(471, 'Blue Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*6', '#ffffff,#A2E8FA,#ffffff,#ffffff', 34, 0, 1, 1, 471),
(472, 'Purple Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*7', '#ffffff,#FC5AFF,#ffffff,#ffffff', 34, 0, 1, 1, 472),
(473, 'Navy Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*8', '#ffffff,#1E8AA5,#ffffff,#ffffff', 34, 0, 1, 1, 473),
(474, 'Green Habbo Roller', 'The power of movement', 5, 1, 1, 1, 0.50, 'queue_tile1*9', '#ffffff,#9AFF60,#ffffff,#ffffff', 34, 0, 1, 1, 474),
(475, 'Rose Quartz Grand Piano', 'Chopin''s revolutionary instrument', 10, 1, 2, 2, 0.00, 'grand_piano*1', '#FFFFFF,#FF8B8B,#FFFFFF', 35, 0, 1, 1, 475),
(476, 'Rose Quartz Piano Stool', 'Here sat the legend of 1900', 2, 2, 1, 1, 1.20, 'romantique_pianochair*1', '#FFFFFF,#FF8B8B,#FFFFFF', 35, 0, 1, 1, 476),
(477, 'Rose Quartz Chaise-Longue', 'Recline in continental comfort', 6, 2, 2, 1, 1.00, 'romantique_divan*1', '#FFFFFF,#FFFFFF,#FFFFFF,#FF8B8B', 35, 0, 1, 1, 477),
(478, 'Rose Quartz Chair', 'Elegant seating for elegant Habbos', 5, 2, 1, 1, 1.00, 'romantique_chair*1', '#FFFFFF,#FF8B8B,#FFFFFF', 35, 0, 1, 1, 478),
(479, 'Rose Quartz Screen', 'Beauty lies within', 6, 1, 2, 1, 0.00, 'romantique_divider*1', '#FF8B8B,#FF8B8B,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 35, 0, 1, 1, 479),
(480, 'Rose Quartz Tray Table', 'Every tray needs a table...', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*1', '#FFFFFF,#FF8B8B,#FFFFFF', 35, 0, 1, 1, 480),
(481, 'Wall Mirror', 'Mirror, mirror on the wall', 4, 0, 0, 0, 0.00, 'wallmirror', '0,0,0', 35, 0, 1, 1, 481),
(482, 'Treats Tray', 'Spoil yourself', 5, 1, 1, 1, 0.00, 'romantique_tray2', '0,0,0', 35, 0, 1, 1, 482),
(483, 'Crystal Lamp', 'Light up your life', 6, 1, 1, 1, 0.00, 'rom_lamp', '0,0,0', 35, 0, 1, 1, 483),
(484, 'Dressing Table', 'Get ready for your big date', 8, 1, 1, 1, 0.00, 'romantique_mirrortabl', '0,0,0', 35, 0, 1, 1, 484),
(485, 'Romantique Clock', 'Tick-Tock!', 25, 1, 1, 1, 0.00, 'romantique_clock', '0,0,0', 35, 0, 1, 1, 485),
(486, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard', '0,0,0', 36, 0, 1, 1, 486),
(487, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*a', '#55AC00,#55AC00,#55AC00', 36, 0, 1, 1, 487),
(488, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*b', '#336666,#336666,#336666', 36, 0, 1, 1, 488),
(489, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*1', '#ff1f08', 36, 0, 1, 1, 489),
(490, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*2', '#99DCCC', 36, 0, 1, 1, 490),
(491, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*3', '#ffee00', 36, 0, 1, 1, 491),
(492, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*4', '#ccddff', 36, 0, 1, 1, 492),
(493, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*5', '#ddccff', 36, 0, 1, 1, 493),
(494, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*6', '#777777', 36, 0, 1, 1, 494),
(495, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*7', '#99CCFF,#99CCFF,#99CCFF', 36, 0, 1, 1, 495),
(496, 'Floor Rug', 'Available in a variety of colours', 3, 4, 3, 5, 0.00, 'carpet_standard*8', '#999966,#999966,#999966', 36, 0, 1, 1, 496),
(497, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft', '', 36, 0, 1, 1, 497),
(498, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*1', '#CC3333', 36, 0, 1, 1, 498),
(499, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*2', '#66FFFF', 36, 0, 1, 1, 499),
(500, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*3', '#FFCC99', 36, 0, 1, 1, 500),
(501, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*4', '#FFCCFF', 36, 0, 1, 1, 501),
(502, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*5', '#FFFF66', 36, 0, 1, 1, 502),
(503, 'Soft Wool Rug', 'Soft Wool Rug', 3, 4, 2, 4, 0.00, 'carpet_soft*6', '#669933', 36, 0, 1, 1, 503),
(504, 'Doormat', 'Welcome Habbos in style', 1, 4, 1, 1, 0.00, 'doormat_love', '0,0,0', 36, 0, 1, 1, 504),
(505, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain', '0,0,0', 36, 0, 1, 1, 505),
(506, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*1', '#ff1f08', 36, 0, 1, 1, 506),
(507, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*2', '#99DCCC', 36, 0, 1, 1, 507),
(508, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*3', '#ffee00', 36, 0, 1, 1, 508),
(509, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*4', '#ccddff', 36, 0, 1, 1, 509),
(510, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*5', '#ddccff', 36, 0, 1, 1, 510),
(511, 'Doormat', 'Available in a variety of colours', 1, 4, 1, 1, 0.00, 'doormat_plain*6', '#777777', 36, 0, 1, 1, 511),
(512, 'Hand-Woven Rug', 'Adds instant warmth', 3, 4, 2, 4, 0.00, 'carpet_armas', '0,0,0', 36, 0, 1, 1, 512),
(513, 'Faux-Fur Bear Rug', 'For cuddling up on', 4, 4, 2, 3, 0.00, 'carpet_polar', '#ffffff,#ffffff,#ffffff', 36, 0, 1, 1, 513),
(514, 'Blue Bear Rug', 'Snuggle up on a Funky bear rug...', 10, 4, 2, 3, 0.00, 'carpet_polar*2', '#ccddff,#ccddff,#ffffff', 36, 0, 1, 1, 514),
(515, 'Yellow Bear Rug', 'Snuggle up on a Funky bear rug...', 10, 4, 2, 3, 0.00, 'carpet_polar*3', '#ffee99,#ffee99,#ffffff', 36, 0, 1, 1, 515),
(516, 'Green Bear Rug', 'Snuggle up on a Funky bear rug...', 10, 4, 2, 3, 0.00, 'carpet_polar*4', '#ddffaa,#ddffaa,#ffffff', 36, 0, 1, 1, 516),
(517, 'Hockey stick', 'whack that ball!', 3, 0, 0, 0, 0.00, 'poster 52', '0,0,0', 37, 0, 1, 1, 517),
(518, 'Hockey stick', 'whack that ball!', 3, 0, 0, 0, 0.00, 'poster 53', '0,0,0', 37, 0, 1, 1, 518),
(519, 'Hockey stick', 'whack that ball!', 3, 0, 0, 0, 0.00, 'poster 54', '0,0,0', 37, 0, 1, 1, 519),
(520, 'Scoreboard', '...for keeping your score', 6, 1, 1, 1, 0.00, 'hockey_score', '0,0,0', 37, 0, 1, 1, 520),
(521, 'Basketball Trophy', 'For the winning team', 3, 1, 1, 1, 0.00, 'legotrophy', '0,0,0', 37, 0, 1, 1, 521),
(522, 'Basketball Hoop', '2 points for every basket', 3, 0, 0, 0, 0.00, 'poster 51', '0,0,0', 37, 0, 1, 1, 522),
(523, 'Basketball Court', 'Line up your slam dunk', 3, 4, 3, 3, 0.00, 'carpet_legocourt', '0,0,0', 37, 0, 1, 1, 523),
(524, 'Team Bench', 'For your reserve players', 6, 2, 4, 1, 1.00, 'bench_lego', '0,0,0', 37, 0, 1, 1, 524),
(525, 'Football Lamp', 'Let''s get sporty!', 10, 4, 1, 1, 0.00, 'footylamp', '0,0,0', 37, 0, 1, 1, 525),
(526, 'Sport track straight', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack1*1', '#ffffff,#e4592d,#ffffff', 37, 0, 1, 1, 526),
(527, 'Sport track straight asphalt', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack1*2', '#ffffff,#62818b,#ffffff', 37, 0, 1, 1, 527),
(528, 'Sport track straight grass', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack1*3', '#ffffff,#5cb800,#ffffff', 37, 0, 1, 1, 528),
(529, 'Sport corner', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack2*1', '#ffffff,#e4592d,#ffffff', 37, 0, 1, 1, 529),
(530, 'Sport corner asphalt', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack2*2', '#ffffff,#62818b,#ffffff', 37, 0, 1, 1, 530),
(531, 'Sport corner grass', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack2*3', '#ffffff,#5cb800,#ffffff', 37, 0, 1, 1, 531),
(532, 'Sport goal', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack3*1', '#ffffff,#e4592d,#ffffff', 37, 0, 1, 1, 532),
(533, 'Sport goal asphalt', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack3*2', '#ffffff,#62818b,#ffffff', 37, 0, 1, 1, 533),
(534, 'Sport goal grass', 'Let''s get sporty!', 3, 4, 2, 2, 0.00, 'sporttrack3*3', '#ffffff,#5cb800,#ffffff', 37, 0, 1, 1, 534),
(535, 'Telephone Box', 'Dr Who?', 5, 1, 1, 1, 0.00, 'door', '0,0,0', 38, 0, 1, 1, 535),
(536, 'Portaloo', 'In a hurry?', 4, 1, 1, 1, 0.00, 'doorC', '0,0,0', 38, 0, 1, 1, 536),
(537, 'Wardrobe', 'Narnia this way!', 3, 1, 1, 1, 0.00, 'doorB', '0,0,0', 38, 0, 1, 1, 537),
(538, 'Teleport Door', 'Magic doorway to anywhere!', 6, 1, 1, 1, 0.00, 'teleport_door', '0,0,0', 38, 0, 1, 1, 538),
(539, 'Gray Traxmachine', 'Feel tha beat', 8, 1, 1, 1, 2.10, 'sound_machine', '#FFFFFF,#FFFFFF,#828282,#FFFFFF', 39, 0, 1, 1, 539),
(540, 'Ambient 1', 'Chilled out beats', 5, 1, 1, 1, 0.20, 'sound_set_4', '0,0,0', 39, 0, 1, 1, 540),
(541, 'Ambient 2', 'Mellow electric grooves', 5, 1, 1, 1, 0.20, 'sound_set_8', '0,0,0', 39, 0, 1, 1, 541),
(542, 'Ambient 3', 'Background ambience loops', 5, 1, 1, 1, 0.20, 'sound_set_6', '0,0,0', 39, 0, 1, 1, 542),
(543, 'Ambient 4', 'The dark side of Habbo', 5, 1, 1, 1, 0.20, 'sound_set_5', '0,0,0', 39, 0, 1, 1, 543),
(544, 'Groove 1', 'Bollywood Beats!', 5, 1, 1, 1, 0.20, 'sound_set_26', '0,0,0', 39, 0, 1, 1, 544),
(545, 'Groove 2', 'Jingle Bells will never be the same...', 5, 1, 1, 1, 0.20, 'sound_set_27', '0,0,0', 39, 0, 1, 1, 545),
(546, 'Groove 3', 'Jive''s Alive!', 5, 1, 1, 1, 0.20, 'sound_set_17', '0,0,0', 39, 0, 1, 1, 546),
(547, 'Groove 4', 'Listen while you tan', 5, 1, 1, 1, 0.20, 'sound_set_18', '0,0,0', 39, 0, 1, 1, 547),
(548, 'Electronic 1', 'Chilled grooves', 5, 1, 1, 1, 0.20, 'sound_set_3', '0,0,0', 39, 0, 1, 1, 548),
(549, 'Electronic 2', 'Mystical ambient soundscapes', 5, 1, 1, 1, 0.20, 'sound_set_9', '0,0,0', 39, 0, 1, 1, 549),
(550, 'Jukebox', 'For your Happy Days!', 5, 1, 1, 1, 0.00, 'jukebox*1', '0,0,0', 40, 0, 1, 1, 550),
(551, 'Disco Sign', 'Serious partying going on!', 15, 0, 0, 0, 0.00, 'poster 56', '0,0,0', 40, 0, 1, 1, 551),
(552, 'Club 1', 'De bada bada bo!', 5, 1, 1, 1, 0.20, 'sound_set_46', '0,0,0', 40, 0, 1, 1, 552),
(553, 'Club 2', 'Storm the UKCharts!', 5, 1, 1, 1, 0.20, 'sound_set_47', '0,0,0', 40, 0, 1, 1, 553),
(554, 'Club 3', 'Sweet party beat', 5, 1, 1, 1, 0.20, 'sound_set_48', '0,0,0', 40, 0, 1, 1, 554),
(555, 'Club 4', 'You will belong', 5, 1, 1, 1, 0.20, 'sound_set_49', '0,0,0', 40, 0, 1, 1, 555),
(556, 'Club 5', 'The harder generation', 5, 1, 1, 1, 0.20, 'sound_set_50', '0,0,0', 40, 0, 1, 1, 556),
(557, 'Club 6', 'Bop to the beat', 5, 1, 1, 1, 0.20, 'sound_set_51', '0,0,0', 40, 0, 1, 1, 557),
(558, 'Dance 1', 'Actually, it''s Partay!', 5, 1, 1, 1, 0.20, 'sound_set_25', '0,0,0', 40, 0, 1, 1, 558),
(559, 'Dance 2', 'Electronic house', 5, 1, 1, 1, 0.20, 'sound_set_29', '0,0,0', 40, 0, 1, 1, 559),
(560, 'Dance 3', 'House loops', 5, 1, 1, 1, 0.20, 'sound_set_31', '0,0,0', 40, 0, 1, 1, 560),
(561, 'Dance 4', 'Music you can really sink your teeth into', 5, 1, 1, 1, 0.20, 'sound_set_11', '0,0,0', 40, 0, 1, 1, 561),
(562, 'Dance 5', 'Let Music be the food of Habbo', 5, 1, 1, 1, 0.20, 'sound_set_13', '0,0,0', 40, 0, 1, 1, 562),
(563, 'Dance 6', 'Groovelicious', 5, 1, 1, 1, 0.20, 'sound_set_35', '0,0,0', 40, 0, 1, 1, 563),
(564, 'Jukebox', 'For your Happy Days!', 5, 1, 1, 1, 0.00, 'jukebox*1', '0,0,0', 41, 0, 1, 1, 564),
(565, 'V-Guitar', 'V-Guitar', 5, 0, 0, 0, 0.00, 'guitar_v', '0,0,0', 41, 0, 1, 1, 565),
(566, 'Skull-Guitar', 'Skull-Guitar', 5, 0, 0, 0, 0.00, 'guitar_skull', '0,0,0', 41, 0, 1, 1, 566),
(567, 'Rock 1', 'Headbanging riffs', 5, 1, 1, 1, 0.20, 'sound_set_21', '0,0,0', 41, 0, 1, 1, 567),
(568, 'Rock 2', 'Head for the pit!', 5, 1, 1, 1, 0.20, 'sound_set_28', '0,0,0', 41, 0, 1, 1, 568),
(569, 'Rock 3', 'Guitar solo set', 5, 1, 1, 1, 0.20, 'sound_set_33', '0,0,0', 41, 0, 1, 1, 569),
(570, 'Rock 4', 'Dude? Cheese!', 5, 1, 1, 1, 0.20, 'sound_set_40', '0,0,0', 41, 0, 1, 1, 570),
(571, 'Rock 5', 'For guitar heroes', 5, 1, 1, 1, 0.20, 'sound_set_34', '0,0,0', 41, 0, 1, 1, 571),
(572, 'Rock 6', 'Rock and Roses!', 5, 1, 1, 1, 0.20, 'sound_set_38', '0,0,0', 41, 0, 1, 1, 572),
(573, 'Rock 7', 'Rock with a roll', 5, 1, 1, 1, 0.20, 'sound_set_39', '0,0,0', 41, 0, 1, 1, 573),
(574, 'Rock 8', 'Burning Riffs', 5, 1, 1, 1, 0.20, 'sound_set_41', '0,0,0', 41, 0, 1, 1, 574),
(575, 'Jukebox', 'For your Happy Days!', 5, 1, 1, 1, 0.00, 'jukebox*1', '0,0,0', 42, 0, 1, 1, 575),
(576, 'Habbo Sounds 1', 'Get the party started!', 5, 1, 1, 1, 0.20, 'sound_set_1', '0,0,0', 42, 0, 1, 1, 576),
(577, 'Habbo Sounds 2', 'Unusual as Standard', 5, 1, 1, 1, 0.20, 'sound_set_12', '0,0,0', 42, 0, 1, 1, 577),
(578, 'Habbo Sounds 3', 'Get the party started!', 5, 1, 1, 1, 0.20, 'sound_set_2', '0,0,0', 42, 0, 1, 1, 578),
(579, 'Habbo Sounds 4', 'It''s all about the Pentiums, baby!', 5, 1, 1, 1, 0.20, 'sound_set_24', '0,0,0', 42, 0, 1, 1, 579),
(580, 'SFX 1', 'Beware zombies!', 5, 1, 1, 1, 0.20, 'sound_set_43', '0,0,0', 42, 0, 1, 1, 580),
(581, 'SFX 2', 'Musical heaven', 5, 1, 1, 1, 0.20, 'sound_set_20', '0,0,0', 42, 0, 1, 1, 581),
(582, 'SFX 3', 'With a hamper full of sounds, not sarnies', 5, 1, 1, 1, 0.20, 'sound_set_22', '0,0,0', 42, 0, 1, 1, 582),
(583, 'SFX 4', 'Don''t be afraid of the dark', 5, 1, 1, 1, 0.20, 'sound_set_23', '0,0,0', 42, 0, 1, 1, 583),
(584, 'SFX 5', 'Sound effects for Furni', 5, 1, 1, 1, 0.20, 'sound_set_7', '0,0,0', 42, 0, 1, 1, 584),
(585, 'Instrumental 1', 'Moments in love', 5, 1, 1, 1, 0.20, 'sound_set_30', '0,0,0', 42, 0, 1, 1, 585),
(586, 'Instrumental 2', 'Piano concert set', 5, 1, 1, 1, 0.20, 'sound_set_32', '0,0,0', 42, 0, 1, 1, 586),
(587, 'Latin Love 1', 'For adult minded', 5, 1, 1, 1, 0.20, 'sound_set_36', '0,0,0', 43, 0, 1, 1, 587),
(588, 'Latin Love 2', 'Love and affection!', 5, 1, 1, 1, 0.20, 'sound_set_60', '0,0,0', 43, 0, 1, 1, 588),
(589, 'Latin Love 3', 'Straight from the heart', 5, 1, 1, 1, 0.20, 'sound_set_61', '0,0,0', 43, 0, 1, 1, 589),
(590, 'RnB Grooves 1', 'Can you fill me in?', 5, 1, 1, 1, 0.20, 'sound_set_55', '0,0,0', 43, 0, 1, 1, 590),
(591, 'RnB Grooves 2', 'Get down tonight!', 5, 1, 1, 1, 0.20, 'sound_set_56', '0,0,0', 43, 0, 1, 1, 591),
(592, 'RnB Grooves 3', 'Feel the groove', 5, 1, 1, 1, 0.20, 'sound_set_57', '0,0,0', 43, 0, 1, 1, 592),
(593, 'RnB Grooves 4', 'Sh-shake it!', 5, 1, 1, 1, 0.20, 'sound_set_58', '0,0,0', 43, 0, 1, 1, 593),
(594, 'RnB Grooves 5', 'Urban break beats', 5, 1, 1, 1, 0.20, 'sound_set_59', '0,0,0', 43, 0, 1, 1, 594),
(595, 'RnB Grooves 6', 'Unadulterated essentials', 5, 1, 1, 1, 0.20, 'sound_set_15', '0,0,0', 43, 0, 1, 1, 595),
(596, 'Hip Hop Beats 1', 'Made from real Boy Bands!', 5, 1, 1, 1, 0.20, 'sound_set_10', '0,0,0', 43, 0, 1, 1, 596),
(597, 'Hip Hop Beats 2', 'Rock them bodies', 5, 1, 1, 1, 0.20, 'sound_set_14', '0,0,0', 43, 0, 1, 1, 597),
(598, 'Hip Hop Beats 3', 'Ferry, ferry good!', 5, 1, 1, 1, 0.20, 'sound_set_16', '0,0,0', 43, 0, 1, 1, 598),
(599, 'Hip Hop Beats 4', 'Shake your body!', 5, 1, 1, 1, 0.20, 'sound_set_19', '0,0,0', 43, 0, 1, 1, 599),
(600, 'Classic trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 600),
(601, 'Classic trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 601),
(602, 'Classic trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 602),
(603, 'Duck trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy2*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 603),
(604, 'Duck trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy2*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 604),
(605, 'Duck trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy2*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 605),
(606, 'Globe trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy3*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 606),
(607, 'Globe trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy3*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 607),
(608, 'Globe trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy3*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 608),
(609, 'Fish trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy4*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 609),
(610, 'Fish trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy4*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 610),
(611, 'Fish trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy4*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 611),
(612, 'Duo trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy5*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 612),
(613, 'Duo trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy5*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 613),
(614, 'Duo trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy5*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 614),
(615, 'Champion trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy6*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 615),
(616, 'Champion trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy6*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 616),
(617, 'Champion trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy6*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 617),
(618, 'Duo trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy8*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 618),
(619, 'Champion trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy9*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 619),
(620, 'Snowman Poster', 'A new use for carrots!', 3, 0, 0, 0, 0.00, 'poster 20', '0,0,0', 45, 0, 1, 1, 620),
(621, 'Angel Poster', 'See that halo gleam!', 3, 0, 0, 0, 0.00, 'poster 21', '0,0,0', 45, 0, 1, 1, 621),
(622, 'Winter Wonderland Poster', 'A chilly snowy scene', 3, 0, 0, 0, 0.00, 'poster 22', '0,0,0', 45, 0, 1, 1, 622),
(623, 'Santa Poster Poster', 'The jolly fat man himself', 3, 0, 0, 0, 0.00, 'poster 23', '0,0,0', 45, 0, 1, 1, 623),
(624, 'Three Wise Men Poster', 'Following the star!', 3, 0, 0, 0, 0.00, 'poster 24', '0,0,0', 45, 0, 1, 1, 624),
(625, 'Reindeer Poster', 'Doing a hard night''s work', 3, 0, 0, 0, 0.00, 'poster 25', '0,0,0', 45, 0, 1, 1, 625),
(626, 'Stocking', 'Hung yours up yet?', 3, 0, 0, 0, 0.00, 'poster 26', '0,0,0', 45, 0, 1, 1, 626),
(627, 'Holly Garland', 'Deck the halls!', 3, 0, 0, 0, 0.00, 'poster 27', '0,0,0', 45, 0, 1, 1, 627),
(628, 'Tinsel (silver)', 'A touch of festive sparkle', 3, 0, 0, 0, 0.00, 'poster 28', '0,0,0', 45, 0, 1, 1, 628),
(629, 'Tinsel (gold)', 'A touch of festive sparkle', 3, 0, 0, 0, 0.00, 'poster 29', '0,0,0', 45, 0, 1, 1, 629),
(630, 'Mistletoe', 'Pucker up', 3, 0, 0, 0, 0.00, 'poster 30', '0,0,0', 45, 0, 1, 1, 630),
(631, 'Small gold star', 'Twinkle, twinkle', 3, 0, 0, 0, 0.00, 'poster 46', '0,0,0', 45, 0, 1, 1, 631),
(632, 'Small silver star', 'Twinkle, twinkle', 3, 0, 0, 0, 0.00, 'poster 47', '0,0,0', 45, 0, 1, 1, 632),
(633, 'Large gold star', 'All that glitters...', 3, 0, 0, 0, 0.00, 'poster 48', '0,0,0', 45, 0, 1, 1, 633),
(634, 'Large silver star', 'All that glitters...', 3, 0, 0, 0, 0.00, 'poster 49', '0,0,0', 45, 0, 1, 1, 634),
(635, 'Dead tree', 'Dead christmas tree', 6, 1, 1, 1, 0.00, 'tree1', '0,0,0', -1, 0, 1, 1, 635),
(636, 'Old Christmas Tree', 'Old Christmas Tree', 6, 1, 1, 1, 0.00, 'tree2', '0,0,0', 45, 0, 1, 1, 636),
(637, 'Christmas Tree 1', 'Any presents under it yet?', 6, 1, 1, 1, 0.00, 'tree3', '0,0,0', 45, 0, 1, 1, 637),
(638, 'Christmas Tree 2', 'Any presents under it yet?', 6, 1, 1, 1, 0.00, 'tree4', '0,0,0', 45, 0, 1, 1, 638),
(639, 'Christmas Tree 3', 'Any presents under it yet?', 6, 1, 1, 1, 0.00, 'tree5', '0,0,0', 45, 0, 1, 1, 639),
(640, 'Flashy Christmas Tree', 'The future''s bright!', 6, 1, 1, 1, 0.00, 'tree6', '0,0,0', -1, 0, 1, 1, 640),
(641, 'Electric Candles', 'No need to worry about wax drips', 3, 1, 1, 1, 0.00, 'triplecandle', '0,0,0', 45, 0, 1, 1, 641),
(642, 'Roast Turkey', 'Where''s the cranberry sauce?', 3, 1, 1, 1, 0.00, 'turkey', '0,0,0', 45, 0, 1, 1, 642),
(643, 'Gingerbread House', 'Good enough to eat', 3, 1, 1, 1, 0.00, 'house', '0,0,0', 45, 0, 1, 1, 643),
(645, 'Christmas Pudding', 'Will you get the lucky sixpence?', 3, 1, 1, 1, 0.00, 'pudding', '0,0,0', 45, 0, 1, 1, 645),
(646, 'Christmas Rubber Duck', 'A right Christmas quacker!', 2, 1, 1, 1, 0.00, 'xmasduck', '0,0,0', 45, 0, 1, 1, 646),
(647, 'Pink Hyacinth', 'Beautiful bulb', 3, 1, 1, 1, 0.00, 'hyacinth1', '0,0,0', 45, 0, 1, 1, 647),
(648, 'Blue Hyacinth', 'Beautiful bulb', 3, 1, 1, 1, 0.00, 'hyacinth2', '0,0,0', 45, 0, 1, 1, 648),
(649, 'Poinsetta', 'Christmas in a pot', 3, 1, 1, 1, 0.00, 'joulutahti', '0,0,0', 45, 0, 1, 1, 649),
(650, 'Red Candle', 'Xmas tea light', 3, 1, 1, 1, 0.00, 'rcandle', '0,0,0', 45, 0, 1, 1, 650),
(651, 'White Candle', 'Xmas tea light', 3, 1, 1, 1, 0.00, 'wcandle', '0,0,0', 45, 0, 1, 1, 651),
(652, 'Wannabe bunny', 'Can you tell what it is yet?', 2, 1, 1, 1, 0.00, 'easterduck', '0,0,0', 46, 0, 1, 1, 652),
(653, 'Pop-up Egg', 'Cheep (!) and cheerful', 5, 1, 1, 1, 0.00, 'birdie', '0,0,0', 46, 0, 1, 1, 653),
(654, 'Basket Of Eggs', 'Eggs-actly what you want for Easter', 4, 1, 1, 1, 0.00, 'basket', '0,0,0', 46, 0, 1, 1, 654),
(655, 'Squidgy Bunny', 'Yours to cuddle up to', 3, 1, 1, 1, 0.00, 'bunny', '0,0,0', 46, 0, 1, 1, 655),
(656, 'Pumpkin Lamp', 'Cast a spooky glow', 6, 1, 1, 1, 0.00, 'pumpkin', '0,0,0', 47, 0, 1, 1, 656),
(657, 'Spiderweb', 'Not something you want to run into', 3, 0, 0, 0, 0.00, 'poster 42', '0,0,0', 47, 0, 1, 1, 657),
(658, 'Chains', 'Shake, rattle and roll!', 4, 0, 0, 0, 0.00, 'poster 43', '0,0,0', 47, 0, 1, 1, 658),
(659, 'Skull Candle Holder', 'Alas poor Yorrick...', 4, 1, 1, 1, 0.00, 'skullcandle', '0,0,0', 47, 0, 1, 1, 659),
(660, 'Skeleton', 'Needs a few more Habburgers', 3, 0, 0, 0, 0.00, 'poster 45', '0,0,0', 47, 0, 1, 1, 660),
(661, 'Mummy', 'Beware the curse...', 3, 0, 0, 0, 0.00, 'poster 44', '0,0,0', 47, 0, 1, 1, 661),
(662, 'Dead Duck', 'Blood, but no guts', 2, 1, 1, 1, 0.00, 'deadduck', '0,0,0', 47, 0, 1, 1, 662),
(663, 'Dead Duck 2', 'Someone forgot to feed me...', 2, 1, 1, 1, 0.00, 'deadduck2', '0,0,0', 47, 0, 1, 1, 663),
(664, 'Dead Duck 3', 'With added ectoplasm', 2, 1, 1, 1, 0.00, 'deadduck3', '0,0,0', 47, 0, 1, 1, 664),
(665, 'Bat Poster', 'flap, flap, screech, screech...', 3, 0, 0, 0, 0.00, 'poster 50', '0,0,0', 47, 0, 1, 1, 665),
(666, 'Jolly Roger', 'For pirates everywhere', 3, 0, 0, 0, 0.00, 'poster 501', '0,0,0', 47, 0, 1, 1, 666),
(667, 'Eaten Ham', 'Looks like you''re too late!', 3, 1, 1, 1, 0.00, 'ham2', '0,0,0', 47, 0, 1, 1, 667),
(668, 'Creepy Crypt', 'What lurks inside?', 5, 3, 1, 3, 1.00, 'habboween_crypt', '0,0,0', 47, 0, 1, 1, 668),
(669, 'Unholy Ground', 'Autumnal chills with each rotation!', 5, 4, 2, 2, 0.00, 'habboween_grass', '0,0,0', 47, 0, 1, 1, 669),
(670, 'Habboween Cauldron', 'Eye of Habbo and toe of Mod!', 5, 1, 1, 1, 0.00, 'hal_cauldron', '0,0,0', 47, 0, 1, 1, 670),
(671, 'Haunted Grave', 'We''re raising the dead!', 5, 1, 1, 1, 0.00, 'hal_grave', '0,0,0', 47, 0, 1, 1, 671),
(672, 'Heart Sofa', 'Perfect for snuggling up on', 5, 2, 2, 1, 1.00, 'heartsofa', '0,0,0', 48, 0, 1, 1, 672),
(673, 'Cupid Statue', 'Watch out for those arrows!', 3, 1, 1, 1, 0.00, 'statue', '0,0,0', 48, 0, 1, 1, 673),
(674, 'Giant Heart', 'Full of love', 6, 1, 2, 1, 0.00, 'heart', '0,0,0', 48, 0, 1, 1, 674),
(675, 'Valentine''s Duck', 'He''s lovestruck', 2, 1, 1, 1, 0.00, 'valeduck', '0,0,0', 48, 0, 1, 1, 675),
(676, 'Heart stickies', 'Heart stickies', 3, 0, 0, 0, 0.00, 'post.it.vd', '0,0,0', 48, 0, 1, 1, 676),
(677, 'Red Carpet', 'For making an entrance.', 15, 4, 2, 7, 0.00, 'carpet_valentine', '0,0,0', 48, 0, 1, 1, 677),
(678, 'Valentine''s lamp', 'Valentine''s lamp', 10, 0, 0, 0, 0.00, 'val_heart', '0,0,0', 48, 0, 1, 1, 678),
(679, 'Valentine rose Red', 'For a love that it true', 8, 1, 1, 1, 0.00, 'plant_valentinerose*1', '#FFFFFF,#FF1E1E,#FFFFFF,#FFFFFF', 48, 0, 1, 1, 679),
(680, 'White Valentine Rose', 'Your secret love', 8, 1, 1, 1, 0.00, 'plant_valentinerose*2', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 48, 0, 1, 1, 680),
(681, 'Yellow Valentine Rose', 'Relight your passions', 8, 1, 1, 1, 0.00, 'plant_valentinerose*3', '#FFFFFF,#ffee00,#FFFFFF,#FFFFFF', 48, 0, 1, 1, 681),
(682, 'Pink Valentine''s Rose', 'Be mine!', 8, 1, 1, 1, 0.00, 'plant_valentinerose*4', '#FFFFFF,#ffbbcf,#FFFFFF,#FFFFFF', 48, 0, 1, 1, 682),
(683, 'Purple Valentine Rose', 'For that special pixel', 8, 1, 1, 1, 0.00, 'plant_valentinerose*5', '#FFFFFF,#CC3399,#FFFFFF,#FFFFFF', 48, 0, 1, 1, 683),
(684, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*2', '#ffffff,#ffffff,#ffffff,#ffffff,#525252,#525252,#525252,#525252', 49, 0, 1, 1, 684),
(685, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*2', '#ffffff,#ffffff,#525252,#525252', 49, 0, 1, 1, 685),
(686, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*2', '#ffffff,#525252', 49, 0, 1, 1, 686),
(687, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*2', '#ffffff,#ffffff,#ffffff,#525252', 49, 1, 1, 1, 687),
(688, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*2', '#ffffff,#525252', 49, 0, 1, 1, 688),
(689, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*2', '#ffffff,#ffffff,#525252,#525252', 49, 0, 1, 1, 689),
(690, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*2', '#ffffff,#525252', 49, 0, 1, 1, 690),
(691, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*2', '#ffffff,#525252', 49, 0, 1, 1, 691),
(692, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*2', '#ffffff,#525252', 49, 0, 1, 1, 692),
(693, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*3', '#ffffff,#ffffff,#ffffff,#ffffff,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 49, 0, 1, 1, 693),
(694, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*3', '#ffffff,#ffffff,#FFFFFF,#FFFFFF', 49, 0, 1, 1, 694),
(695, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*3', '#ffffff,#FFFFFF', 49, 0, 1, 1, 695),
(696, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*3', '#ffffff,#ffffff,#ffffff,#FFFFFF', 49, 1, 1, 1, 696),
(697, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*3', '#ffffff,#FFFFFF', 49, 0, 1, 1, 697),
(698, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*3', '#ffffff,#ffffff,#FFFFFF,#FFFFFF', 49, 0, 1, 1, 698),
(699, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*3', '#ffffff,#FFFFFF', 49, 0, 1, 1, 699),
(700, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*3', '#ffffff,#FFFFFF', 49, 0, 1, 1, 700),
(701, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*3', '#ffffff,#FFFFFF', 49, 0, 1, 1, 701),
(702, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*4', '#ffffff,#ffffff,#ffffff,#ffffff,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC', 49, 0, 1, 1, 702),
(703, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 49, 0, 1, 1, 703),
(704, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*4', '#ffffff,#F7EBBC', 49, 0, 1, 1, 704),
(705, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*4', '#ffffff,#ffffff,#ffffff,#F7EBBC', 49, 1, 1, 1, 705),
(706, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*4', '#ffffff,#F7EBBC', 49, 0, 1, 1, 706),
(707, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 49, 0, 1, 1, 707),
(708, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*4', '#ffffff,#F7EBBC', 49, 0, 1, 1, 708),
(709, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*4', '#ffffff,#F7EBBC', 49, 0, 1, 1, 709),
(710, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*4', '#ffffff,#F7EBBC', 49, 0, 1, 1, 710),
(711, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*5', '#ffffff,#ffffff,#ffffff,#ffffff,#FF99BC,#FF99BC,#FF99BC,#FF99BC', 49, 0, 1, 1, 711),
(712, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*5', '#ffffff,#ffffff,#FF99BC,#FF99BC', 49, 0, 1, 1, 712),
(713, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*5', '#ffffff,#FF99BC', 49, 0, 1, 1, 713),
(714, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*5', '#ffffff,#ffffff,#ffffff,#FF99BC', 49, 1, 1, 1, 714),
(715, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*5', '#ffffff,#FF99BC', 49, 0, 1, 1, 715),
(716, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*5', '#ffffff,#ffffff,#FF99BC,#FF99BC', 49, 0, 1, 1, 716),
(717, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*5', '#ffffff,#FF99BC', 49, 0, 1, 1, 717),
(718, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*5', '#ffffff,#FF99BC', 49, 0, 1, 1, 718),
(719, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*5', '#ffffff,#FF99BC', 49, 0, 1, 1, 719),
(720, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*6', '#ffffff,#ffffff,#ffffff,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8', 49, 0, 1, 1, 720),
(721, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 49, 0, 1, 1, 721),
(722, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*6', '#ffffff,#5EAAF8', 49, 0, 1, 1, 722),
(723, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*6', '#ffffff,#ffffff,#ffffff,#5EAAF8', 49, 1, 1, 1, 723),
(724, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*6', '#ffffff,#5EAAF8', 49, 0, 1, 1, 724),
(725, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 49, 0, 1, 1, 725),
(726, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*6', '#ffffff,#5EAAF8', 49, 0, 1, 1, 726),
(727, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*6', '#ffffff,#5EAAF8', 49, 0, 1, 1, 727),
(728, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*6', '#ffffff,#5EAAF8', 49, 0, 1, 1, 728),
(729, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*7', '#ffffff,#ffffff,#ffffff,#ffffff,#92D13D,#92D13D,#92D13D,#92D13D', 49, 0, 1, 1, 729),
(730, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*7', '#ffffff,#ffffff,#92D13D,#92D13D', 49, 0, 1, 1, 730),
(731, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*7', '#ffffff,#92D13D', 49, 0, 1, 1, 731),
(732, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*7', '#ffffff,#ffffff,#ffffff,#92D13D', 49, 1, 1, 1, 732),
(733, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*7', '#ffffff,#92D13D', 49, 0, 1, 1, 733),
(734, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*7', '#ffffff,#ffffff,#92D13D,#92D13D', 49, 0, 1, 1, 734),
(735, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*7', '#ffffff,#92D13D', 49, 0, 1, 1, 735),
(736, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*7', '#ffffff,#92D13D', 49, 0, 1, 1, 736),
(737, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*7', '#ffffff,#92D13D', 49, 0, 1, 1, 737),
(738, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*8', '#ffffff,#ffffff,#ffffff,#ffffff,#FFD837,#FFD837,#FFD837,#FFD837', 49, 0, 1, 1, 738),
(739, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*8', '#ffffff,#ffffff,#FFD837,#FFD837', 49, 0, 1, 1, 739),
(740, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*8', '#ffffff,#FFD837', 49, 0, 1, 1, 740),
(741, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*8', '#ffffff,#ffffff,#ffffff,#FFD837', 49, 1, 1, 1, 741),
(742, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*8', '#ffffff,#FFD837', 49, 0, 1, 1, 742),
(743, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*8', '#ffffff,#ffffff,#FFD837,#FFD837', 49, 0, 1, 1, 743),
(744, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*8', '#ffffff,#FFD837', 49, 0, 1, 1, 744),
(745, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*8', '#ffffff,#FFD837', 49, 0, 1, 1, 745),
(746, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*8', '#ffffff,#FFD837', 49, 0, 1, 1, 746),
(747, 'Two-Seater Sofa', 'Cushioned, understated comfort', 3, 2, 2, 1, 1.00, 'sofa_silo*9', '#ffffff,#ffffff,#ffffff,#ffffff,#E14218,#E14218,#E14218,#E14218', 49, 0, 1, 1, 747),
(748, 'Armchair', 'Large, but worth it', 3, 1, 1, 1, 1.00, 'sofachair_silo*9', '#ffffff,#ffffff,#E14218,#E14218', 49, 0, 1, 1, 748),
(749, 'Occasional Table', 'For those random moments', 1, 1, 1, 1, 1.00, 'table_silo_small*9', '#ffffff,#E14218', 49, 0, 1, 1, 749),
(750, 'Gate (lockable)', 'Form following function', 6, 1, 1, 1, 0.00, 'divider_silo3*9', '#ffffff,#ffffff,#ffffff,#E14218', 49, 1, 1, 1, 750),
(751, 'Corner Shelf', 'Neat and natty', 3, 1, 1, 1, 1.20, 'divider_silo1*9', '#ffffff,#E14218', 49, 0, 1, 1, 751),
(752, 'Dining Chair', 'Keep it simple', 3, 2, 1, 1, 1.00, 'chair_silo*9', '#ffffff,#ffffff,#E14218,#E14218', 49, 0, 1, 1, 752),
(753, 'Safe Minibar', 'Totally shatter-proof!', 3, 1, 1, 1, 0.00, 'safe_silo*9', '#ffffff,#E14218', 49, 0, 1, 1, 753),
(754, 'Bar Stool', 'Practical and convenient', 3, 1, 1, 1, 1.50, 'barchair_silo*9', '#ffffff,#E14218', 49, 0, 1, 1, 754),
(755, 'Coffee Table', 'Wipe clean and unobtrusive', 3, 1, 2, 2, 0.80, 'table_silo_med*9', '#ffffff,#E14218', 49, 0, 1, 1, 755),
(756, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*2', '#ffffff,#ffffff,#525252,#525252', 50, 0, 1, 1, 756),
(757, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*2', '#ffffff,#ffffff,#ffffff,#ffffff,#525252,#525252,#525252,#525252', 50, 0, 1, 1, 757),
(758, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*2', '#ffffff,#525252', 50, 0, 1, 1, 758),
(759, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*2', '#ffffff,#525252', 50, 0, 1, 1, 759),
(760, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*2', '#ffffff,#525252,#525252', 50, 0, 1, 1, 760),
(761, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*2', '#ffffff,#525252,#ffffff,#525252,#525252,#525252', 50, 0, 1, 1, 761),
(762, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*2', '#ffffff,#ffffff,#525252,#525252', 50, 0, 1, 1, 762),
(763, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*2', '#ffffff,#525252', 50, 0, 1, 1, 763),
(764, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*2', '#ffffff,#ffffff,#525252,#525252', 50, 1, 1, 1, 764),
(765, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*2', '#ffffff,#ffffff,#525252,#525252,#525252,#525252', 50, 1, 1, 1, 765),
(766, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*2', '#ffffff,#525252,#525252,#525252,#525252,#525252', 50, 1, 1, 1, 766),
(767, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*3', '#ffffff,#ffffff,#ffffff,#ffffff', 50, 0, 1, 1, 767),
(768, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 50, 0, 1, 1, 768),
(769, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*3', '#ffffff,#ffffff', 50, 0, 1, 1, 769),
(770, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*3', '#ffffff,#ffffff', 50, 0, 1, 1, 770),
(771, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*3', '#ffffff,#ffffff,#ffffff', 50, 0, 1, 1, 771),
(772, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 50, 0, 1, 1, 772),
(773, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*3', '#ffffff,#ffffff,#ffffff,#ffffff', 50, 0, 1, 1, 773),
(774, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*3', '#ffffff,#ffffff', 50, 0, 1, 1, 774),
(775, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*3', '#ffffff,#ffffff,#ffffff,#ffffff', 50, 1, 1, 1, 775),
(776, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 50, 1, 1, 1, 776),
(777, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 50, 1, 1, 1, 777),
(778, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*4', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 50, 0, 1, 1, 778),
(779, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*4', '#ffffff,#ffffff,#ffffff,#ffffff,#ABD0D2,#ABD0D2,#ABD0D2,#ABD0D2', 50, 0, 1, 1, 779),
(780, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*4', '#ffffff,#ABD0D2', 50, 0, 1, 1, 780),
(781, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*4', '#ffffff,#ABD0D2', 50, 0, 1, 1, 781),
(782, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*4', '#ffffff,#ABD0D2,#ABD0D2', 50, 0, 1, 1, 782),
(783, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*4', '#ffffff,#ABD0D2,#ffffff,#ABD0D2,#ABD0D2,#ABD0D2', 50, 0, 1, 1, 783),
(784, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*4', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 50, 0, 1, 1, 784),
(785, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*4', '#ffffff,#ABD0D2', 50, 0, 1, 1, 785),
(786, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*4', '#ffffff,#ffffff,#ABD0D2,#ABD0D2', 50, 1, 1, 1, 786),
(787, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*4', '#ffffff,#ffffff,#ABD0D2,#ABD0D2,#ABD0D2,#ABD0D2', 50, 1, 1, 1, 787),
(788, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*4', '#ffffff,#ABD0D2,#ABD0D2,#ABD0D2,#ABD0D2,#ABD0D2', 50, 1, 1, 1, 788),
(789, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*5', '#ffffff,#ffffff,#EE7EA4,#EE7EA4', 50, 0, 1, 1, 789),
(790, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*5', '#ffffff,#ffffff,#ffffff,#ffffff,#EE7EA4,#EE7EA4,#EE7EA4,#EE7EA4', 50, 0, 1, 1, 790),
(791, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*5', '#ffffff,#EE7EA4', 50, 0, 1, 1, 791),
(792, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*5', '#ffffff,#EE7EA4', 50, 0, 1, 1, 792),
(793, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*5', '#ffffff,#EE7EA4,#EE7EA4', 50, 0, 1, 1, 793),
(794, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*5', '#ffffff,#EE7EA4,#ffffff,#EE7EA4,#EE7EA4,#EE7EA4', 50, 0, 1, 1, 794),
(795, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*5', '#ffffff,#ffffff,#EE7EA4,#EE7EA4', 50, 0, 1, 1, 795),
(796, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*5', '#ffffff,#EE7EA4', 50, 0, 1, 1, 796),
(797, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*5', '#ffffff,#ffffff,#EE7EA4,#EE7EA4', 50, 1, 1, 1, 797),
(798, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*5', '#ffffff,#ffffff,#EE7EA4,#EE7EA4,#EE7EA4,#EE7EA4', 50, 1, 1, 1, 798),
(799, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*5', '#ffffff,#EE7EA4,#EE7EA4,#EE7EA4,#EE7EA4,#EE7EA4', 50, 1, 1, 1, 799),
(800, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 50, 0, 1, 1, 800),
(801, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*6', '#ffffff,#ffffff,#ffffff,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8', 50, 0, 1, 1, 801),
(802, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*6', '#ffffff,#5EAAF8', 50, 0, 1, 1, 802),
(803, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*6', '#ffffff,#5EAAF8', 50, 0, 1, 1, 803),
(804, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*6', '#ffffff,#5EAAF8,#5EAAF8', 50, 0, 1, 1, 804),
(805, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*6', '#ffffff,#5EAAF8,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8', 50, 0, 1, 1, 805),
(806, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 50, 0, 1, 1, 806),
(807, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*6', '#ffffff,#5EAAF8', 50, 0, 1, 1, 807),
(808, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 50, 1, 1, 1, 808),
(809, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8', 50, 1, 1, 1, 809),
(810, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*6', '#ffffff,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8', 50, 1, 1, 1, 810),
(811, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*7', '#ffffff,#ffffff,#7CB135,#7CB135', 50, 0, 1, 1, 811),
(812, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*7', '#ffffff,#ffffff,#ffffff,#ffffff,#7CB135,#7CB135,#7CB135,#7CB135', 50, 0, 1, 1, 812),
(813, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*7', '#ffffff,#7CB135', 50, 0, 1, 1, 813),
(814, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*7', '#ffffff,#7CB135', 50, 0, 1, 1, 814),
(815, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*7', '#ffffff,#7CB135,#7CB135', 50, 0, 1, 1, 815),
(816, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*7', '#ffffff,#7CB135,#ffffff,#7CB135,#7CB135,#7CB135', 50, 0, 1, 1, 816),
(817, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*7', '#ffffff,#ffffff,#7CB135,#7CB135', 50, 0, 1, 1, 817),
(818, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*7', '#ffffff,#7CB135', 50, 0, 1, 1, 818),
(819, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*7', '#ffffff,#ffffff,#7CB135,#7CB135', 50, 1, 1, 1, 819),
(820, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*7', '#ffffff,#ffffff,#7CB135,#7CB135,#7CB135,#7CB135', 50, 1, 1, 1, 820),
(821, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*7', '#ffffff,#7CB135,#7CB135,#7CB135,#7CB135,#7CB135', 50, 1, 1, 1, 821),
(822, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*8', '#ffffff,#ffffff,#FFD837,#FFD837', 50, 0, 1, 1, 822),
(823, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*8', '#ffffff,#ffffff,#ffffff,#ffffff,#FFD837,#FFD837,#FFD837,#FFD837', 50, 0, 1, 1, 823),
(824, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*8', '#ffffff,#FFD837', 50, 0, 1, 1, 824),
(825, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*8', '#ffffff,#FFD837', 50, 0, 1, 1, 825),
(826, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*8', '#ffffff,#FFD837,#FFD837', 50, 0, 1, 1, 826),
(827, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*8', '#ffffff,#FFD837,#ffffff,#FFD837,#FFD837,#FFD837', 50, 0, 1, 1, 827),
(828, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*8', '#ffffff,#ffffff,#FFD837,#FFD837', 50, 0, 1, 1, 828),
(829, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*8', '#ffffff,#FFD837', 50, 0, 1, 1, 829),
(830, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*8', '#ffffff,#ffffff,#FFD837,#FFD837', 50, 1, 1, 1, 830),
(831, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*8', '#ffffff,#ffffff,#FFD837,#FFD837,#FFD837,#FFD837', 50, 1, 1, 1, 831),
(832, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*8', '#ffffff,#FFD837,#FFD837,#FFD837,#FFD837,#FFD837', 50, 1, 1, 1, 832),
(833, 'Chair', 'Sleek and chic for each cheek', 3, 2, 1, 1, 1.00, 'chair_norja*9', '#ffffff,#ffffff,#E14218,#E14218', 50, 0, 1, 1, 833),
(834, 'Bench', 'Two can perch comfortably', 3, 2, 2, 1, 1.00, 'couch_norja*9', '#ffffff,#ffffff,#ffffff,#ffffff,#E14218,#E14218,#E14218,#E14218', 50, 0, 1, 1, 834),
(835, 'Coffee Table', 'Elegance embodied', 3, 1, 2, 2, 0.80, 'table_norja_med*9', '#ffffff,#E14218', 50, 0, 1, 1, 835),
(836, 'Bookcase', 'For nic naks and art deco books', 3, 1, 1, 1, 0.00, 'shelves_norja*9', '#ffffff,#E14218', 50, 0, 1, 1, 836),
(837, 'iced sofachair', 'Soft iced sofachair', 3, 2, 1, 1, 1.00, 'soft_sofachair_norja*9', '#ffffff,#E14218,#E14218', 50, 0, 1, 1, 837),
(838, 'iced sofa', 'A soft iced sofa', 4, 2, 2, 1, 1.00, 'soft_sofa_norja*9', '#ffffff,#E14218,#ffffff,#E14218,#E14218,#E14218', 50, 0, 1, 1, 838),
(839, 'Ice Bar-Desk', 'Strong, yet soft looking', 3, 1, 2, 1, 1.20, 'divider_nor2*9', '#ffffff,#ffffff,#E14218,#E14218', 50, 0, 1, 1, 839),
(840, 'Ice Corner', 'Looks squishy, but isn''t', 3, 1, 1, 1, 1.20, 'divider_nor1*9', '#ffffff,#E14218', 50, 0, 1, 1, 840);
INSERT INTO `catalogue_items` (`tid`, `catalogue_name`, `catalogue_description`, `catalogue_cost`, `typeid`, `length`, `width`, `top`, `name_cct`, `colour`, `catalogue_id_page`, `door`, `tradeable`, `recycleable`, `catalogue_id_index`) VALUES
(841, 'Door (Lockable)', 'Do go through...', 6, 1, 1, 1, 0.00, 'divider_nor3*9', '#ffffff,#ffffff,#E14218,#E14218', 50, 1, 1, 1, 841),
(842, 'Iced Auto Shutter', 'Habbos, roll out!', 3, 1, 2, 1, 0.00, 'divider_nor4*9', '#ffffff,#ffffff,#E14218,#E14218,#E14218,#E14218', 50, 1, 1, 1, 842),
(843, 'Iced Angle', 'Cool cornering for you!', 3, 1, 1, 1, 0.00, 'divider_nor5*9', '#ffffff,#E14218,#E14218,#E14218,#E14218,#E14218', 50, 1, 1, 1, 843),
(844, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*2', '#ffffff,#ffffff,#525252,#525252', 51, 0, 1, 1, 844),
(845, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*2', '#ffffff,#ffffff,#ffffff,#525252,#525252', 51, 0, 1, 1, 845),
(846, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*2', '#ffffff,#ffffff,#ffffff,#ffffff,#525252,#525252,#525252,#525252', 51, 0, 1, 1, 846),
(847, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*2', '#ffffff,#ffffff,#525252,#525252', 51, 0, 1, 1, 847),
(848, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*2', '#ffffff,#ffffff,#ffffff,#525252,#525252', 51, 1, 1, 1, 848),
(849, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*2', '#ffffff,#ffffff,#525252,#525252', 51, 0, 1, 1, 849),
(850, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*2', '#ffffff,#525252', 51, 0, 1, 1, 850),
(851, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*3', '#ffffff,#ffffff,#ffffff,#ffffff', 51, 0, 1, 1, 851),
(852, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 51, 0, 1, 1, 852),
(853, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 51, 0, 1, 1, 853),
(854, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*3', '#ffffff,#ffffff,#ffffff,#ffffff', 51, 0, 1, 1, 854),
(855, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*3', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 51, 1, 1, 1, 855),
(856, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*3', '#ffffff,#ffffff,#ffffff,#ffffff', 51, 0, 1, 1, 856),
(857, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*3', '#ffffff,#ffffff', 51, 0, 1, 1, 857),
(858, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 51, 0, 1, 1, 858),
(859, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*4', '#ffffff,#ffffff,#ffffff,#F7EBBC,#F7EBBC', 51, 0, 1, 1, 859),
(860, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*4', '#ffffff,#ffffff,#ffffff,#ffffff,#F7EBBC,#F7EBBC,#F7EBBC,#F7EBBC', 51, 0, 1, 1, 860),
(861, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 51, 0, 1, 1, 861),
(862, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*4', '#ffffff,#ffffff,#ffffff,#F7EBBC,#F7EBBC', 51, 1, 1, 1, 862),
(863, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*4', '#ffffff,#ffffff,#F7EBBC,#F7EBBC', 51, 0, 1, 1, 863),
(864, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*4', '#ffffff,#F7EBBC', 51, 0, 1, 1, 864),
(865, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 51, 0, 1, 1, 865),
(866, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*6', '#ffffff,#ffffff,#ffffff,#5EAAF8,#5EAAF8', 51, 0, 1, 1, 866),
(867, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*6', '#ffffff,#ffffff,#ffffff,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8', 51, 0, 1, 1, 867),
(868, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 51, 0, 1, 1, 868),
(869, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*6', '#ffffff,#ffffff,#ffffff,#5EAAF8,#5EAAF8', 51, 1, 1, 1, 869),
(870, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*6', '#ffffff,#ffffff,#5EAAF8,#5EAAF8', 51, 0, 1, 1, 870),
(871, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*6', '#ffffff,#5EAAF8', 51, 0, 1, 1, 871),
(872, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*7', '#ffffff,#ffffff,#7CB135,#7CB135', 51, 0, 1, 1, 872),
(873, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*7', '#ffffff,#ffffff,#ffffff,#7CB135,#7CB135', 51, 0, 1, 1, 873),
(874, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*7', '#ffffff,#ffffff,#ffffff,#ffffff,#7CB135,#7CB135,#7CB135,#7CB135', 51, 0, 1, 1, 874),
(875, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*7', '#ffffff,#ffffff,#7CB135,#7CB135', 51, 0, 1, 1, 875),
(876, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*7', '#ffffff,#ffffff,#ffffff,#7CB135,#7CB135', 51, 1, 1, 1, 876),
(877, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*7', '#ffffff,#ffffff,#7CB135,#7CB135', 51, 0, 1, 1, 877),
(878, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*7', '#ffffff,#7CB135', 51, 0, 1, 1, 878),
(879, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*8', '#ffffff,#ffffff,#FFD837,#FFD837', 51, 0, 1, 1, 879),
(880, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*8', '#ffffff,#ffffff,#ffffff,#FFD837,#FFD837', 51, 0, 1, 1, 880),
(881, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*8', '#ffffff,#ffffff,#ffffff,#ffffff,#FFD837,#FFD837,#FFD837,#FFD837', 51, 0, 1, 1, 881),
(882, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*8', '#ffffff,#ffffff,#FFD837,#FFD837', 51, 0, 1, 1, 882),
(883, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*8', '#ffffff,#ffffff,#ffffff,#FFD837,#FFD837', 51, 1, 1, 1, 883),
(884, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*8', '#ffffff,#ffffff,#FFD837,#FFD837', 51, 0, 1, 1, 884),
(885, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*8', '#ffffff,#FFD837', 51, 0, 1, 1, 885),
(886, 'Double Bed', 'Give yourself space to stretch out', 4, 2, 2, 3, 1.50, 'bed_polyfon*9', '#ffffff,#ffffff,#E14218,#E14218', 51, 0, 1, 1, 886),
(887, 'Single Bed', 'Cot of the artistic', 3, 2, 1, 3, 1.50, 'bed_polyfon_one*9', '#ffffff,#ffffff,#ffffff,#E14218,#E14218', 51, 0, 1, 1, 887),
(888, 'Two-seater Sofa', 'Comfort for stylish couples', 4, 2, 2, 1, 1.20, 'sofa_polyfon*9', '#ffffff,#ffffff,#ffffff,#ffffff,#E14218,#E14218,#E14218,#E14218', 51, 0, 1, 1, 888),
(889, 'Armchair', 'Loft-style comfort', 3, 2, 1, 1, 1.20, 'sofachair_polyfon*9', '#ffffff,#ffffff,#E14218,#E14218', 51, 0, 1, 1, 889),
(890, 'Hatch (Lockable)', 'All bars should have one', 6, 1, 1, 1, 0.00, 'divider_poly3*9', '#ffffff,#ffffff,#ffffff,#E14218,#E14218', 51, 1, 1, 1, 890),
(891, 'Bar/desk', 'Perfect for work or play', 3, 1, 2, 1, 1.00, 'bardesk_polyfon*9', '#ffffff,#ffffff,#E14218,#E14218', 51, 0, 1, 1, 891),
(892, 'Corner Cabinet/Desk', 'Tuck it away', 3, 1, 1, 1, 1.00, 'bardeskcorner_polyfon*9', '#ffffff,#E14218', 51, 0, 1, 1, 892),
(893, 'Aqua Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*1', '#FFFFFF,#ABD0D2,#ABD0D2,#FFFFFF', 52, 0, 1, 1, 893),
(894, 'Aqua Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*1', '#FFFFFF,#ABD0D2,#ABD0D2,#FFFFFF', 52, 0, 1, 1, 894),
(895, 'Aqua Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*1', '#FFFFFF,#ABD0D2,#ABD0D2,#FFFFFF', 52, 0, 1, 1, 895),
(896, 'Aqua Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*1', '#FFFFFF,#ABD0D2,#ABD0D2,#ABD0D2', 52, 0, 1, 1, 896),
(897, 'Aqua Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*1', '#FFFFFF,#ABD0D2,#FFFFFF', 52, 0, 1, 1, 897),
(898, 'Pink Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*2', '#FFFFFF,#FF99BC,#FF99BC,#FFFFFF', 52, 0, 1, 1, 898),
(899, 'Pink Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*2', '#FFFFFF,#FF99BC,#FF99BC,#FFFFFF', 52, 0, 1, 1, 899),
(900, 'Pink Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*2', '#FFFFFF,#FF99BC,#FF99BC,#FFFFFF', 52, 0, 1, 1, 900),
(901, 'Pink Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*2', '#FFFFFF,#FF99BC,#FF99BC,#FF99BC', 52, 0, 1, 1, 901),
(902, 'Pink Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*2', '#FFFFFF,#FF99BC,#FF99BC,#FFFFFF', 52, 0, 1, 1, 902),
(903, 'Black Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*3', '#FFFFFF,#525252,#525252,#FFFFFF', 52, 0, 1, 1, 903),
(904, 'Black Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*3', '#FFFFFF,#525252,#525252,#FFFFFF', 52, 0, 1, 1, 904),
(905, 'Black Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*3', '#FFFFFF,#525252,#525252,#FFFFFF', 52, 0, 1, 1, 905),
(906, 'Black Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*3', '#FFFFFF,#525252,#525252,#525252', 52, 0, 1, 1, 906),
(907, 'Black Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*3', '#FFFFFF,#525252,#525252,#FFFFFF', 52, 0, 1, 1, 907),
(908, 'White Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 908),
(909, 'White Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 909),
(910, 'White Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 910),
(911, 'White Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 911),
(912, 'White Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 912),
(913, 'Beige Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*5', '#FFFFFF,#F7EBBC,#F7EBBC,#FFFFFF', 52, 0, 1, 1, 913),
(914, 'Beige Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*5', '#FFFFFF,#F7EBBC,#F7EBBC,#FFFFFF', 52, 0, 1, 1, 914),
(915, 'Beige Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*5', '#FFFFFF,#F7EBBC,#F7EBBC,#FFFFFF', 52, 0, 1, 1, 915),
(916, 'Beige Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*5', '#FFFFFF,#F7EBBC,#F7EBBC,#F7EBBC', 52, 0, 1, 1, 916),
(917, 'Beige Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*5', '#FFFFFF,#F7EBBC,#F7EBBC,#FFFFFF', 52, 0, 1, 1, 917),
(918, 'Blue Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*6', '#FFFFFF,#5EAAF8,#5EAAF8,#FFFFFF', 52, 0, 1, 1, 918),
(919, 'Blue Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*6', '#FFFFFF,#5EAAF8,#5EAAF8,#FFFFFF', 52, 0, 1, 1, 919),
(920, 'Blue Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*6', '#FFFFFF,#5EAAF8,#5EAAF8,#FFFFFF', 52, 0, 1, 1, 920),
(921, 'Blue Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*6', '#FFFFFF,#5EAAF8,#5EAAF8,#5EAAF8', 52, 0, 1, 1, 921),
(922, 'Blue Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*6', '#FFFFFF,#5EAAF8,#5EAAF8,#FFFFFF', 52, 0, 1, 1, 922),
(923, 'Green Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*7', '#FFFFFF,#92D13D,#92D13D,#FFFFFF', 52, 0, 1, 1, 923),
(924, 'Green Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*7', '#FFFFFF,#92D13D,#92D13D,#FFFFFF', 52, 0, 1, 1, 924),
(925, 'Green Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*7', '#FFFFFF,#92D13D,#92D13D,#FFFFFF', 52, 0, 1, 1, 925),
(926, 'Green Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*7', '#FFFFFF,#92D13D,#92D13D,#92D13D', 52, 0, 1, 1, 926),
(927, 'Green Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*7', '#FFFFFF,#92D13D,#92D13D,#FFFFFF', 52, 0, 1, 1, 927),
(928, 'Yellow Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*8', '#FFFFFF,#FFD837,#FFD837,#FFFFFF', 52, 0, 1, 1, 928),
(929, 'Yellow Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*8', '#FFFFFF,#FFD837,#FFD837,#FFFFFF', 52, 0, 1, 1, 929),
(930, 'Yellow Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*8', '#FFFFFF,#FFD837,#FFD837,#FFFFFF', 52, 0, 1, 1, 930),
(931, 'Yellow Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*8', '#FFFFFF,#FFD837,#FFD837,#FFD837', 52, 0, 1, 1, 931),
(932, 'Yellow Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*8', '#FFFFFF,#FFD837,#FFD837,#FFFFFF', 52, 0, 1, 1, 932),
(933, 'Red Pura module 1', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl1*9', '#FFFFFF,#E14218,#E14218,#FFFFFF', 52, 0, 1, 1, 933),
(934, 'Red Pura module 2', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl2*9', '#FFFFFF,#E14218,#E14218,#FFFFFF', 52, 0, 1, 1, 934),
(935, 'Red Pura module 3', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl3*9', '#FFFFFF,#E14218,#E14218,#FFFFFF', 52, 0, 1, 1, 935),
(936, 'Red Pura module 4', 'Endless fun!', 2, 2, 1, 1, 1.00, 'pura_mdl4*9', '#FFFFFF,#E14218,#E14218,#E14218', 52, 0, 1, 1, 936),
(937, 'Red Pura module 5', 'Endless fun!', 1, 2, 1, 1, 1.00, 'pura_mdl5*9', '#FFFFFF,#E14218,#E14218,#FFFFFF', 52, 0, 1, 1, 937),
(938, 'Aqua Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#ABD0D2,#FFFFFF', 52, 0, 1, 1, 938),
(939, 'Pink Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#FF99BC,#FFFFFF', 52, 0, 1, 1, 939),
(940, 'Black Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#525252,#FFFFFF', 52, 0, 1, 1, 940),
(941, 'White Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#FFFFFF,#FFFFFF', 52, 0, 1, 1, 941),
(942, 'Beige Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#F7EBBC,#FFFFFF', 52, 0, 1, 1, 942),
(943, 'Blue Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#5EAAF8,#FFFFFF', 52, 0, 1, 1, 943),
(944, 'Green Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#92D13D,#FFFFFF', 52, 0, 1, 1, 944),
(945, 'Yellow Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#FFD837,#FFFFFF', 52, 0, 1, 1, 945),
(946, 'Red Retro Chair', 'Sitback and relax', 5, 2, 1, 1, 1.00, 'chair_basic*1', '#FFFFFF,#E14218,#FFFFFF', 52, 0, 1, 1, 946),
(947, 'Rose Grand Piano', 'Rose Grand Piano', 10, 1, 2, 2, 0.00, 'grand_piano*1', '#FFFFFF,#FF8B8B,#FFFFFF', 53, 0, 1, 1, 947),
(948, 'Rose Quartz Piano Stool', 'Here sat the legend of 1900', 2, 2, 1, 1, 1.20, 'romantique_pianochair*1', '#FFFFFF,#FF8B8B,#FFFFFF', 53, 0, 1, 1, 948),
(949, 'Rose Quartz Chair', 'Elegant seating for elegant Habbos', 5, 2, 1, 1, 1.00, 'romantique_chair*1', '#FFFFFF,#FF8B8B,#FFFFFF', 53, 0, 1, 1, 949),
(950, 'Rose Romantique Divan', 'null', 6, 2, 2, 1, 1.00, 'romantique_divan*1', '#FFFFFF,#FFFFFF,#FFFFFF,#FF8B8B', 53, 0, 1, 1, 950),
(951, 'Rose Quartz Screen', 'Beauty lies within', 6, 1, 2, 1, 0.00, 'romantique_divider*1', '#FF8B8B,#FF8B8B,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 53, 0, 1, 1, 951),
(952, 'Rose Quartz Tray Table', 'Every tray needs a table...', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*1', '#FFFFFF,#FF8B8B,#FFFFFF', 53, 0, 1, 1, 952),
(953, 'Lime Grand Piano', 'Lime Grand Piano', 10, 1, 2, 2, 0.00, 'grand_piano*2', '#FFFFFF,#A1DC67,#FFFFFF', 53, 0, 1, 1, 953),
(954, 'Lime Piano Chair', 'Let the music begin', 2, 2, 1, 1, 1.20, 'romantique_pianochair*2', '#FFFFFF,#A1DC67,#FFFFFF', 53, 0, 1, 1, 954),
(955, 'Lime Romantique Chair', 'null', 5, 2, 1, 1, 1.00, 'romantique_chair*2', '#FFFFFF,#A1DC67,#FFFFFF', 53, 0, 1, 1, 955),
(956, 'Emerald Chaise-Longue', 'Recline in continental comfort', 6, 2, 2, 1, 1.00, 'romantique_divan*2', '#FFFFFF,#FFFFFF,#FFFFFF,#A1DC67', 53, 0, 1, 1, 956),
(957, 'Green Screen', 'Keeping things separated', 6, 1, 2, 1, 0.00, 'romantique_divider*2', '#A1DC67,#A1DC67,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 53, 0, 1, 1, 957),
(958, 'Lime Tray Table', 'Every tray needs a table...', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*2', '#FFFFFF,#A1DC67,#FFFFFF', 53, 0, 1, 1, 958),
(959, 'Pink Grand Piano', 'Make sure you play in key!', 10, 1, 2, 2, 0.00, 'grand_piano*3', '#FFFFFF,#5BD1D2,#FFFFFF', 53, 0, 1, 1, 959),
(960, 'Turquoise Piano Chair', 'null', 2, 2, 1, 1, 1.20, 'romantique_pianochair*3', '#FFFFFF,#5BD1D2,#FFFFFF', 53, 0, 1, 1, 960),
(961, 'Turquoise Chair', 'null', 5, 2, 1, 1, 1.00, 'romantique_chair*3', '#FFFFFF,#5BD1D2,#FFFFFF', 53, 0, 1, 1, 961),
(962, 'Turquoise Divan', 'null', 6, 2, 2, 1, 1.00, 'romantique_divan*3', '#FFFFFF,#FFFFFF,#FFFFFF,#5BD1D2', 53, 0, 1, 1, 962),
(963, 'Turquoise Screen', 'Keeping things separated', 6, 1, 2, 1, 0.00, 'romantique_divider*3', '#5BD1D2,#5BD1D2,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 53, 0, 1, 1, 963),
(964, 'Turquoise Tray Table', 'Every tray needs a table...', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*3', '#FFFFFF,#5BD1D2,#FFFFFF', 53, 0, 1, 1, 964),
(965, 'Amber Grand Piano', 'Why is that key green?', 10, 1, 2, 2, 0.00, 'grand_piano*4', '#FFFFFF,#FFC924,#FFFFFF', 53, 0, 1, 1, 965),
(966, 'Amber Piano Stool', 'I can feel air coming through...', 2, 2, 1, 1, 1.20, 'romantique_pianochair*4', '#FFFFFF,#FFC924,#FFFFFF', 53, 0, 1, 1, 966),
(967, 'Amber Chair', 'What does this button do?', 5, 2, 1, 1, 1.00, 'romantique_chair*4', '#FFFFFF,#FFC924,#FFFFFF', 53, 0, 1, 1, 967),
(968, 'Amber Chaise-Longue', 'Is that a cape hanging there?', 6, 2, 2, 1, 1.00, 'romantique_divan*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFC924', 53, 0, 1, 1, 968),
(969, 'Ochre Screen', 'Keeping things separated', 6, 1, 2, 1, 0.00, 'romantique_divider*4', '#FFC924,#FFC924,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 53, 0, 1, 1, 969),
(970, 'Amber Tray Table', 'Why is one leg different?', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*4', '#FFFFFF,#FFC924,#FFFFFF', 53, 0, 1, 1, 970),
(971, 'Onyx Grand Piano', 'Why is that key green?', 10, 1, 2, 2, 0.00, 'grand_piano*5', '#FFFFFF,#323C46,#FFFFFF', 53, 0, 1, 1, 971),
(972, 'Onyx Piano Stool', 'I can feel air coming through...', 2, 2, 1, 1, 1.20, 'romantique_pianochair*5', '#FFFFFF,#323C46,#FFFFFF', 53, 0, 1, 1, 972),
(973, 'Onyx Chair', 'What does this button do?', 5, 2, 1, 1, 1.00, 'romantique_chair*5', '#FFFFFF,#323C46,#FFFFFF', 53, 0, 1, 1, 973),
(974, 'Onyx Chaise-Longue', 'Is that a cape hanging there?', 6, 2, 2, 1, 1.00, 'romantique_divan*5', '#FFFFFF,#FFFFFF,#FFFFFF,#323C46', 53, 0, 1, 1, 974),
(975, 'Onyx Quartz Screen', 'Beauty lies within', 6, 1, 2, 1, 0.00, 'romantique_divider*5', '#323C46,#323C46,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 53, 0, 1, 1, 975),
(976, 'Onyx Tray Table', 'Why is one leg different?', 4, 1, 1, 1, 0.80, 'romantique_smalltabl*5', '#FFFFFF,#323C46,#FFFFFF', 53, 0, 1, 1, 976),
(977, 'Club sofa', 'Importants habbos only', 25, 2, 2, 1, 1.00, 'club_sofa', '0,0,0', 54, 0, 1, 1, 977),
(978, 'HC chair', 'Aqua chair', 3, 2, 1, 1, 1.00, 'chair_plasto*14', '#ffffff,#3CB4F0,#ffffff,#3CB4F0', 54, 0, 1, 1, 978),
(979, 'HC table', 'Aqua table', 3, 1, 2, 2, 1.00, 'table_plasto_4leg*14', '#ffffff,#3CB4F0,#ffffff,#3CB4F0', 54, 0, 1, 1, 979),
(980, 'Mochamaster', 'Wake up and smell it!', 25, 1, 1, 1, 0.00, 'mocchamaster', '0,0,0', 54, 0, 1, 1, 980),
(981, 'Dicemaster', 'Click and roll!', 25, 1, 1, 1, 0.00, 'edicehc', '0,0,0', 54, 0, 1, 1, 981),
(982, 'Tubmaster', 'Time for a soak', 25, 2, 1, 2, 1.00, 'hcamme', '0,0,0', 54, 0, 1, 1, 982),
(983, 'Imperial Teleport', 'Let''s go over tzar!', 25, 1, 1, 1, 0.00, 'doorD', '0,0,0', 54, 0, 1, 1, 983),
(984, 'Throne Sofa', 'For royal bottoms...', 25, 2, 2, 1, 1.00, 'hcsohva', '0,0,0', 54, 0, 1, 1, 984),
(985, 'Oil Lamp', 'Be enlightened', 25, 1, 1, 1, 0.00, 'hc_lmp', '0,0,0', 54, 0, 1, 1, 985),
(986, 'Nordic Table', 'Perfect for banquets', 25, 1, 1, 3, 1.00, 'hc_tbl', '0,0,0', 54, 0, 1, 1, 986),
(987, 'Majestic Chair', 'Royal comfort', 25, 2, 1, 1, 1.00, 'hc_chr', '0,0,0', 54, 0, 1, 1, 987),
(988, 'Study Desk', 'For Habbo scholars', 25, 1, 1, 2, 0.00, 'hc_dsk', '0,0,0', 54, 0, 1, 1, 988),
(989, 'Drinks Trolley', 'For swanky dinners only', 25, 1, 1, 2, 0.00, 'hc_trll', '0,0,0', 54, 0, 1, 1, 989),
(990, 'Persian Carpet', 'Ultimate craftsmanship', 25, 4, 3, 5, 0.00, 'hc_crpt', '0,0,0', 54, 0, 1, 1, 990),
(991, 'Victorian Street Light', 'Somber and atmospheric', 25, 1, 1, 1, 0.00, 'hc_lmpst', '0,0,0', 54, 0, 1, 1, 991),
(992, 'Antique Drapery', 'Topnotch privacy protection', 25, 1, 2, 1, 0.00, 'hc_crtn', '0,0,0', 54, 1, 1, 1, 992),
(993, 'Mega TV Set', 'Forget plasma, go HC!', 25, 2, 2, 1, 1.30, 'hc_tv', '0,0,0', 54, 0, 1, 1, 993),
(994, 'Electric Butler', 'Your personal caretaker', 25, 1, 1, 1, 0.00, 'hc_btlr', '0,0,0', 54, 0, 1, 1, 994),
(995, 'Medieval Bookcase', 'For the scholarly ones', 25, 1, 1, 4, 0.00, 'hc_bkshlf', '0,0,0', 54, 0, 1, 1, 995),
(996, 'X-Ray Divider', 'Believe it or not!', 25, 1, 2, 1, 0.00, 'hc_rntgn', '0,0,0', 54, 0, 1, 1, 996),
(997, 'Weird Science Machine', 'By and for mad inventors', 25, 1, 1, 3, 0.00, 'hc_machine', '0,0,0', 54, 0, 1, 1, 997),
(998, 'Heavy Duty Fireplace', 'Pixel-powered for maximum heating', 25, 1, 1, 3, 0.00, 'hc_frplc', '0,0,0', 54, 0, 1, 1, 998),
(999, 'The Grammophon', 'Very old skool scratch''n''spin', 25, 1, 3, 1, 0.00, 'hc_djset', '0,0,0', 54, 0, 1, 1, 999),
(1000, 'HC Rollers Set', 'Highest class transportation', 25, 1, 1, 1, 0.20, 'hc_rllr', '0,0,0', 54, 0, 1, 1, 1000),
(1001, 'Retro Wall Lamp', 'Tres chic!', 25, 0, 0, 0, 0.00, 'hc_wall_lamp', '0,0,0', 54, 0, 1, 1, 1001),
(1002, 'Mood Light', 'Superior lighting for your room', 25, 0, 0, 0, 0.00, 'roomdimmer', '0,0,0', 12, 0, 1, 1, 1002),
(1003, 'Fire Dragon Lamp', 'George and the...', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*0', '#ffffff,#fa2d00,#fa2d00', 56, 0, 1, 1, 1003),
(1004, 'Sea Dragon Lamp', 'Out of the deep blue!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*1', '#ffffff,#3470ff,#3470ff', 56, 0, 1, 1, 1004),
(1005, 'Jade Dragon Lamp', 'Oriental beast of legends', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*2', '#ffffff,#02bb70,#02bb70', 56, 0, 1, 1, 1005),
(1006, 'Silver Dragon Lamp', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*3', '#ffffff,#ffffff,#ffffff', 56, 0, 1, 1, 1006),
(1007, 'Serpent of Doom', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*4', '#ffffff,#3e3d40,#3e3d40', 56, 0, 1, 1, 1007),
(1008, 'Elf Green Dragon Lamp', 'Roast your chestnuts here!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*5', '#ffffff,#589a03,#589a03', 56, 0, 1, 1, 1008),
(1009, 'Gold Dragon Lamp', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*6', '#ffffff,#ffbc00,#ffbc00', 56, 0, 1, 1, 1009),
(1010, 'Sky Dragon Lamp', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*7', '#ffffff,#83aeff,#83aeff', 56, 0, 1, 1, 1010),
(1011, 'Bronze Dragon Lamp', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*8', '#ffffff,#ff5f01,#ff5f01', 56, 0, 1, 1, 1011),
(1012, 'Purple Dragon Lamp', 'Scary and scorching!', 25, 1, 1, 1, 0.00, 'rare_dragonlamp*9', '#FFFFFF,#B357FF,#B357FF', 56, 0, 1, 1, 1012),
(1013, 'Festive Fan', 'As red as Rudolph''s nose', 25, 1, 1, 1, 0.00, 'rare_fan*0', '#F43100,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1013),
(1014, 'Blue Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*1', '#3C75FF,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1014),
(1015, 'Green Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*2', '#55CD01,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1015),
(1016, 'Purple Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*3', '#BC9BFF,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1016),
(1017, 'SUPERLOVE Fan', 'Fanning the fires of SUPERLOVE...', 25, 1, 1, 1, 0.00, 'rare_fan*4', '#e78b8b,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1017),
(1018, 'Yellow Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*5', '#ffcc00,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1018),
(1019, 'Ochre Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*6', '#FF8000,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1019),
(1020, 'Brown Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*7', '#682B00,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1020),
(1021, 'Habbo Wind Turbine', 'Stylish, Eco-Energy!', 25, 1, 1, 1, 0.00, 'rare_fan*8', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1021),
(1022, 'Fucsia Powered Fan', 'It''ll blow you away!', 25, 1, 1, 1, 0.00, 'rare_fan*9', '#FF60B0,#FFFFFF,#FFFFFF,#FFFFFF', 57, 0, 1, 1, 1022),
(1023, 'Cherry Ice Cream', 'Virtual cherry rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*0', '#FFFFFF,#d02a1f', 58, 0, 1, 1, 1023),
(1024, 'Blueberry Ice Cream', 'Virtual blueberry rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*1', '#FFFFFF,#55c4de', 58, 0, 1, 1, 1024),
(1025, 'Pistachio Ice Cream', 'Virtual pistachio rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*2', '#FFFFFF,#94f718', 58, 0, 1, 1, 1025),
(1026, 'Blackcurrant Ice Cream', 'Virtual blackcurrant rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*3', '#FFFFFF,#B357FF', 58, 0, 1, 1, 1026),
(1027, 'Strawberry Ice Cream', 'Virtual strawberry rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*4', '#FFFFFF,#e78b8b', 58, 0, 1, 1, 1027),
(1028, 'Vanilla Ice Cream', 'Virtual vanilla rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*5', '#FFFFFF,#E1CC00', 58, 0, 1, 1, 1028),
(1029, 'Toffee Ice Cream', 'Virtual toffee rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*6', '#FFFFFF,#FF8000', 58, 0, 1, 1, 1029),
(1030, 'Chocolate Ice Cream', 'Virtual chocolate rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*7', '#FFFFFF,#97420C', 58, 0, 1, 1, 1030),
(1031, 'Peppermint Ice Cream', 'Virtual peppermint rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*8', '#FFFFFF,#00E5E2', 58, 0, 1, 1, 1031),
(1032, 'Bubblegum Ice Cream', 'Virtual bubblegum rocks!', 25, 1, 1, 1, 0.00, 'rare_icecream*9', '#FFFFFF,#FF60B0', 58, 0, 1, 1, 1032),
(1033, 'Blue Inflatable Chair', 'Soft and stylish HC chair', 25, 2, 1, 1, 1.00, 'rubberchair*1', '#0080FF,0,0', 59, 0, 1, 1, 1033),
(1034, 'Pink Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*2', '#FF8B8B,0,0', 59, 0, 1, 1, 1034),
(1035, 'Orange Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*3', '#FF8000,0,0', 59, 0, 1, 1, 1035),
(1036, 'Ocean Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*4', '#00E5E2,0,0', 59, 0, 1, 1, 1036),
(1037, 'Lime Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*5', '#A1DC67,0,0', 59, 0, 1, 1, 1037),
(1038, 'Violet Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*6', '#B357FF,0,0', 59, 0, 1, 1, 1038),
(1039, 'White Inflatable Chair', 'Soft and tearproof!', 25, 2, 1, 1, 1.00, 'rubberchair*7', '#CFCFCF,0,0', 59, 0, 1, 1, 1039),
(1040, 'Black Inflatable Chair', 'Soft and tearproof for HC!', 25, 2, 1, 1, 1.00, 'rubberchair*8', '#333333,0,0', 59, 0, 1, 1, 1040),
(1041, 'Red Laser Door', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*0', '#ffffff,#dd2d22,#ffffff,#ffffff,#ffffff,#dd2d22', 60, 1, 1, 1, 1041),
(1042, 'Gold Laser Gate', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*1', '#ffffff,#ffbc00,#ffffff,#ffffff,#ffffff,#ffbc00', 60, 1, 1, 1, 1042),
(1043, 'Blue Laser Gate', 'Get in the ring!', 25, 1, 1, 1, 0.00, 'scifiport*2', '#ffffff,#5599ff,#ffffff,#ffffff,#ffffff,#5599ff', 60, 1, 1, 1, 1043),
(1044, 'Jade Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*3', '#ffffff,#02bb70,#ffffff,#ffffff,#ffffff,#02bb70', 60, 1, 1, 1, 1044),
(1045, 'Pink Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*4', '#ffffff,#ff5577,#ffffff,#ffffff,#ffffff,#ff5577', 60, 1, 1, 1, 1045),
(1046, 'Security Fence', 'Recovered from Roswell', 25, 1, 1, 1, 0.00, 'scifiport*5', '#ffffff,#555555,#ffffff,#ffffff,#ffffff,#555555', 60, 1, 1, 1, 1046),
(1047, 'White Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*6', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 60, 1, 1, 1, 1047),
(1048, 'Turquoise Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*7', '#ffffff,#00cccc,#ffffff,#ffffff,#ffffff,#00cccc', 60, 1, 1, 1, 1048),
(1049, 'Purple Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*8', '#ffffff,#bb55cc,#ffffff,#ffffff,#ffffff,#bb55cc', 60, 1, 1, 1, 1049),
(1050, 'Violet Sci-Fi Port', 'Energy beams. No trespassers!', 25, 1, 1, 1, 0.00, 'scifiport*9', '#ffffff,#7733ff,#ffffff,#ffffff,#ffffff,#7733ff', 60, 1, 1, 1, 1050),
(1051, 'Pink marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*1', '#ffffff,#ffffff,#ffffff,#e78b8b', 61, 1, 1, 1, 1051),
(1052, 'Red Dragon Marquee', 'Dragons out and Davids in!', 25, 1, 1, 1, 0.00, 'marquee*2', '#ffffff,#ffffff,#ffffff,#d02a1f', 61, 1, 1, 1, 1052),
(1053, 'Aqua Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*3', '#ffffff,#ffffff,#ffffff,#3399FF', 61, 1, 1, 1, 1053),
(1054, 'Yellow Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*4', '#ffffff,#ffffff,#ffffff,#efbf00', 61, 1, 1, 1, 1054),
(1055, 'Graphite Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*5', '#ffffff,#ffffff,#ffffff,#666666', 61, 1, 1, 1, 1055),
(1056, 'Blue Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*6', '#ffffff,#ffffff,#ffffff,#0000FF', 61, 1, 1, 1, 1056),
(1057, 'Purple Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*7', '#ffffff,#ffffff,#ffffff,#B357FF', 61, 1, 1, 1, 1057),
(1058, 'Ultramarine Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*8', '#ffffff,#ffffff,#ffffff,#006699', 61, 1, 1, 1, 1058),
(1059, 'Green Marquee', 'It''s both door and a shade!', 25, 1, 1, 1, 0.00, 'marquee*9', '#ffffff,#ffffff,#ffffff,#89ca35', 61, 1, 1, 1, 1059),
(1060, 'Pink Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*1', '#ffffff,#ffaaaa,#ffaaaa,#ffaaaa,#ffffff', 62, 1, 1, 1, 1060),
(1061, 'Yellow Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*2', '#ffffff,#ffee66,#ffee66,#ffee66,#ffffff', 62, 1, 1, 1, 1061),
(1062, 'Lightblue Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*3', '#ffffff,#aaccff,#aaccff,#aaccff,#ffffff', 62, 1, 1, 1, 1062),
(1063, 'Emerald Spaceship Door', 'Protect your pot of gold!', 25, 1, 1, 1, 0.00, 'scifidoor*4', '#ffffff,#99dd77,#99dd77,#99dd77,#ffffff', 62, 1, 1, 1, 1063),
(1064, 'White Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*5', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 62, 1, 1, 1, 1064),
(1065, 'Black Monolith', 'Monolith goes up! Monolith goes down!', 25, 1, 1, 1, 0.00, 'scifidoor*6', '#ffffff,#333333,#333333,#333333,#ffffff', 62, 1, 1, 1, 1065),
(1066, 'Aqua Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*7', '#ffffff,#aaffff,#aaffff,#aaffff,#ffffff', 62, 1, 1, 1, 1066),
(1067, 'Purple Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*8', '#ffffff,#ff99cc,#ff99cc,#ff99cc,#ffffff', 62, 1, 1, 1, 1067),
(1068, 'Blue Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*9', '#ffffff,#4488ff,#4488ff,#4488ff,#ffffff', 62, 1, 1, 1, 1068),
(1069, 'Violet Spaceship Door', 'There out of this world!', 25, 1, 1, 1, 0.00, 'scifidoor*10', '#ffffff,#bb99ff,#bb99ff,#bb99ff,#ffffff', 62, 1, 1, 1, 1069),
(1070, 'White Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*0', '#ffffff,#ffffff,#ffffff,#ffffff,#ffffff,#ffffff', 63, 0, 1, 1, 1070),
(1071, 'Pink Oriental screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*1', '#ffffff,#ffffff,#FFA795,#FFA795,#ffffff,#ffffff', 63, 0, 1, 1, 1071),
(1072, 'RosewoodScreen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*2', '#ffffff,#ffffff,#bb0000,#bb0000,#ffffff,#ffffff', 63, 0, 1, 1, 1072),
(1073, 'Aqua Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*3', '#ffffff,#ffffff,#79E4B3,#79E4B3,#ffffff,#ffffff', 63, 0, 1, 1, 1073),
(1074, 'Golden Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*4', '#ffffff,#ffffff,#F7B800,#F7B800,#ffffff,#ffffff', 63, 0, 1, 1, 1074),
(1075, 'Gray Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*5', '#ffffff,#ffffff,#778B61,#778B61,#ffffff,#ffffff', 63, 0, 1, 1, 1075),
(1076, 'Blue Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*6', '#ffffff,#ffffff,#72B6D1,#72B6D1,#ffffff,#ffffff', 63, 0, 1, 1, 1076),
(1077, 'Purple Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*7', '#ffffff,#ffffff,#DA2591,#DA2591,#ffffff,#ffffff', 63, 0, 1, 1, 1077),
(1078, 'Night Blue Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*8', '#ffffff,#ffffff,#004B5E,#004B5E,#ffffff,#ffffff', 63, 0, 1, 1, 1078),
(1079, 'Green Oriental Screen', 'Add an exotic touch to your room', 25, 1, 1, 2, 0.00, 'wooden_screen*9', 'ffffff,#ffffff,#A0BE1F,#A0BE1F,#ffffff,#ffffff', 63, 0, 1, 1, 1079),
(1080, 'Greek Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*0', '#ffffff,#ffffff,#ffffff', 64, 0, 1, 1, 1080),
(1081, 'Pink Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*1', '#ffffff,#FFD0D2,#FFD0D2', 64, 0, 1, 1, 1081),
(1082, 'Wood Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*2', '#ffffff,#7B5922,#7B5922', 64, 0, 1, 1, 1082),
(1083, 'Blue Pillar', 'Ancient and stately', 25, 1, 1, 1, 3.70, 'pillar*3', '#ffffff,#BDCDEA,#BDCDEA', 64, 0, 1, 1, 1083),
(1084, 'Graphite Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*4', '#ffffff,#71797C,#71797C', 64, 0, 1, 1, 1084),
(1085, 'Green Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*5', '#ffffff,#CEDD65,#CEDD65', 64, 0, 1, 1, 1085),
(1086, 'Terracotta Pillar', 'Ancient and stately', 25, 1, 1, 1, 3.70, 'pillar*6', '#ffffff,#972e2a,#972e2a', 64, 0, 1, 1, 1086),
(1087, 'Atlantean Pillar', 'Recovered from Habblantis', 25, 1, 1, 1, 3.70, 'pillar*7', '#ffffff,#e3ca0e,#e3ca0e', 64, 0, 1, 1, 1087),
(1088, 'Olive Green Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*8', '#ffffff,#9A924B,#9A924B', 64, 0, 1, 1, 1088),
(1089, 'Rock Pillar', 'Classy architect, for holding up ceilings!', 25, 1, 1, 1, 3.70, 'pillar*9', '#ffffff,#B2A69D,#B2A69D', 64, 0, 1, 1, 1089),
(1090, 'White Lace Pillow', 'Minimalist comfort!', 25, 2, 1, 1, 0.80, 'pillow*0', '#ffffff,#ffffff,#ffffff,#ffffff', 65, 0, 1, 1, 1090),
(1091, 'Pink Fluffy Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.90, 'pillow*1', '#FF8888,#FF8888,#ffffff,#ffffff', 65, 0, 1, 1, 1091),
(1092, 'Red Silk Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*2', '#F00000,#F00000,#ffffff,#ffffff', 65, 0, 1, 1, 1092),
(1093, 'Turquoise Satin Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*3', '#83aeff,#83aeff,#ffffff,#ffffff', 65, 0, 1, 1, 1093),
(1094, 'Gold Feather Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*4', '#FFBD18,#FFBD18,#ffffff,#ffffff', 65, 0, 1, 1, 1094),
(1095, 'Black Leather Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*5', '#494D29,#494D29,#ffffff,#ffffff', 65, 0, 1, 1, 1095),
(1096, 'Blue Cotton Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*6', '#5DAAC9,#5DAAC9,#ffffff,#ffffff', 65, 0, 1, 1, 1096),
(1097, 'Purple Velvet Pillow', 'Bonnie''s pillow of choice!', 25, 2, 1, 1, 0.80, 'pillow*7', '#E532CA,#E532CA,#ffffff,#ffffff', 65, 0, 1, 1, 1097),
(1098, 'Navy Cord Pillow', 'Puffy, soft and huge', 25, 2, 1, 1, 0.80, 'pillow*8', '#214E68,#214E68,#ffffff,#ffffff', 65, 0, 1, 1, 1098),
(1099, 'Green Wooly Pillow', 'Puffy, soft and VERY fluffy!', 25, 2, 1, 1, 0.80, 'pillow*9', '#B9FF4B,#B9FF4B,#ffffff,#ffffff', 65, 0, 1, 1, 1099),
(1100, 'Mars Smoke Machine', 'See in 2007 with a bang!', 25, 1, 1, 1, 0.00, 'scifirocket*0', '#ffffff,#ffffff,#dd2d22,#ffffff', 66, 0, 1, 1, 1100),
(1101, 'Saturn Smoke Machine', 'There is always space for this!', 25, 1, 1, 1, 0.00, 'scifirocket*1', '#ffffff,#ffffff,#f1b000,#ffffff', 66, 0, 1, 1, 1101),
(1102, 'Earth Smoke Machine', 'A little closer to home!', 25, 1, 1, 1, 0.00, 'scifirocket*2', '#ffffff,#ffffff,#009900,#ffffff', 66, 0, 1, 1, 1102),
(1103, 'Endor Smoke Machine', 'Caution! Unknown Location!', 25, 1, 1, 1, 0.00, 'scifirocket*3', '#ffffff,#ffffff,#02bb70,#ffffff', 66, 0, 1, 1, 1103),
(1104, 'Venus Smoke Machine', 'Welcome... to planet love', 25, 1, 1, 1, 0.00, 'scifirocket*4', '#ffffff,#ffffff,#ff5577,#ffffff', 66, 0, 1, 1, 1104),
(1105, 'Uranus Smoke Machine', 'From the unknown depths of space', 25, 1, 1, 1, 0.00, 'scifirocket*5', '#ffffff,#ffffff,#555555,#ffffff', 66, 0, 1, 1, 1105),
(1106, 'Mercury Smoke Machine', 'Too hot to handle!', 25, 1, 1, 1, 0.00, 'scifirocket*6', '#ffffff,#ffffff,#ffffff,#ffffff', 66, 0, 1, 1, 1106),
(1107, 'Jupiter Smoke Machine', 'Larger than life!', 25, 1, 1, 1, 0.00, 'scifirocket*7', '#ffffff,#ffffff,#00cccc,#ffffff', 66, 0, 1, 1, 1107),
(1108, 'Pluto Smoke Machine', 'From a space far, far away!', 25, 1, 1, 1, 0.00, 'scifirocket*8', '#ffffff,#ffffff,#bb55cc,#ffffff', 66, 0, 1, 1, 1108),
(1109, 'Neptune Smoke Machine', 'Something fishy is going on...', 25, 1, 1, 1, 0.00, 'scifirocket*9', '#ffffff,#ffffff,#0077FF,#ffffff', 66, 0, 1, 1, 1109),
(1110, 'Blue Summer Pool', 'Fancy a dip?', 25, 4, 2, 2, 0.00, 'summer_pool*1', '#5EAAF8,#5EAAF8,#5EAAF8,#5EAAF8,#ffffff,#ffffff,#ffffff,#ffffff,#5EAAF8', 67, 0, 1, 1, 1110),
(1111, 'Red Summer Pool', 'Fancy a dip?', 25, 4, 2, 2, 0.00, 'summer_pool*2', '#E14218,#E14218,#E14218,#E14218,#ffffff,#ffffff,#ffffff,#ffffff,#E14218', 67, 0, 1, 1, 1111),
(1112, 'Green Summer Pool', 'Fancy a dip?', 25, 4, 2, 2, 0.00, 'summer_pool*3', '#92D13D,#92D13D,#92D13D,#92D13D,#ffffff,#ffffff,#ffffff,#ffffff,#92D13D', 67, 0, 1, 1, 1112),
(1113, 'Yellow Summer Pool', 'Fancy a dip?', 25, 4, 2, 2, 0.00, 'summer_pool*4', '#FFD837,#FFD837,#FFD837,#FFD837,#ffffff,#ffffff,#ffffff,#ffffff,#FFD837', 67, 0, 1, 1, 1113),
(1114, 'Habbo Turntable', 'For the retro music-lover', 25, 1, 1, 1, 0.00, 'djesko_turntable', '0,0,0', 68, 0, 1, 1, 1114),
(1115, 'Holopod', 'As if by magic...', 25, 1, 1, 1, 0.00, 'hologram', '0,0,0', 68, 0, 1, 1, 1115),
(1116, 'Holo-girl', 'You''re her only hope...', 25, 1, 1, 1, 0.00, 'redhologram', '0,0,0', 68, 0, 1, 1, 1116),
(1117, 'Typewriter', 'Write that bestseller', 25, 1, 1, 1, 0.00, 'typingmachine', '0,0,0', 68, 0, 1, 1, 1117),
(1118, 'Dragon Egg', 'The stuff of legend', 25, 1, 1, 1, 0.00, 'spyro', '0,0,0', 68, 0, 1, 1, 1118),
(1119, 'Snow Globe', 'It''s all white..', 25, 1, 1, 1, 0.00, 'rare_globe', '0,0,0', 68, 0, 1, 1, 1119),
(1120, 'Lappland Greetings', 'Ho Ho Ho!', 25, 2, 2, 1, 0.70, 'rare_xmas_screen', '0,0,0', 68, 0, 1, 1, 1120),
(1121, 'Holiday Romance', 'Peep through and smile!', 25, 2, 2, 1, 1.10, 'valentinescreen', '0,0,0', 68, 0, 1, 1, 1121),
(1122, 'Hammock', 'Eco bed', 25, 3, 1, 3, 1.50, 'rare_hammock', '0,0,0', 68, 0, 1, 1, 1122),
(1123, 'Jamaican Sand Patch', 'Your own paradise island', 25, 4, 2, 2, 0.00, 'sandrug', '0,0,0', 68, 0, 1, 1, 1123),
(1124, 'Snow Rug', 'Let''s get sporty!', 25, 4, 2, 2, 0.00, 'rare_snowrug', '0,0,0', 68, 0, 1, 1, 1124),
(1125, 'Moon Rug', 'Made in 1969', 25, 4, 2, 2, 0.00, 'rare_moonrug', '0,0,0', 68, 0, 1, 1, 1125),
(1126, 'Petal Patch', 'A little bit of outdoors indoors...', 25, 4, 2, 2, 0.00, 'rare_daffodil_rug', '0,0,0', 68, 0, 1, 1, 1126),
(1127, 'Aloe Vera', 'Goodbye Bert...', 25, 1, 1, 1, 0.00, 'plant_cruddy', '0,0,0', 68, 0, 1, 1, 1127),
(1128, 'Man Eating Plant', 'How do you give it water?', 25, 1, 1, 1, 0.00, 'rare_mnstr', '0,0,0', 68, 0, 1, 1, 1128),
(1129, 'Gold Trophy', 'Gorgeously glittery', 25, 1, 1, 1, 0.00, 'prize1', '0,0,0', 68, 0, 1, 1, 1129),
(1130, 'Silver Trophy', 'Nice and shiny', 25, 1, 1, 1, 0.00, 'prize2', '0,0,0', 68, 0, 1, 1, 1130),
(1131, 'Bronse Trophy', 'A weighty award', 25, 1, 1, 1, 0.00, 'prize3', '0,0,0', 68, 0, 1, 1, 1131),
(1132, 'Blue Amber Lamp', 'A honey-hued glow', 25, 1, 1, 1, 0.00, 'rare_beehive_bulb', '#ffffff,#ffffff,#ffffff,#ffffff,#55c4de,#ffffff', 68, 0, 1, 1, 1132),
(1133, 'Red Amber Lamp', 'A honey-hued glow', 25, 1, 1, 1, 0.00, 'rare_beehive_bulb*1', '#ffffff,#ffffff,#ffffff,#ffffff,#de5555,#ffffff', 68, 0, 1, 1, 1133),
(1134, 'Yellow Amber Lamp', 'A honey-hued glow', 25, 1, 1, 1, 0.00, 'rare_beehive_bulb*2', '#ffffff,#ffffff,#ffffff,#ffffff,#ffcc00,#ffffff', 68, 0, 1, 1, 1134),
(1135, 'Golden Elephant', 'Say hello to Nelly', 25, 1, 1, 1, 0.00, 'rare_elephant_statue', '#ffffff,#ffcc00', 68, 0, 1, 1, 1135),
(1136, 'Silver Elephant', 'Say hello to Nelly', 25, 1, 1, 1, 0.00, 'rare_elephant_statue*1', '#ffffff,#bfbfbf', 68, 0, 1, 1, 1136),
(1137, 'Bronze Elephant', 'Say hello to Nelly', 25, 1, 1, 1, 0.00, 'rare_elephant_statue*2', '#ffffff,#cc6600', 68, 0, 1, 1, 1137),
(1138, 'Bird Bath (red)', 'For our feathered friends', 25, 1, 1, 1, 0.00, 'rare_fountain', '#ffffff,#ffffff,#ef5a5a', 68, 0, 1, 1, 1138),
(1139, 'Bird Bath (grey)', 'For our feathered friends', 25, 1, 1, 1, 0.00, 'rare_fountain*1', '#ffffff,#ffffff,#ffffff', 68, 0, 1, 1, 1139),
(1140, 'Bird Bath (green)', 'For our feathered friends', 25, 1, 1, 1, 0.00, 'rare_fountain*2', '#ffffff,#ffffff,#b8cf00', 68, 0, 1, 1, 1140),
(1141, 'Bird Bath (blue)', 'For our feathered friends', 25, 1, 1, 1, 0.00, 'rare_fountain*3', '#ffffff,#ffffff,#52bdbd', 68, 0, 1, 1, 1141),
(1142, 'Russian Samovar', 'Click for a refreshing cuppa', 25, 1, 1, 1, 0.00, 'samovar', '0,0,0', 68, 0, 1, 1, 1142),
(1143, 'Habbo Cola Machine', 'A sparkling and refreshing pixel drink!', 25, 1, 1, 1, 0.00, 'md_limukaappi', '0,0,0', 68, 0, 1, 1, 1143),
(1144, 'Speaker''s Corner', 'Stand and Deliver!', 25, 2, 1, 1, 1.80, 'rare_stand', '0,0,0', 68, 0, 1, 1, 1144),
(1145, 'Infobus', 'The Special Infobus Poster', 15, 0, 0, 0, 0.00, 'poster 2005', '0,0,0', 68, 0, 1, 1, 1145),
(1146, 'Green Parasol', 'Block those rays!', 25, 1, 1, 1, 0.00, 'rare_parasol*0', '#ffffff,#ffffff,#ffffff,#94f718', 67, 0, 1, 1, 1146),
(1147, 'Yellow Parasol', 'Block those rays!', 25, 1, 1, 1, 0.00, 'rare_parasol*1', '#ffffff,#ffffff,#ffffff,#ffff11', 67, 0, 1, 1, 1147),
(1148, 'Orange Parasol', 'Block those rays!', 25, 1, 1, 1, 0.00, 'rare_parasol*2', '#ffffff,#ffffff,#ffffff,#ff8f61', 67, 0, 1, 1, 1148),
(1149, 'Violet Parasol', 'Block those rays!', 25, 1, 1, 1, 0.00, 'rare_parasol*3', '#ffffff,#ffffff,#ffffff,#d47fff', 67, 0, 1, 1, 1149),
(1150, 'Sleeping bag', 'Ultimate Coziness', 25, 3, 1, 3, 0.80, 'sleepingbag*1', '#BB5F54,0,#BB5F54,0,#BB5F54', 68, 0, 1, 1, 1150),
(1151, 'Solarium', 'Rejuvenate your pixels!', 25, 1, 1, 1, 0.00, 'solarium_norja', '0,#E2DAAC', 68, 0, 1, 1, 1151),
(1152, 'Throne', 'Important Habbos only', 25, 2, 1, 1, 1.00, 'throne', '0,0,0', 68, 0, 1, 1, 1152),
(1153, 'Habbo trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy7*3', '#ffffff,#ffffff,#996600', 69, 0, 1, 1, 1153),
(1154, 'Fish trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy4*3', '#ffffff,#ffffff,#996600', 69, 0, 1, 1, 1154),
(1155, 'Globe trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy3*3', '#ffffff,#ffffff,#996600', 69, 0, 1, 1, 1155),
(1156, 'Champion trophy', 'Breathtaking bronze', 8, 1, 1, 1, 0.00, 'prizetrophy6*3', '#ffffff,#ffffff,#996600', 69, 0, 1, 1, 1156),
(1157, 'Fish trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy4*2', '#ffffff,#ffffff,#ffffff', 69, 0, 1, 1, 1157),
(1158, 'Habbo trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy7*2', '#ffffff,#ffffff,#ffffff', 69, 0, 1, 1, 1158),
(1159, 'Globe trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy3*2', '#ffffff,#ffffff,#ffffff', 69, 0, 1, 1, 1159),
(1160, 'Champion trophy', 'Shiny silver', 10, 1, 1, 1, 0.00, 'prizetrophy6*2', '#ffffff,#ffffff,#ffffff', 69, 0, 1, 1, 1160),
(1161, 'Fish trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy4*1', '#ffffff,#ffffff,#FFDD3F', 69, 0, 1, 1, 1161),
(1162, 'Globe trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy3*1', '#ffffff,#ffffff,#FFDD3F', 69, 0, 1, 1, 1162),
(1163, 'Habbo trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy7*1', '#ffffff,#ffffff,#FFDD3F', 69, 0, 1, 1, 1163),
(1164, 'Champion trophy', 'Glittery gold', 12, 1, 1, 1, 0.00, 'prizetrophy6*1', '#ffffff,#ffffff,#FFDD3F', 69, 0, 1, 1, 1164),
(1165, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#EFE853,#EFE853,#FFFFFF,#EFE853,#EFE853', 70, 0, 1, 1, 1165),
(1166, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#4C526E,#8D92AB,#FFFFFF,#8D92AB,#4C526E', 70, 0, 1, 1, 1166),
(1167, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#985A47,#D9AD90,#FFFFFF,#D9AD90,#985A47', 70, 0, 1, 1, 1167),
(1168, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#80B1BC,#DAF4FA,#FFFFFF,#DAF4FA,#80B1BC', 70, 0, 1, 1, 1168),
(1169, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#F6C0C0,#F6C0C0,#FFFFFF,#F6C0C0,#F6C0C0', 70, 0, 1, 1, 1169),
(1170, 'Noob Chair', 'Noob Chair', 3, 2, 1, 1, 1.00, 'noob_chair', '#FFFFFF,#FFD923,#B1B400,#FFFFFF,#B1B400,#FFD923', 70, 0, 1, 1, 1170),
(1171, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#EFE853,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1171),
(1172, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#4C526E,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1172),
(1173, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#D9AD90,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1173),
(1174, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#94CBD7,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1174),
(1175, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#F5779F,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1175),
(1176, 'Noob Lamp', 'Noob Lamp', 3, 1, 1, 1, 0.00, 'noob_lamp', '#FFD406,#FFFFFF,#FFFFFF', 70, 0, 1, 1, 1176),
(1177, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#FC9C45,#F4EC36', 70, 0, 1, 1, 1177),
(1178, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#4C526E,#8D92AB', 70, 0, 1, 1, 1178),
(1179, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#985A47,#D9AD90', 70, 0, 1, 1, 1179),
(1180, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#94CBD7,#DAF4FA', 70, 0, 1, 1, 1180),
(1181, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#F5779F,#F6C0C0', 70, 0, 1, 1, 1181),
(1182, 'Noob Rug', 'Noob Rug', 3, 4, 2, 3, 0.00, 'noob_rug', '#B1B400,#FFD406', 70, 0, 1, 1, 1182),
(1183, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#F38420', 70, 0, 1, 1, 1183),
(1184, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#4C526E', 70, 0, 1, 1, 1184),
(1185, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#985A47', 70, 0, 1, 1, 1185),
(1186, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#94CBD7', 70, 0, 1, 1, 1186),
(1187, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#F5779F', 70, 0, 1, 1, 1187),
(1188, 'Noob Stool', 'Noob Stool', 3, 2, 1, 1, 1.20, 'noob_stool', '#FFFFFF,#B1B400', 70, 0, 1, 1, 1188),
(1189, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#F1E93A,#F38420', 70, 0, 1, 1, 1189),
(1190, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#A5A9BC,#4C526E', 70, 0, 1, 1, 1190),
(1191, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#D9AD90,#985A47', 70, 0, 1, 1, 1191),
(1192, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#DAF4FA,#94CBD7', 70, 0, 1, 1, 1192),
(1193, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#F6C0C0,#F5779F', 70, 0, 1, 1, 1193),
(1194, 'Noob Table', 'Noob Table', 3, 1, 2, 2, 1.00, 'noob_table', '#FFFFFF,#FFD406,#B1B400', 70, 0, 1, 1, 1194),
(1195, 'Welcome Mat', 'Welcome, enjoy your stay!', 3, 4, 1, 1, 0.00, 'carpet_soft_tut', '0,0,0', 70, 0, 1, 1, 1195),
(1196, 'Window', 'Plain and simple', 5, 0, 0, 0, 0.00, 'noob_window_double', '0,0,0', 71, 0, 1, 1, 1196),
(1197, 'Small 70s Window', 'A view of the past', 5, 0, 0, 0, 0.00, 'window_70s_narrow', '0,0,0', 71, 0, 1, 1, 1197),
(1198, 'Large 70s Window', 'A view of the past', 5, 0, 0, 0, 0.00, 'window_70s_wide', '0,0,0', 71, 0, 1, 1, 1198),
(1200, 'Small Oriental Window', 'Small Oriental Window', 5, 0, 0, 0, 0.00, 'window_chinese_narrow', '0,0,0', 71, 0, 1, 1, 1200),
(1201, 'Large Oriental Window', 'Dreaming of a Chinese summer', 5, 0, 0, 0, 0.00, 'window_chinese_wide', '0,0,0', 71, 0, 1, 1, 1201),
(1202, 'Double Window', 'Double Window', 5, 0, 0, 0, 0.00, 'window_double_default', '0,0,0', 71, 0, 1, 1, 1202),
(1203, 'Golden Window', 'Golden Window', 5, 0, 0, 0, 0.00, 'window_golden', '0,0,0', 71, 0, 1, 1, 1203),
(1204, 'Grunge Window', 'Don''t get too close!', 5, 0, 0, 0, 0.00, 'window_grunge', '0,0,0', 71, 0, 1, 1, 1204),
(1205, 'Small Romantic Window', 'Small Romantic Window', 5, 0, 0, 0, 0.00, 'window_romantic_narrow', '0,0,0', 71, 0, 1, 1, 1205),
(1206, 'Large Romantic Window', 'Heavenly scent of flowers', 5, 0, 0, 0, 0.00, 'window_romantic_wide', '0,0,0', 71, 0, 1, 1, 1206),
(1207, 'Single Window', 'A simple view', 5, 0, 0, 0, 0.00, 'window_single_default', '0,0,0', 71, 0, 1, 1, 1207),
(1208, 'Square Window', 'Square Window', 5, 0, 0, 0, 0.00, 'window_square', '0,0,0', 71, 0, 1, 1, 1208),
(1209, 'Triple Window', 'Triple Window', 5, 0, 0, 0, 0.00, 'window_triple', '0,0,0', 71, 0, 1, 1, 1209),
(1210, 'Xmas Light', 'Xmas Light', 3, 0, 0, 0, 0.00, 'xmas_light', '0,0,0', 45, 0, 1, 1, 1210),
(1211, 'Reindeer Droppings', 'Bob''s magical fertilizer', 3, 4, 1, 1, 0.00, 'christmas_poop', '0,0,0', 45, 0, 1, 1, 1211),
(1212, 'Reindeer', 'Prancer becomes Rudolph in a click!', 25, 2, 1, 2, 2.00, 'christmas_reindeer', '0,0,0', 45, 0, 1, 1, 1212),
(1213, 'Winter Sleigh', 'Ready for your Xmas cheer', 25, 2, 2, 2, 1.00, 'christmas_sleigh', '0,0,0', 45, 0, 1, 1, 1213),
(1214, 'Flashy Christmas Tree', 'The future''s bright!', 5, 1, 1, 1, 0.00, 'tree6', '0,0,0', 45, 0, 1, 1, 1214),
(1215, 'Snowy Christmas Tree', 'Walking in a winter wonderland!', 5, 1, 1, 1, 0.00, 'tree7', '0,0,0', 45, 0, 1, 1, 1215);
INSERT INTO `catalogue_items` (`tid`, `catalogue_name`, `catalogue_description`, `catalogue_cost`, `typeid`, `length`, `width`, `top`, `name_cct`, `colour`, `catalogue_id_page`, `door`, `tradeable`, `recycleable`, `catalogue_id_index`) VALUES
(1216, 'Ice Castle Gate', 'Let that icy draft out!', 5, 1, 2, 1, 0.00, 'xmas_cstl_gate', '0,0,0', 45, 1, 1, 1, 1216),
(1217, 'Ice Castle Tower', 'All I see from up here is snow!', 5, 1, 1, 1, 3.50, 'xmas_cstl_twr', '0,0,0', 45, 0, 1, 1, 1217),
(1218, 'Ice Castle Wall', 'Solid blocks of ice and snow', 5, 1, 2, 1, 3.00, 'xmas_cstl_wall', '0,0,0', 45, 0, 1, 1, 1218),
(1219, 'Lantern Bundle 2', '20 lanterns for the price of 6!', 5, 1, 1, 1, 1.00, 'xmas_icelamp', '0,0,0', 45, 0, 1, 1, 1219),
(1220, 'Snowy Maze Bundle 2', '20 x Snowy Maze Shrubbery', 5, 1, 2, 1, 0.00, 'plant_maze_snow', '0,0,0', 45, 0, 1, 1, 1220),
(1221, 'Snowy Maze Gate', 'There''s snow way through!', 5, 1, 2, 1, 0.00, 'plant_mazegate_snow', '0,0,0', 45, 1, 1, 1, 1221),
(1222, 'postbank Safe', 'Totally shatter-proof!', 5, 1, 1, 1, 0.00, 'safe_silo_pb', '0,0,0', 79, 0, 1, 1, 1222),
(1223, 'Executive Bar Desk', 'Divide the profits!', 5, 1, 1, 1, 1.00, 'exe_bardesk', '0,0,0', 83, 0, 1, 1, 1223),
(1224, 'Executive Corner Desk', 'Tuck it away', 5, 1, 1, 1, 1.00, 'exe_corner', '0,0,0', 83, 0, 1, 1, 1224),
(1225, 'Executive Sofa Chair', 'Relaxing leather comfort', 5, 2, 1, 1, 1.00, 'exe_chair', '0,0,0', 83, 0, 1, 1, 1225),
(1226, 'Executive Boss Chair', 'You''re fired!', 5, 2, 1, 1, 1.00, 'exe_chair2', '0,0,0', 83, 0, 1, 1, 1226),
(1227, 'Executive Drinks Tray', 'Give a warm welcome', 5, 1, 1, 1, 0.00, 'exe_drinks', '0,0,0', 83, 0, 1, 1, 1227),
(1228, 'Executive 3-Seater Sofa', 'Relaxing leather comfort', 5, 2, 3, 1, 1.00, 'exe_sofa', '0,0,0', 83, 0, 1, 1, 1228),
(1229, 'Executive Desk', 'Take a memo, Featherstone', 5, 1, 3, 2, 0.00, 'exe_table', '0,0,0', 83, 0, 1, 1, 1229),
(1230, 'Executive Rug', 'Please remove your shoes!', 5, 4, 3, 3, 0.00, 'exe_rug', '0,0,0', 83, 0, 1, 1, 1230),
(1231, 'Executive Glass Table', 'Turn on the light!', 4, 1, 2, 2, 0.80, 'exe_s_table', '0,0,0', 83, 0, 1, 1, 1231),
(1232, 'Power Globe', 'The power is yours!', 3, 1, 1, 1, 0.00, 'exe_globe', '0,0,0', 83, 0, 1, 1, 1232),
(1233, 'Executive Plant', '', 3, 1, 1, 1, 0.00, 'exe_plant', '0,0,0', 83, 0, 1, 1, 1233),
(1234, 'Crystal Ball', 'Gaze into the future', 3, 1, 1, 1, 0.00, 'fortune', '0,0,0', 48, 0, 1, 1, 1234),
(1235, 'Heart Shaped Box', 'One for them. Two for me!', 3, 1, 1, 1, 0.00, 'val_choco', '0,0,0', 48, 0, 1, 1, 1235),
(1236, 'Love Randomiser', 'Surprise surprise! (Cilla Black not included)', 5, 2, 4, 1, 1.00, 'val_randomizer', '0,0,0', 48, 0, 1, 1, 1236),
(1237, 'Porthole', 'Brighten up your cabin', 3, 0, 0, 0, 0.00, 'hrella_poster_1', '0,0,0', 84, 0, 1, 1, 1237),
(1238, 'Life Buoy', 'For those scary Lido moments', 3, 0, 0, 0, 0.00, 'hrella_poster_2', '0,0,0', 84, 0, 1, 1, 1238),
(1239, 'Anchor', 'Don''t drift away!', 3, 0, 0, 0, 0.00, 'hrella_poster_3', '0,0,0', 84, 0, 1, 1, 1239),
(1240, 'Grey Share Bear', 'The grey bear of affection', 3, 2, 1, 1, 0.90, 'val_teddy*1', '0,0,0', 48, 0, 1, 1, 1240),
(1241, 'Pink Share Bear', 'The pink bear of passion', 3, 2, 1, 1, 0.90, 'val_teddy*2', '#EE7EA4,#FFFFFF,#EE7EA4,#EE7EA4,#FFFFFF', 48, 0, 1, 1, 1241),
(1242, 'Green Share Bear', 'The green bear of friendship', 3, 2, 1, 1, 0.90, 'val_teddy*3', '0,0,0', 48, 0, 1, 1, 1242),
(1243, 'Brown Share Bear', 'The brown bear of naughtiness', 3, 2, 1, 1, 0.90, 'val_teddy*4', '#965014,#FFFFFF,#965014,#965014,#FFFFFF', 48, 0, 1, 1, 1243),
(1244, 'Yellow Share Bear', 'The yellow bear of understanding', 3, 2, 1, 1, 0.90, 'val_teddy*5', '0,0,0', 48, 0, 1, 1, 1244),
(1245, 'Blue Share Bear', 'The blue bear of happiness', 3, 2, 1, 1, 0.90, 'val_teddy*6', '#ABD0D2,#FFFFFF,#ABD0D2,#ABD0D2,#FFFFFF', 48, 0, 1, 1, 1245),
(1246, 'Sand Castle Gate', 'Sand Gate', 5, 1, 2, 1, 0.00, 'sand_cstl_gate', '0,0,0', 67, 1, 1, 1, 1246),
(1247, 'Sand Castle Tower', 'Sand Tower', 5, 1, 1, 1, 3.50, 'sand_cstl_twr', '0,0,0', 67, 0, 1, 1, 1247),
(1248, 'Sand Castle Wall', 'Sand Wall', 5, 1, 2, 1, 3.00, 'sand_cstl_wall', '0,0,0', 67, 0, 1, 1, 1248),
(1249, 'Aqua Deck Chair', 'Got your swimming trunks?', 5, 2, 1, 1, 1.20, 'summer_chair*1', '#ffffff,#ffffff,#ffffff,#ffffff,#ABD0D2', 67, 0, 1, 1, 1249),
(1250, 'Pink Deck Chair', 'Pink', 5, 2, 1, 1, 1.20, 'summer_chair*2', '#ffffff,#ffffff,#ffffff,#ffffff,#FF99BC', 67, 0, 1, 1, 1250),
(1251, 'Black Deck Chair', 'Black', 5, 2, 1, 1, 1.20, 'summer_chair*3', '#ffffff,#ffffff,#ffffff,#ffffff,#525252', 67, 0, 1, 1, 1251),
(1252, 'White Deck Chair', 'White', 5, 2, 1, 1, 1.20, 'summer_chair*4', '#ffffff,#ffffff,#ffffff,#FFFFFF,#ffffff', 67, 0, 1, 1, 1252),
(1253, 'Beige Deck Chair', 'Beige', 5, 2, 1, 1, 1.20, 'summer_chair*5', '#ffffff,#ffffff,#ffffff,#ffffff,#F7EBBC', 67, 0, 1, 1, 1253),
(1254, 'Blue Deck Chaire', 'Blue', 5, 2, 1, 1, 1.20, 'summer_chair*6', '#ffffff,#ffffff,#ffffff,#ffffff,#5EAAF8', 67, 0, 1, 1, 1254),
(1255, 'Green Deck Chair', 'Reserved!', 5, 2, 1, 1, 1.20, 'summer_chair*7', '#ffffff,#ffffff,#ffffff,#ffffff,#92D13D', 67, 0, 1, 1, 1255),
(1256, 'Yellow Deck Chair', 'Got your sun cream?', 5, 2, 1, 1, 1.20, 'summer_chair*8', '#ffffff,#ffffff,#ffffff,#ffffff,#FFD837', 67, 0, 1, 1, 1256),
(1257, 'Red Deck Chair', 'Got your sunglasses?', 5, 2, 1, 1, 1.20, 'summer_chair*9', '#ffffff,#ffffff,#ffffff,#ffffff,#E14218', 67, 0, 1, 1, 1257),
(1258, 'Blue Barbeque Grill', 'Plenty of ribs on that barbie', 10, 2, 2, 1, 0.00, 'summer_grill*1', '#ffffff,#5EAAF8,#ffffff,#ffffff,#5EAAF8,#5EAAF8,#5EAAF8', 67, 0, 1, 1, 1258),
(1259, 'Red Barbeque Grill', 'Plenty of shrimp on that barbie', 10, 2, 2, 1, 0.00, 'summer_grill*2', '#ffffff,#E14218,#ffffff,#ffffff,#E14218,#E14218,#E14218', 67, 0, 1, 1, 1259),
(1260, 'Yellow Barbeque Grill', 'Plenty of steak on that barbie', 10, 2, 2, 1, 0.00, 'summer_grill*3', '#ffffff,#92D13D,#ffffff,#ffffff,#92D13D,#92D13D,#92D13D', 67, 0, 1, 1, 1260),
(1261, 'Green Barbeque Grill', 'Plenty of burgers on that barbie', 10, 2, 2, 1, 0.00, 'summer_grill*4', '#ffffff,#FFD837,#ffffff,#ffffff,#FFD837,#FFD837,#FFD837', 67, 0, 1, 1, 1261),
(1262, 'Spiderwick Desk', '"Their world is closer than you think"', 3, 1, 1, 2, 0.00, 'sw_table', '0,0,0', 81, 0, 1, 1, 1262),
(1263, 'Swords', '"Click clack watch your back"', 3, 0, 0, 0, 0.00, 'sw_swords', '0,0,0', 81, 0, 1, 1, 1263),
(1264, 'Seeing Stone', 'Reveal the unseen world', 3, 0, 0, 0, 0.00, 'sw_stone', '0,0,0', 81, 0, 1, 1, 1264),
(1265, 'Raven', '"Nevermore"', 3, 1, 1, 1, 1.00, 'sw_raven', '0,0,0', 81, 0, 1, 1, 1265),
(1266, 'Hole', 'Where does it lead?', 3, 0, 0, 0, 0.00, 'sw_hole', '0,0,0', 81, 0, 1, 1, 1266),
(1267, 'Chest', 'The perfect hiding place', 3, 1, 1, 2, 1.00, 'sw_chest', '0,0,0', 81, 0, 1, 1, 1267),
(1268, 'HC Katana Red', 'Essential chopping!', 3, 1, 1, 1, 1.00, 'jp_katana1', '0,0,0', 25, 0, 1, 1, 1268),
(1269, 'Katana Blue', 'Let''s get chopping!', 3, 1, 1, 1, 1.00, 'jp_katana2', '0,0,0', 25, 0, 1, 1, 1269),
(1270, 'Katana Green', 'Hurry! Chop chop!', 3, 1, 1, 1, 1.00, 'jp_katana3', '0,0,0', 25, 0, 1, 1, 1270),
(1271, 'Chabu Dai', 'Japanese coffee table', 3, 1, 2, 2, 0.80, 'jp_table', '0,0,0', 25, 0, 1, 1, 1271),
(1272, 'Shishi Odishi', 'Traditional Japanese water ornament', 3, 4, 2, 2, 0.00, 'jp_rare', '0,0,0', 25, 0, 1, 1, 1272),
(1273, 'Jukebox Pacha TV', 'Jukebox Pacha TV', 25, 1, 1, 1, 0.00, 'jukebox_ptv*1', '0,0,0', 79, 0, 1, 1, 1273),
(1274, 'Calippo icecream machine', 'Basic model', 25, 1, 1, 1, 0.00, 'calippo', '0,0,0', 79, 0, 1, 1, 1274),
(1275, 'Nouvelle', 'Nouvelle Trax', 25, 1, 1, 1, 0.00, 'nouvelle_trax', '0,0,0', 79, 0, 1, 1, 1275),
(1276, 'Bubble Juice Can', 'Enough bubbling juice for one evening', 3, 0, 0, 0, 0.00, 'md_can', '0,0,0', 79, 0, 1, 1, 1276),
(1277, 'Bubble Juice Logo', 'Bubble up your wall', 3, 0, 0, 0, 0.00, 'md_logo_wall', '0,0,0', 79, 0, 1, 1, 1277),
(1278, 'Bubble Juice Floor', 'Bubbles under your steps', 3, 4, 4, 4, 1.00, 'md_rug', '0,0,0', 79, 0, 1, 1, 1278),
(1279, 'Moon Lamp', 'Light your space', 3, 1, 1, 1, 1.00, 'rclr_lamp', '0,0,0', 84, 0, 1, 1, 1279),
(1280, 'Sound 53', 'Sound 53', 5, 1, 1, 1, 0.20, 'sound_set_53', '0,0,0', 45, 0, 1, 1, 1280),
(1281, 'Sound 54', 'Sound 54', 5, 1, 1, 1, 0.20, 'sound_set_54', '0,0,0', 45, 0, 1, 1, 1281),
(1282, 'Japanese Teamaker', 'Makes a steaming brew!', 3, 1, 1, 1, 0.00, 'jp_teamaker', '0,0,0', 25, 0, 1, 1, 1282),
(1283, 'Empty Tray', 'That was tasty!', 3, 1, 1, 1, 0.00, 'tiki_tray0', '0,0,0', 74, 0, 1, 1, 1283),
(1284, 'Tiki Fruit Tray', 'Refreshing!', 3, 1, 1, 1, 0.00, 'tiki_tray1', '0,0,0', 74, 0, 1, 1, 1284),
(1285, 'Tiki Pineapple Plate', 'Fresh and juicy!', 3, 1, 1, 1, 0.00, 'tiki_tray2', '0,0,0', 74, 0, 1, 1, 1285),
(1286, 'Tiki Fish Tray', 'Freshly caught and BBQ''d!', 3, 1, 1, 1, 0.00, 'tiki_tray3', '0,0,0', 74, 0, 1, 1, 1286),
(1287, 'Tiki Pig Tray', 'Slow roastet pig head', 3, 1, 1, 1, 0.00, 'tiki_tray4', '0,0,0', 74, 0, 1, 1, 1287),
(1288, 'Lucky Bamboo', 'Starter Furni', 3, 1, 1, 1, 0.00, 'noob_plant', '0,0,0', 74, 0, 1, 1, 1288),
(1289, 'Tampax Poster', 'Old campaign product.', 3, 0, 0, 0, 0.00, 'tampax_wall', '0,0,0', 79, 0, 1, 1, 1289),
(1290, 'Tampax Rug', 'Old campaign product.', 3, 4, 3, 4, 0.00, 'tampax_rug', '0,0,0', 79, 0, 1, 1, 1290),
(1291, 'Jungle Wallplant', 'Dense jungle ahead!', 3, 0, 3, 3, 0.00, 'tiki_wallplnt', '0,0,0', 74, 0, 1, 1, 1291),
(1292, 'Tiki Bar Desk', 'Serving up Summer', 3, 1, 1, 1, 1.00, 'tiki_bardesk', '0,0,0', 74, 0, 1, 1, 1292),
(1293, 'Tiki Bar Stool', 'Sit back and relax!', 3, 2, 1, 1, 1.00, 'tiki_bench', '0,0,0', 74, 0, 1, 1, 1293),
(1294, 'Butterflies', 'Get your island beauties', 3, 4, 1, 1, 0.00, 'tiki_bflies', '0,0,0', 74, 0, 1, 1, 1294),
(1295, 'Jungle Patch', 'Bring your machete', 3, 4, 2, 2, 0.00, 'tiki_junglerug', '0,0,0', 74, 0, 1, 1, 1295),
(1296, 'Tiki Parasol', 'Funky party lighting', 3, 1, 1, 1, 0.00, 'tiki_parasol', '0,0,0', 74, 0, 1, 1, 1296),
(1297, 'Island Sand Patch', 'Life''s a beach!', 3, 4, 2, 2, 0.00, 'tiki_sand', '0,0,0', 74, 0, 1, 1, 1297),
(1298, 'Tribal Statue', 'Burn baby burn.. tiki inferno', 3, 1, 1, 1, 0.00, 'tiki_statue', '0,0,0', 74, 0, 1, 1, 1298),
(1299, 'Beach Torch                ', 'Lighting the way', 3, 1, 1, 1, 0.00, 'tiki_torch', '0,0,0', 74, 0, 1, 1, 1299),
(1300, 'Toucan', 'Ermm... *pecks*', 3, 1, 1, 1, 0.00, 'tiki_toucan', '0,0,0', 74, 0, 1, 1, 1300),
(1301, 'Tiki Waterfall', 'Fresh mountain water', 3, 1, 3, 2, 0.00, 'tiki_waterfall', '0,0,0', 74, 0, 1, 1, 1301),
(1302, 'Surfboard', 'Ride the waves dude!', 3, 0, 1, 1, 0.00, 'tiki_surfboard', '0,0,0', 74, 0, 1, 1, 1302),
(1303, 'Tiki Bar Corner', 'Nothing says a bar like a corner?', 3, 1, 1, 1, 1.00, 'tiki_corner', '0,0,0', 74, 0, 1, 1, 1303),
(1329, 'Diner Shaker', 'So cool it''s shaking!', 15, 1, 1, 1, 0.00, 'diner_shaker', '0,0,0', 78, 0, 0, 0, 1329),
(1332, 'Diner Floor', 'Shiny polished finish', 3, 4, 2, 2, 0.00, 'diner_rug', '0,0,0', 78, 0, 1, 1, 1332),
(1333, 'Dwarf', 'Oktober 2008', 15, 1, 1, 1, 0.00, 'svnr_de', '0,0,0', 82, 0, 1, 1, 1333),
(1334, 'Big Ben', 'September 2008', 15, 1, 1, 1, 0.00, 'svnr_uk', '0,0,0', 82, 0, 1, 1, 1334),
(1335, 'Gondola', 'July 2008', 15, 2, 2, 1, 1.20, 'svnr_it', '0,0,0', 82, 0, 1, 1, 1335),
(1481, 'Dutch Clog', 'August 2008', 15, 2, 1, 2, 0.00, 'svnr_nl', '0,0,0', 82, 0, 1, 1, 1481),
(1337, 'Empty Plate', 'Mom always said, "Clean your plate!"', 5, 1, 1, 1, 0.00, 'diner_tray_0', '0,0,0', 78, 0, 1, 1, 1337),
(1338, 'Plate with hamburger', 'Burger and Fries: nothing beats this classic!', 5, 1, 1, 1, 0.00, 'diner_tray_1', '0,0,0', 78, 0, 1, 1, 1338),
(1339, 'Plate with steak', 'The house special. Make sure to eat your veggies!', 5, 1, 1, 1, 0.00, 'diner_tray_2', '0,0,0', 78, 0, 1, 1, 1339),
(1340, 'Plate with spaghetti', 'Spaghetti and meatballs: an Italian Diner treat!', 5, 1, 1, 1, 0.00, 'diner_tray_3', '0,0,0', 78, 0, 1, 1, 1340),
(1341, 'Plate with pancakes', 'A stack of flapjacks makes for a hearty breakfast!', 5, 1, 1, 1, 0.00, 'diner_tray_4', '0,0,0', 78, 0, 1, 1, 1341),
(1342, 'Plate with bacon and eggs', 'Sunny side up or scrambled?', 5, 1, 1, 1, 0.00, 'diner_tray_5', '0,0,0', 78, 0, 1, 1, 1342),
(1343, 'Plate with milkshakes', 'Pretty please with a cherry on top!', 5, 1, 1, 1, 0.00, 'diner_tray_6', '0,0,0', 78, 0, 1, 1, 1343),
(1344, 'Plate with ketchup and mustard', 'Diner table standards.', 5, 1, 1, 1, 0.00, 'diner_tray_7', '0,0,0', 78, 0, 1, 1, 1344),
(1346, 'Sunny Delight', 'Sunny Delight', 5, 0, 1, 1, 0.00, 'ads_sunnyd', '0,0,0', 79, 0, 1, 1, 1345),
(1349, 'Sound set 67', '', 5, 1, 1, 1, 0.20, 'sound_set_67', '0,0,0', 42, 0, 1, 1, 1349),
(1354, 'Sound set 66', '', 5, 1, 1, 1, 0.20, 'sound_set_66', '0,0,0', 42, 0, 1, 1, 1354),
(1360, 'Koala', 'Offical not released jet.', 5, 1, 1, 1, 0.00, 'svnr_aus', '0,0,0', 82, 0, 1, 1, 1360),
(1348, 'Sound set 65', '', 5, 1, 1, 1, 0.20, 'sound_set_65', '0,0,0', 42, 0, 1, 1, 1349),
(1351, 'Sound set 68', '', 5, 1, 1, 1, 0.20, 'sound_set_68', '0,0,0', 42, 0, 1, 1, 1351),
(1352, 'Sound set 69', '', 5, 1, 1, 1, 0.20, 'sound_set_69', '0,0,0', 42, 0, 1, 1, 1352),
(1353, 'Sound set 70', '', 5, 1, 1, 1, 0.20, 'sound_set_70', '0,0,0', 42, 0, 1, 1, 1353),
(1355, 'Traxdisc', 'Burn, baby burn', 1, 1, 1, 1, 0.20, 'song_disk', '0,0,0', -1, 0, 1, 1, 1355),
(1413, 'Red Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*9', '#FFFFFF,#E14218,#FFFFFF,#E14218', 78, 0, 1, 1, 1413),
(1358, 'Large Diner Window', 'Panoramic view of America', 5, 0, 0, 0, 0.00, 'window_diner', '0,0,0', 71, 0, 1, 1, 1358),
(1359, 'Small Diner Window', 'Good grub, good view!', 5, 0, 0, 0, 0.00, 'window_diner2', '0,0,0', 71, 0, 1, 1, 1359),
(1412, 'Pink Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*2', '#FFFFFF,#FF99BC,#FFFFFF,#FF99BC', 78, 0, 1, 1, 1412),
(1411, 'Green Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*7', '#FFFFFF,#92D13D,#FFFFFF,#92D13D', 78, 0, 1, 1, 1411),
(1365, 'Meet Dave cns', 'Old campaign product.', 5, 1, 1, 1, 0.00, 'ads_dave_cns', '0,0,0', 79, 0, 1, 1, 1365),
(1366, 'Meet Dave Poster', 'Old campaign product.', 5, 0, 0, 0, 0.00, 'ads_dave_wall', '0,0,0', 79, 0, 1, 1, 1366),
(1367, 'Diner Side Table', 'Attaches to the wall', 5, 0, 0, 0, 0.00, 'diner_walltable', '0,0,0', 78, 0, 1, 1, 1367),
(1409, 'Blue Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*6', '#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1409),
(1410, 'Latte Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*5', '#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1410),
(1371, 'Calippo Icecream Machine', 'Basic model', 25, 1, 1, 1, 0.00, 'calippo', '0,0,0', 6, 0, 1, 1, 1371),
(1372, '', '', 0, 1, 1, 1, 1.00, 'present_gen1', '', -1, 0, 0, 0, 1372),
(1373, '', '', 0, 1, 1, 1, 1.00, 'present_gen2', '', -1, 0, 0, 0, 1373),
(1374, '', '', 0, 1, 1, 1, 1.00, 'present_gen3', '', -1, 0, 0, 0, 1374),
(1375, '', '', 0, 1, 1, 1, 1.00, 'present_gen4', '', -1, 0, 0, 0, 1375),
(1376, '', '', 0, 1, 1, 1, 1.00, 'present_gen5', '', -1, 0, 0, 0, 1376),
(1377, '', '', 0, 1, 1, 1, 1.00, 'present_gen6', '', -1, 0, 0, 0, 1377),
(1378, 'Greek Corner', 'Tuck it Away!', 5, 1, 1, 1, 3.00, 'greek_corner', '0,0,0', 80, 0, 1, 1, 1378),
(1379, 'Greek Gate', 'Enter mortal, exit immortal!', 5, 1, 2, 1, 0.00, 'greek_gate', '0,0,0', 80, 1, 1, 1, 1379),
(1380, 'Greek Pillars', 'Architectural splendor!', 5, 1, 2, 1, 3.00, 'greek_pillars', '0,0,0', 80, 0, 1, 1, 1380),
(1381, 'Greek Seat', 'Park your bot on this stone slab!', 5, 4, 1, 1, 0.00, 'greek_seat', '0,0,0', 80, 0, 1, 1, 1381),
(1382, 'Greek Trophy', 'Breathtaking bronze', 5, 1, 1, 1, 0.00, 'greektrophy*1', '#ffffff,#ffffff,#FFDD3F', 44, 0, 1, 1, 1382),
(1383, 'Greek Trophy', 'Shiny silver', 5, 1, 1, 1, 0.00, 'greektrophy*2', '#ffffff,#ffffff,#ffffff', 44, 0, 1, 1, 1383),
(1384, 'Greek Trophy', 'Glittery Gold', 5, 1, 1, 1, 0.00, 'greektrophy*3', '#ffffff,#ffffff,#996600', 44, 0, 1, 1, 1384),
(1385, 'Easy Bowl', 'Easy mac promotion', 5, 1, 1, 1, 0.00, 'easy_bowl2', '0,0,0', 79, 0, 1, 1, 1385),
(1386, 'Easy Carpet', 'Easy mac promotion', 5, 4, 4, 4, 1.00, 'easy_carpet', '0,0,0', 79, 0, 1, 1, 1386),
(1387, 'Easy Poster', 'Easy mac promotion', 5, 0, 0, 0, 0.00, 'easy_poster', '0,0,0', 79, 0, 1, 1, 1387),
(1388, 'Nokia Logo', 'Old campaign product.', 5, 0, 0, 0, 0.00, 'ads_nokia_logo', '0,0,0', 79, 0, 1, 1, 1388),
(1389, 'Nokia', 'Old campaign product.', 5, 0, 0, 0, 0.00, 'ads_nokia_phone', '0,0,0', 79, 0, 1, 1, 1389),
(1390, 'Hole', 'Wow a hole!', 5, 0, 0, 0, 0.00, 'window_hole', '0,0,0', 71, 0, 1, 1, 1390),
(1391, 'Greek Block', 'For only yourself!', 5, 2, 2, 1, 1.00, 'greek_block', '', 80, 0, 0, 0, 1391),
(1392, 'landscape 1', 'landscape 1', 15, 0, 0, 0, 0.00, 'landscape 1', '', 7, 0, 0, 0, 1392),
(1393, 'landscape 2', 'landscape 2', 15, 0, 0, 0, 0.00, 'landscape 2', '', 7, 0, 0, 0, 1393),
(1394, 'landscape 3', 'landscape 3', 15, 0, 0, 0, 0.00, 'landscape 3', '', 7, 0, 0, 0, 1394),
(1395, 'landscape 4', 'landscape 4', 15, 0, 0, 0, 0.00, 'landscape 4', '', 7, 0, 0, 0, 1395),
(1396, 'landscape 5', 'landscape 5', 15, 0, 0, 0, 0.00, 'landscape 5', '', 7, 0, 0, 0, 1396),
(1397, 'landscape 6', 'landscape 6', 15, 0, 0, 0, 0.00, 'landscape 6', '', 7, 0, 0, 0, 1397),
(1398, 'landscape 7', 'landscape 7', 15, 0, 0, 0, 0.00, 'landscape 7', '', 7, 0, 0, 0, 1398),
(1399, 'landscape 8', 'landscape 8', 15, 0, 0, 0, 0.00, 'landscape 8', '', 7, 0, 0, 0, 1399),
(1480, 'Skycraper Window', 'Dizzy Heights!', 5, 0, 0, 0, 0.00, 'window_skyscraper', '0,0,0', 71, 0, 1, 1, 1480),
(1414, 'Yellow Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*8', '#FFFFFF,#FFD837,#FFFFFF,#FFD837', 78, 0, 1, 1, 1414),
(1415, 'White Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1415),
(1416, 'Aqua Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 0, 1416),
(1417, 'Blue Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 0, 1417),
(1418, 'Latte Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 0, 1418),
(1419, 'Green Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*7', '#FFFFFF,#92D13D', 78, 0, 1, 0, 1419),
(1420, 'Pink Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*2', '#FFFFFF,#FF99BC', 78, 0, 1, 0, 1420),
(1421, 'Red Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*9', '#FFFFFF,#E14218', 78, 0, 1, 0, 1421),
(1422, 'Yellow Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*8', '#FFFFFF,#FFD837', 78, 0, 1, 0, 1422),
(1423, 'White Gumball Machine', 'Fruity bubbly goodness', 5, 1, 1, 1, 0.00, 'diner_gumvendor*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 0, 1423),
(1424, 'Aqua Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1424),
(1425, 'Blue Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1425),
(1426, 'Latte Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1426),
(1427, 'Green Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*7', '#FFFFFF,#92D13D', 78, 0, 1, 1, 1427),
(1428, 'Pink Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*2', '#FFFFFF,#FF99BC', 78, 0, 1, 1, 1428),
(1429, 'Red Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*9', '#FFFFFF,#E14218', 78, 0, 1, 1, 1429),
(1430, 'Yellow Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*8', '#FFFFFF,#FFD837', 78, 0, 1, 1, 1430),
(1431, 'White Diner Booth Table', 'Ready to order?', 5, 1, 2, 2, 1.00, 'diner_table_1*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1431),
(1432, 'Aqua Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*1', '#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1432),
(1433, 'Blue Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*6', '#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1433),
(1434, 'Latte Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*5', '#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1434),
(1435, 'Green Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*7', '#FFFFFF,#92D13D,#FFFFFF,#92D13D,#FFFFFF,#92D13D,#FFFFFF,#92D13D', 78, 0, 1, 1, 1435),
(1436, 'Pink Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*2', '#FFFFFF,#FF99BC,#FFFFFF,#FF99BC,#FFFFFF,#FF99BC,#FFFFFF,#FF99BC', 78, 0, 1, 1, 1436),
(1437, 'Red Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*9', '#FFFFFF,#E14218,#FFFFFF,#E14218,#FFFFFF,#E14218,#FFFFFF,#E14218', 78, 0, 1, 1, 1437),
(1438, 'Yellow Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*8', '#FFFFFF,#FFD837,#FFFFFF,#FFD837,#FFFFFF,#FFD837,#FFFFFF,#FFD837', 78, 0, 1, 1, 1438),
(1439, 'White Diner Table', 'Enjoy your meal!', 5, 1, 3, 2, 1.00, 'diner_table_2*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1439),
(1440, 'Aqua Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1440),
(1441, 'Blue Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1441),
(1442, 'Latte Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1442),
(1443, 'Green Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*7', '#FFFFFF,#92D13D', 78, 0, 1, 1, 1443),
(1444, 'Pink Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*2', '#FFFFFF,#FF99BC', 78, 0, 1, 1, 1444),
(1445, 'Red Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*9', '#FFFFFF,#E14218', 78, 0, 1, 1, 1445),
(1446, 'Yellow Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*8', '#FFFFFF,#FFD837', 78, 0, 1, 1, 1446),
(1447, 'White Diner Bar', 'Pull up a stool!', 5, 1, 1, 1, 1.00, 'diner_bardesk*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1447),
(1448, 'Aqua Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1448),
(1449, 'Blue Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1449),
(1450, 'Latte Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1450),
(1451, 'Green Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*7', '#FFFFFF,#92D13D', 78, 0, 1, 1, 1451),
(1452, 'Pink Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*2', '#FFFFFF,#FF99BC', 78, 0, 1, 1, 1452),
(1453, 'Red Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*9', '#FFFFFF,#E14218', 78, 0, 1, 1, 1453),
(1408, 'Aqua Diner Sofa 1', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_1*1', '#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1408),
(1407, 'White Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1407),
(1406, 'Yellow Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*8', '#FFFFFF,#FFD837,#FFFFFF,#FFD837', 78, 0, 1, 1, 1406),
(1405, 'Red Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*9', '#FFFFFF,#E14218,#FFFFFF,#E14218', 78, 0, 1, 1, 1405),
(1404, 'Pink Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*2', '#FFFFFF,#FF99BC,#FFFFFF,#FF99BC', 78, 0, 1, 1, 1404),
(1403, 'Green Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*7', '#FFFFFF,#92D13D,#FFFFFF,#92D13D', 78, 0, 1, 1, 1403),
(1402, 'Latte Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*5', '#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1402),
(1401, 'Blue Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*6', '#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1401),
(1400, 'Aqua Diner Sofa 2', 'Soft leather in 50s design', 5, 2, 1, 1, 1.20, 'diner_sofa_2*1', '#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1400),
(1454, 'Yellow Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*8', '#FFFFFF,#FFD837', 78, 0, 1, 1, 1454),
(1455, 'White Diner Corner', 'Now thats smooth...', 3, 1, 1, 1, 1.00, 'diner_bardesk_corner*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1455),
(1456, 'Aqua Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*1', '#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2,#FFFFFF,#ABD0D2', 78, 1, 1, 1, 1456),
(1457, 'Blue Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*6', '#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8,#FFFFFF,#5EAAF8', 78, 1, 1, 1, 1457),
(1458, 'Latte Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*5', '#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC,#FFFFFF,#F7EBBC', 78, 1, 1, 1, 1458),
(1459, 'Green Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*7', '#FFFFFF,#92D13D,#FFFFFF,#92D13D,#FFFFFF,#92D13D', 78, 1, 1, 1, 1459),
(1460, 'Pink Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*2', '#FFFFFF,#FF99BC,#FFFFFF,#FF99BC,#FFFFFF,#FF99BC', 78, 1, 1, 1, 1460),
(1461, 'Red Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*9', '#FFFFFF,#E14218,#FFFFFF,#E14218,#FFFFFF,#E14218', 78, 1, 1, 1, 1461),
(1462, 'Yellow Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*8', '#FFFFFF,#FFD837,#FFFFFF,#FFD837,#FFFFFF,#FFD837', 78, 1, 1, 1, 1462),
(1463, 'White Diner Gate', 'Working 9 to 5', 3, 1, 1, 1, 1.00, 'diner_bardesk_gate*4', '#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF', 78, 1, 1, 1, 1463),
(1464, 'Aqua Diner Stool', 'Perch in comfort', 3, 2, 1, 1, 1.40, 'diner_chair*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1464),
(1465, 'Blue Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1465),
(1466, 'Latte Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1466),
(1467, 'Green Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*7', '#FFFFFF,#92D13D', 78, 0, 1, 1, 1467),
(1468, 'Pink Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*2', '#FFFFFF,#FF99BC', 78, 0, 1, 1, 1468),
(1469, 'Red Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*9', '#FFFFFF,#E14218', 78, 0, 1, 1, 1469),
(1470, 'Yellow Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*8', '#FFFFFF,#FFD837', 78, 0, 1, 1, 1470),
(1471, 'White Diner Stool', 'Perch in comfort', 5, 2, 1, 1, 1.40, 'diner_chair*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1471),
(1472, 'Aqua Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*1', '#FFFFFF,#ABD0D2', 78, 0, 1, 1, 1472),
(1473, 'Blue Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*6', '#FFFFFF,#5EAAF8', 78, 0, 1, 1, 1473),
(1474, 'Latte Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*5', '#FFFFFF,#F7EBBC', 78, 0, 1, 1, 1474),
(1475, 'Green Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*7', '#FFFFFF,#92D13D', 78, 0, 1, 1, 1475),
(1476, 'Pink Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*2', '#FFFFFF,#FF99BC', 78, 0, 1, 1, 1476),
(1477, 'Red Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*9', '#FFFFFF,#E14218', 78, 0, 1, 1, 1477),
(1478, 'Yellow Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*8', '#FFFFFF,#FFD837', 78, 0, 1, 1, 1478),
(1479, 'White Diner Till', 'Roll up roll up!', 5, 1, 1, 1, 0.00, 'diner_cashreg*4', '#FFFFFF,#FFFFFF', 78, 0, 1, 1, 1479),
(1482, 'HC Chair', 'HC Shop Exclusive Chair', 2, 2, 1, 1, 1.10, 'hcc_chair', '0,0,0', 55, 0, 1, 1, 1482),
(278, 'Bronze Coin (China)', 'Worth 10 Credits', 10, 1, 1, 1, 0.15, 'CFC_10_coin_bronze', '0,0,0', 22, 0, 1, 1, 278),
(279, 'Silver Coin (China)', 'Worth 50 Credits', 50, 1, 1, 1, 0.15, 'CFC_50_coin_silver', '0,0,0', 22, 0, 1, 1, 279),
(280, 'Gold Coin (China)', 'Worth 100 Credits', 100, 1, 1, 1, 0.15, 'CFC_100_coin_gold', '0,0,0', 22, 0, 1, 1, 280),
(281, 'Sack of Credits (China)', 'Worth 200 Credits', 200, 1, 1, 1, 1.00, 'CFC_200_moneybag', '0,0,0', 22, 0, 1, 1, 281),
(282, 'Gold Bar (China)', 'Worth 500 Credits', 500, 1, 1, 1, 0.40, 'CFC_500_goldbar', '0,0,0', 22, 0, 1, 1, 282),
(1483, 'HC Table', 'HC Shop Exclusive Table', 3, 1, 1, 2, 1.10, 'hcc_table', '', 55, 0, 1, 1, 1483),
(1484, 'HC Sofa', 'HC Shop Exclusive Sofa', 4, 2, 2, 1, 1.30, 'hcc_sofa', '0,0,0', 55, 0, 1, 1, 1484),
(1485, 'HC Sofachair', 'HC Shop Exclusive Sofachair', 5, 2, 1, 1, 1.30, 'hcc_sofachair', '0,0,0', 55, 0, 1, 1, 1485),
(1486, 'HC Shelf', 'HC Shop Exclusive Shelf', 3, 1, 1, 2, 2.40, 'hcc_shelf', '0,0,0', 55, 0, 1, 1, 1486),
(1487, 'HC Stool', 'HC Shop Exclusive Stool', 2, 2, 1, 1, 1.30, 'hcc_stool', '0,0,0', 55, 0, 1, 1, 1487),
(1488, 'HC Minibar', 'HC Shop Exclusive Minibar', 4, 1, 1, 1, 1.80, 'hcc_minibar', '0,0,0', 55, 0, 1, 1, 1488);

-- --------------------------------------------------------

--
-- Table structure for table `catalogue_pages`
--

CREATE TABLE IF NOT EXISTS `catalogue_pages` (
  `indexid` tinyint(3) NOT NULL,
  `minrank` tinyint(1) NOT NULL,
  `indexname` varchar(100) collate latin1_general_ci NOT NULL,
  `displayname` varchar(100) collate latin1_general_ci NOT NULL,
  `style_layout` varchar(100) collate latin1_general_ci NOT NULL,
  `img_header` varchar(100) collate latin1_general_ci default NULL,
  `img_side` text collate latin1_general_ci,
  `label_description` text collate latin1_general_ci,
  `label_misc` text collate latin1_general_ci,
  `label_moredetails` varchar(150) collate latin1_general_ci default NULL,
  `opt_bodyreplace` text collate latin1_general_ci,
  PRIMARY KEY  (`indexid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `catalogue_pages`
--

INSERT INTO `catalogue_pages` (`indexid`, `minrank`, `indexname`, `displayname`, `style_layout`, `img_header`, `img_side`, `label_description`, `label_misc`, `label_moredetails`, `opt_bodyreplace`) VALUES
(81, 1, 'Spiderwick', 'Spiderwick', 'ctlg_layout2', 'catalog_spw_header2', 'catalog_spw_teaser2,', 'Goblins, Spirets and Ogres oh my! Unleash the magic of The Spiderwick Choronicles in your very own room.', '', 'Click on the item you want for more information.', 'NULL'),
(5, 7, 'no rares', 'Rare', 'ctlg_norares', 'catalog_rares_headline1', 'ctlg_norare_char1,', 'There isn''t a rare item to buy at the moment, but it''s coming soon! Please don''t email us about it - we''re keeping it secret...<br>', '', '', NULL),
(6, 1, 'Rare', 'Rare', 'ctlg_productpage1', 'catalog_rares_headline1', '', 'It''s Spring, and it''s the best time to stock up on Parasols! Go get your Green Parasol Now!:', 's:Only for 2 weeks!!!', '', NULL),
(7, 1, 'Spaces', 'Spaces', 'ctlg_spaces', 'catalog_spaces_headline1', NULL, 'Are your walls looking a little grey?  What you need is a splash of paint and this is the place to get it!  <br><br>A splash of colour on the walls and a nice carpet can make all the difference. Use our virtual room below to test out the combinations before you buy.', 't1:Wall\r\nt2:Floor\r\nt3:Pattern\r\nt4:Colour\r\nt5:Pattern\r\nt6:Colour\r\nt7:Preview', NULL, NULL),
(8, 1, 'Pets', 'Pets', 'ctlg_pets', 'catalog_pet_headline1', 'catalog_pets_teaser1,', 'Fluff, scales and whiskers, meows, snaps and woofs!  Anyone can have a pet on Habbo!  Select your new pet from our ever changing selection, just click to page two then click back, to see more pets!', 'u:Pets2', 'Adopt a Pet today!', NULL),
(9, 1, 'Pet Accesories', 'Pet Accesories', 'ctlg_layout2', 'catalog_pet_headline2', 'ctlg_pet_teaser1,', 'You''ll need to take care of your pet to keep it happy and healthy. This section of the Catalogue has EVERYTHING you?ll need to satisfy your pet?s needs.', 's:You''ll have to share it!', 'Click on the item you want for more information.', NULL),
(11, 1, 'Area', 'Area', 'ctlg_layout2', 'catalog_area_headline1', 'catalog_area_teaser1,', 'Introducing the Area Collection...  Clean, chunky lines set this collection apart as a preserve of the down-to-earth Habbo. It''s beautiful in its simplicity, and welcoming to everyone.', 's:2: Beautiful in it''s simplicity!', 'Click on the item you want for more information.', NULL),
(12, 1, 'Accessories', 'Accessories', 'ctlg_layout2', 'catalog_extra_headline1', 'catalog_extra_teaser1,', 'Is your room missing something?  Well, now you can add the finishing touches that express your true personality. And don''t forget, like everything else, these accessories can be moved about to suit your mood.', 's:2: I love my rabbit...', 'Click on the item you want for more information.', NULL),
(13, 1, 'Asian', 'Asian', 'ctlg_layout2', 'catalog_asian_headline1', 'catalog_asian_teaser1,', 'Dit pure haandwerk uit de eeuwenoude oosterse pixeltraditie brengt balans in elk Habbointerieur. Jin en Yang vloeien samen met Feng en Shui in een uitgebalanceerde collectie meubi. ', 's:2: Oh, look there! Is Mulan the girl of Disney xD', 'Click on the item you want for more information.', NULL),
(14, 1, 'Bathroom', 'Bathroom', 'ctlg_layout2', 'catalog_bath_headline1', 'catalog_bath_teaser1,', 'Introducing the Bathroom Collection...  Have some fun with the cheerful bathroom collection. Give yourself and your guests somewhere to freshen up - vital if you want to avoid nasty niffs. Put your loo in a corner though...', 's:2: Every Habbo needs one!', 'Click on the item you want for more information.', NULL),
(15, 1, 'Candy', 'Candy', 'ctlg_layout2', 'catalog_candy_headline1', 'catalog_candy_teaser1,', 'Introducing the Candy Collection...  Candy combines the cool, clean lines of the Mode collection with a softer, more soothing style. It''s urban sharpness with a hint of the feminine.', 's:2: Relax! It''s faux-fur.', 'Click on the item you want for more information.', NULL),
(16, 1, 'Camera', 'Camera', 'ctlg_camera1', 'catalog_camera_headline1', 'campic_cam,campic_film,', 'Take a picture and keep a record of those special moments forever.  With your Habbo camera you can take pictures of just about anything in the Hotel ? Even your friend on the loo...<br><br>A Camera costs 10 Credits (TWO FREE photos  included).', '', 't1:When you''ve used your free photos, you''ll need to buy more? Each Film (5 photos) costs 6 Credits.  <br><br>Your Camera will show how much film you ', NULL),
(17, 1, 'Flags', 'Flags', 'ctlg_layout2', 'catalog_flags_headline1', 'catalog_flags_teaser1,', 'If you''re feeling patriotic, get a flag to prove it. Our finest cloth flags will brighten up the dullest walls.', 's:2: Flag this section for later!', 'Click on the item you want for more information.', NULL),
(18, 1, 'Gallery', 'Gallery', 'ctlg_layout2', 'catalog_gallery_headline1', 'catalog_posters_teaser1,', 'Adorn your walls with wondrous works of art, posters, plaques and wall hangings. We have items to suit all tastes, from kitsch to cool, traditional to modern.', 's:2: Brighten up your walls!', 'Click on the item you want for more information.', NULL),
(19, 1, 'Glass', 'Glass', 'ctlg_layout2', 'catalog_glass_headline1', 'catalog_glass_teaser1,', 'Glass: Habbo Hotels exclusive furni line made from plexiglass, in different colors! Buy here your furni for a modern lounge!', 's:2: Oh My God, it''s transparant!', 'Click on the item you want for more information.', NULL),
(20, 1, 'Gothic', 'Gothic', 'ctlg_layout2', 'catalog_gothic_headline1', 'catalog_gothic_teaser1,', 'The Gothic section is full of medieval looking Furni. Check back for additions to this section as there are still some unreleased items to come!', 's:Gothic is my style.', 'Click on the item you want for more information.', NULL),
(21, 1, 'Grunge', 'Grunge', 'ctlg_layout2', 'catalog_gru_headline1', 'catalog_gru_teaser,', 'Introducing the Grunge Range. Alternative Habbos with alternative style or rebellious students with a point to prove. The Grunge range will get your bedroom looking just the way you like it - organised, neat and tidy!', '', 'New! Flaming Barrels out now!', NULL),
(22, 1, 'Habbo Exchange', 'Habbo Exchange', 'ctlg_layout2', 'catalog_bank_headline1', 'catalog_bank_teaser,', 'The Habbo Exchange is where you can convert your Habbo Credits into a tradable currency. You can use this tradable currency to exchange Habbo Credits for Furni!', 's:Refundable goods!', 'Click on an item to see more details', NULL),
(23, 1, 'Habbowood', 'Habbowood', 'ctlg_layout2', 'catalog_limited_headline1', 'catalog_limited_teaser1,', 'Exclusive: the new Habbowood furni, collect them all!', 's:1: Light, Camera, Action!', 'Click on the item you want for more information.', NULL),
(24, 1, 'Iced', 'Iced', 'ctlg_layout2', 'catalog_iced_headline1', 'catalog_iced_teaser1,', 'Introducing the Iced Collection...  For the Habbo who needs no introduction. It''s so chic, it says everything and nothing. It''s a blank canvas, let your imagination to run wild!', 's:2: These chairs are so comfy.', 'Click on the item you want for more information.', NULL),
(25, 1, 'Japanese', 'Japanese', 'ctlg_layout2', 'catalog_jap_headline2', 'catalog_jap_teaser3,', 'Here you can find the new Japanese furni! Get them now!', 's:1: Brand new furni!', 'Click on the item you want for more information.', NULL),
(26, 1, 'Lodge', 'Lodge', 'ctlg_layout2', 'catalog_lodge_headline1', 'catalog_lodge_teaser1,', 'Introducing the Lodge Collection...  Do you appreciate the beauty of wood?  For that ski lodge effect, or to match that open fire... Lodge is the Furni of choice for Habbos with that no frills approach to decorating.  <br>', 's:2: I LOVE this wood Furni!', 'Click on the item you want for more information.', NULL),
(27, 1, 'Mode', 'Mode', 'ctlg_layout2', 'catalog_mode_headline1', 'catalog_mode_teaser1,', 'Introducing the Mode Collection...  Steely grey functionality combined with sleek designer upholstery. The Habbo that chooses this furniture is a cool urban cat - streetwise, sassy and so slightly untouchable.', 's:2: So shiny and new...', 'Click on the item you want for more information.', NULL),
(28, 1, 'Offers', 'Offers', 'ctlg_layout2', 'catalog_deals_headline1', 'catalog_deals_teaser1,', 'Special Offers are great if you?re just starting out. Take a look at our special collections, all at a great price.<br><br>Check them out!', '', 'Click on a deal to find out what''s included and how much it costs.', NULL),
(29, 1, 'Plants', 'Plants', 'ctlg_layout2', 'catalog_plants_headline1', 'catalog_plants_teaser1,', 'New, never before seen Bulrush Plant is here for a limited time only. Buy it now!<br>Introducing the Plant Collection...  Every room needs a plant! Not only do they bring a bit of the outside inside, they also enhance the air quality!', 's:2: I am at one with the trees', 'Click on the item you want for more information.', NULL),
(30, 1, 'Plastic', 'Plastic', 'ctlg_plasto', 'catalog_plasto_headline1', NULL, 'Introducing The Plastic Collection...  Can you feel that 1970s vibe?  Decorate with Plastic and add some colour to your life. Choose a colour that reflect your mood, or just pick your favourite shade.', 't2:Select The Colour\rs:New colours!\rt3:Preview\rt1:Choose An Item', 'Select an item and a colour and buy!', NULL),
(31, 1, 'Presents', 'Presents', 'ctlg_presents', 'catalog_gifts_headline1', 'catalog_presents_teaser1,catalog_presents_teaser2,', 'Show your Habbo friends just how much you care and send them a gift from the Habbo Catalogue.  ANY Catalogue item can be sent as a gift to ANY Habbo, all you need is their Habbo name!', 't1:Buying an item as a gift couldn?to be simpler...  <br><br>Buy an item from the Catalogue in the normal way, but tick ''buy as a gift''. Tell us which Habbo you want to give the gift to and we''ll gift wrap it and deliver it straight to their hand.', '', NULL),
(32, 1, 'Pura', 'Pura', 'ctlg_layout2', 'catalog_pura_headline1', 'catalog_pura_teaser1,', 'Introducing the Pura Collection...  This collection breathes fresh, clean air and cool tranquility. The Pura Waltzer has arrived!  Check back regularly to see  new colours of Pura on sale!', '', 'Click on the item you want for more information.', NULL),
(33, 1, 'Recycler', 'Ecotron', 'ctlg_recycler', 'catalog_recycler_headline1', NULL, NULL, '', NULL, NULL),
(34, 1, 'Rollers', 'Rollers', 'ctlg_layout2', 'catalog_roller_headline1', '', 'Move your imagination, while you move your Habbo!  Perfect for mazes, games, for keeping your queue moving or making your pet go round in circles for hours.  Available in multi-packs ? the more you buy the cheaper the Roller! Pink Rollers out now!', 's:You can fit 35 Rollers in a Guest Room!', 'Click on a Roller to see more information!', NULL),
(35, 1, 'Romantique', 'Romantique', 'ctlg_layout2', 'catalog_romantique_headline1', 'catalog_rom_teaser,', 'The Romantique range features Grand Pianos, old antique lamps and tables. It is the ideal range for setting a warm and loving mood in your room. Spruce up your room and invite that special someone over. Now featuring the extra special COLOUR edition.', '', 'Click on the item you want for more information.', NULL),
(36, 1, 'Rugs', 'Rugs', 'ctlg_layout2', 'catalog_rugs_headline1', 'catalog_rugs_teaser1,', 'We have rugs for all occasions.  All rugs are non-slip and washable.', 's:2: Rugs, rugs and more rugs!', 'Click on the item you want for more information.', NULL),
(37, 1, 'Sports', 'Sport', 'ctlg_layout2', 'catalog_sports_headline1', 'catalog_sports_teaser1,', 'For the sporty habbos, here is the sports section!', NULL, 'Click on the item you want for more information.', NULL),
(38, 1, 'Teleport', 'Teleport', 'ctlg_layout2', 'catalog_doors_headline1', 'catalog_teleports_teaser2,catalog_door_c,catalog_door_b,', 'Beam your Habbo from one room to another with one of our cunningly disguised, space age teleports. Now you can link any two rooms together! Teleports are sold in pairs, so if you trade for them, check you''re getting a linked pair.', 's:Teleport!', 'Select an item by clicking one of the icons on the left.', NULL),
(39, 1, 'Trax Ambient', 'Trax Ambient', 'ctlg_soundmachine', 'catalog_trx_header1', 'catalog_trx_teaser1,', 'Welcome to the Ambient Trax Store! With groovy beats and chilled out melodies, this is the section for some cool and relaxing tunes.', NULL, NULL, NULL),
(40, 1, 'Trax Dance', 'Trax Dance', 'ctlg_soundmachine', 'catalog_trx_header2', 'catalog_trx_teaser2,', 'Welcome to the Dance Trax Store! With funky beats and catchy melodies, this is the section for every clubber  to indulge in.', NULL, NULL, NULL),
(41, 1, 'Trax Rock', 'Trax Rock', 'ctlg_soundmachine', 'catalog_trx_header3', 'catalog_trx_teaser3,', 'Welcome to the Rock Trax Store! With heavy beats and rockin'' riffs, this is the section for every rock fan to experiment with.', NULL, NULL, NULL),
(42, 1, 'Trax SFX', 'Trax SFX', 'ctlg_soundmachine', 'catalog_trx_header4', 'catalog_trx_teaser4,', 'Welcome to the SFX Trax Store! With crazy sounds and weird noises, this is the section for every creative room builder  to indulge in.', NULL, NULL, NULL),
(43, 1, 'Trax Urban', 'Trax Urban', 'ctlg_soundmachine', 'catalog_trx_header5', 'catalog_trx_teaser5,', 'Welcome to the Urban Trax Store! With hip hop beats and RnB vocals, this is the section for every city bopper  to indulge in.', NULL, NULL, NULL),
(44, 1, 'Trophies', 'Trophies', 'ctlg_trophies', 'catalog_trophies_headline1', '', 'Reward your Habbo friends, or yourself with one of our fabulous glittering array of bronze, silver and gold trophies.<br><br>First choose the trophy model (click on the arrows to see all the different styles) and then the metal (click on the seal below the trophy). Type your inscription below and we''ll engrave it on the trophy along with your name and today''s date.', 't1:Type your inscription CAREFULLY, it''s permanent!', NULL, NULL),
(45, 1, 'Christmas', 'Christmas', 'ctlg_layout2', 'catalog_xmas_headline1', 'catalog_xmas_teaser,', 'The Habbo Christmas catalogue has everything you need to make the perfect festive room: Trees, ducks with santa hats on, puddings and of course, Menorahs!', 's:2:Tuck into Christmas!', 'Click on an item to see a bigger version of it!', NULL),
(46, 1, 'Easter', 'Easter', 'ctlg_layout2', 'catalog_easter_headline1', 'catalog_easter_teaser1,', '''Egg''cellent furni - Bouncing bunnies, fluffy chicks, choccy eggs... Yep, it''s Easter! Celebrate with something ''eggs''tra special from our Easter range. But hurry - it''s not here for long this year!', 's:2: ''Egg''-Tastic!', 'Click on an item for more details.', NULL),
(47, 1, 'Halloween', 'Halloween', 'ctlg_layout2', 'catalog_halloween_headline1', 'catalog_halloween_teaser,', 'Yes, it''s a spookfest! Get your boney hands on our creepy collection of ghoulish goodies. But be quick - they''ll be gone from the Catalogue after two weeks!', 's:2:Halloween is My day!', 'Click on an item to see a bigger version of it!', NULL),
(48, 1, 'Love', 'Love', 'ctlg_layout2', 'catalog_love_headline1', 'catalog_love_teaser1,', 'The love collection has everything to create the perfect love room, for a good price!', 's:2:Oh! Comes Valentine''s Day!', 'Click on an item to see a bigger version of it!', NULL),
(49, 1, 'Area Colour', 'Area Colour', 'ctlg_layout2', 'catalog_area_headline1', 'catalog_area_teaser1,', 'Introducing the Area Collection...  Clean, chunky lines set this collection apart as a preserve of the down-to-earth Habbo. It''s beautiful in its simplicity, and welcoming to everyone.', 's:Much More Colours!!!', 'Click on the item you want for more information.', NULL),
(50, 1, 'Iced Colour', 'Iced Colour', 'ctlg_layout2', 'catalog_iced_headline1', 'catalog_iced_teaser1,', 'Introducing the Iced Collection...  For the Habbo who needs no introduction. It''s so chic, it says everything and nothing. It''s a blank canvas, let your imagination to run wild!', 's:Much More Colours!!!', 'Click on the item you want for more information.', NULL),
(51, 1, 'Mode Colour', 'Mode Colour', 'ctlg_layout2', 'catalog_mode_headline1', 'catalog_mode_teaser1,', 'Introducing the Mode Collection...  Steely grey functionality combined with sleek designer upholstery. The Habbo that chooses this furniture is a cool urban cat - streetwise, sassy and so slightly untouchable.', 's:Much More Colours!!!', 'Click on the item you want for more information.', NULL),
(52, 1, 'Pura Colour', 'Pura Colour', 'ctlg_layout2', 'catalog_pura_headline1', 'catalog_pura_teaser1,', 'Introducing the Pura Collection...  This collection breathes fresh, clean air and cool tranquility. The Pura Waltzer has arrived!  Check back regularly to see  new colours of Pura on sale!', 's:Much More Colours!!!', 'Click on the item you want for more information.', NULL),
(53, 1, 'Romantique Colour', 'Romantique Colour', 'ctlg_layout2', 'catalog_romantique_headline1', 'catalog_rom_teaser,', 'The Romantique range features Grand Pianos, old antique lamps and tables. It is the ideal range for setting a warm and loving mood in your room. Spruce up your room and invite that special someone over. Now featuring the extra special COLOUR edition.', 's:Much More Colours!!!', 'Click on the item you want for more information.', NULL),
(54, 1, 'Club Furni', 'Club Furni', 'ctlg_layout2', 'catalog_club_headline1', 'catalog_hc_teaser,', 'Welcome to the club furni page. Here you can buy any club furni for just 25 credits!', 's:For Habbo Club members only!', 'Click on an item to see more details', NULL),
(55, 1, 'Club Shop', 'Club Shop', 'ctlg_layout2', 'catalog_club_headline1', 'catalog_hc_teaser,', 'Welcome to the Brand New Habbo Club Shop, where Habbo Club members can purchase exclusive items!<br>The Furni in this section can only be purchased by Habbos who have joined Habbo Club.', 's:For Habbo Club members only!', 'Click on an item to see more details', NULL),
(56, 7, 'Dragons', 'Dragons', 'ctlg_layout2', 'catalog_jap_headline2', 'catalog_jap_teaser3,', 'Here you can find the Power of Dragons! Get them now!', 's:1: All Colours!', 'Click on the item you want for more information.', NULL),
(57, 7, 'Fans', 'Fans', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Need to be cold? Buy this!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(58, 7, 'Ice Cream Rare', 'Ice Cream Rare', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Need to be cold? Buy this! tasty!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(83, 1, 'Executive', 'Executive', 'ctlg_layout2', 'catalog_exe_headline1', 'catalog_exe_teaser,', 'The Executive Furni range is ideal for creating a sophisticated study, office blocks or the head desk of the big mafia boss! It is also great for designing companies, record labels and businesses.', NULL, 'Click on the item you want for more information.', NULL),
(59, 7, 'Inflatables', 'Inflatables', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Light Weight chars! buy them now!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(60, 7, 'Laser Gates', 'Laser Gates', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Laser Gates. Nobody go''s Inside or outside.<br>Top Security furni!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(61, 7, 'Marquee', 'Marquee', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Marquee''s Perfect for summer!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(62, 7, 'Monoliths', 'Monoliths', 'ctlg_layout2', 'catalog_rares_headline1', '', 'A nice port. it go''s up and down. Buy it now!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(63, 7, 'Oriental Screen', 'Oriental Screen', 'ctlg_layout2', 'catalog_rares_headline1', '', 'A Screen. Just buy it!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(64, 7, 'Pilars Rare', 'Pilars Rare', 'ctlg_layout2', 'catalog_rares_headline1', '', 'This pilars holds everything. Just buy it!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(65, 7, 'Pillow Rare', 'Pillow Rare', 'ctlg_layout2', 'catalog_rares_headline1', '', 'you want just relax and sit down? Buy This!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(66, 7, 'Smoke Machines', 'Smoke Machines', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Need some smoke. Buy this Machines!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(67, 1, 'Summer', 'Summer', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Some Summer Furni! Just Buy it!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(68, 7, 'Rares', 'Rares', 'ctlg_layout2', 'catalog_rares_headline1', '', 'Some Rares. Just buy!', 's:Restricted Zone', 'Select a item, and see more details', NULL),
(69, 7, 'Trophies Rare', 'Tropies Rare', 'ctlg_trophies', 'catalog_trophies_headline1', '', 'Reward your Habbo friends, or yourself with one of our fabulous glittering array of bronze, silver and gold trophies.<br><br>First choose the trophy model (click on the arrows to see all the different styles) and then the metal (click on the seal below the trophy). Type your inscription below and we''ll engrave it on the trophy along with your name and today''s date.<br>', 't1:Type your inscription CAREFULLY, it''s permanent!', '', NULL),
(70, 1, 'Noob Edition', 'Noob Edition', 'ctlg_layout2', 'catalog_limited_headline1', 'catalog_limited_teaser1,', 'Some noob edition stuff.', '', 'For a limited time only!', NULL),
(71, 1, 'Windows', 'Windows', 'ctlg_layout2', 'ctlg_windows_headline1', 'ctlg_windows_teaser1', 'Let some sunshine in! Our windows come in many styles to give an unique look to Your room. Who said Your room does not have a view? It does now', 's: Wow, I can see me mother!', 'Click on an item to see more details', NULL),
(82, 1, 'Collectables Furni', 'Collectables Furni', 'ctlg_layout2', 'catalog_collectibles_headline1', 'collectible_page', 'Collect your way to the riches! Collectables are special furniture sold only for a limited period of time. They cost a wee bit more, but make it up with an amazing trade value.', '', 'Click on the item you want for more information.', ''),
(10, 1, 'Alhambra', 'Alhambra', 'ctlg_layout2', 'catalog_alh_headline2', 'catalog_alh_teaser2,', 'The Palace of Alhambra has appeared and with it this exotic and beautifully crafted range of Arabian Furni. Luxury seating and gourmet food combine to make your room sparkle with riches.', '', 'Click on an item to see more details', NULL),
(74, 1, 'Tiki', 'Tiki', 'ctlg_layout2', 'catalog_tiki_header1', 'catalog_tiki_teaser1,', 'Tiki Furni. Get Them now for tiki fun!', 's: WoW , Tiki!', 'Click on an item to see more details', NULL),
(78, 1, 'Diner', 'Diner', 'ctlg_layout2', 'catalog_diner_header', 'catalog_diner_teaser,', 'Step into 1950s America with the bright and colourful Diner Range.<br>', 's: Washington<br>Bacon & Eggs!', 'Mine''s a milk. Chocolate milk!', NULL),
(1, 1, 'Purse', 'Purse', 'ctlg_purse', 'catal_fp_header', 'catal_fp_pic4,', 'Need some furni for your Habbo room? Well, you''re in the right place! This Catalogue is packed FULL of funky Furni, just click the tabs on the right to browse.<br><br>Catalogues by: HoloDCR<br><br>Copyright 2008 HoloDCR', 's: HoloDCR 2', 'Need some Funky Furni for your Habbo', NULL),
(3, 1, 'Collectables', 'Collectables', 'ctlg_collectibles', 'catalog_collectibles_headline1', 'collectible_page,', 'Collect your way to the riches! Collectables are special furniture sold only for a limited period of time. They cost a wee bit more, but make it up with an amazing trade value.', 't1:Find out what the latest Collectable is >>', 'Find out what the latest collectible is >>', NULL),
(80, 1, 'Greek', 'Greek', 'ctlg_layout2', 'catalog_limited_headline1', 'catalog_limited_teaser1,', 'Get it while its hot.. <br><br>LIMITED EDITION FURNITURE!', '', 'Click on the item you want for more information.', 'NULL'),
(79, 1, 'Advertisement', 'Advertisement', 'ctlg_layout2', 'catalog_rares_headline1', '', 'This furni ar Advertisement in habbo. the Ads Trax And Judebox ar not coded.', '', 'Click on the item you want for more information.', 'NULL'),
(84, 1, 'Others', 'Others', 'ctlg_layout2', 'catalog_rares_headline1', NULL, 'Other Furni:', NULL, 'Click on the item you want for more information.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_alerts`
--

CREATE TABLE IF NOT EXISTS `cms_alerts` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `alert` text NOT NULL,
  `type` enum('1','2') NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1802 ;

--
-- Dumping data for table `cms_alerts`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_applications`
--

CREATE TABLE IF NOT EXISTS `cms_applications` (
  `id` int(15) NOT NULL auto_increment,
  `rankname` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `birth` varchar(15) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `country` varchar(50) NOT NULL,
  `general_information` text NOT NULL,
  `experience` text NOT NULL,
  `education` varchar(50) NOT NULL,
  `additional_information` text NOT NULL,
  `accepted_disclaimer` int(1) NOT NULL default '0',
  `admin_reacted` int(1) NOT NULL default '0',
  `admin_read` int(1) NOT NULL default '0',
  `admin_deleted` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_applications`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_application_forms`
--

CREATE TABLE IF NOT EXISTS `cms_application_forms` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '0' COMMENT 'For what rank can people applicate?',
  `introduction` text NOT NULL COMMENT 'What''s the description of the rank it self?',
  `requirements` text NOT NULL COMMENT 'What are the requirments if you want to do this job?',
  `hconly` int(1) NOT NULL default '0' COMMENT 'Can only people who are HC applicate or everyone?',
  `username` int(1) NOT NULL default '0' COMMENT 'Show username in application form?',
  `realname` int(1) NOT NULL default '0' COMMENT 'Need people to fill in their real name?',
  `birth` int(1) NOT NULL default '0' COMMENT 'Show birth in application form?',
  `sex` int(1) NOT NULL default '0' COMMENT 'Need people to fill in what there sex is (male/female/shemale)?',
  `country` int(1) NOT NULL default '0' COMMENT 'Need people to fill in, in what country they live?',
  `general_information` int(1) NOT NULL default '0' COMMENT 'Need people to fill in general information (reasons why you''re interested/why the staff should choose you)?',
  `experience` int(1) NOT NULL default '0' COMMENT 'Need people to fill in if they have work experience?',
  `education` int(1) NOT NULL default '0' COMMENT 'Need people to fill in what level they (did) study?',
  `additional_information` int(1) NOT NULL default '0' COMMENT 'Need people to fill in hobbies or interests?',
  `show_disclaimer` int(1) NOT NULL default '0' COMMENT 'Must there be a disclaimer that the people who applicates need to accept?',
  `disclaimer_text` text NOT NULL COMMENT 'The disclaimer it self (shown if configurated).',
  `enabled` int(11) NOT NULL default '0' COMMENT 'Can you right now apply for this rank?',
  `deleted` int(1) NOT NULL default '0' COMMENT 'If you ''delete'' a application form it will be invisible. We don''t delete it in the sql table so no errors come up if someone applied for this rank.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='You DO NOT find any applications in this table, only the for' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_application_forms`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_banners`
--

CREATE TABLE IF NOT EXISTS `cms_banners` (
  `id` int(35) NOT NULL auto_increment,
  `text` varchar(50) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL default '0',
  `advanced` int(1) default NULL,
  `html` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_collectables`
--

CREATE TABLE IF NOT EXISTS `cms_collectables` (
  `id` int(15) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default 'Unknown furniture',
  `image_small` varchar(255) default NULL,
  `image_large` varchar(255) NOT NULL,
  `tid` int(20) NOT NULL default '0',
  `description` varchar(175) NOT NULL default 'No description given!',
  `month` int(2) NOT NULL default '1',
  `year` int(2) NOT NULL,
  `showroom` int(2) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_collectables`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_content`
--

CREATE TABLE IF NOT EXISTS `cms_content` (
  `contentkey` text NOT NULL,
  `contentvalue` text NOT NULL,
  `setting_title` text NOT NULL,
  `setting_desc` text NOT NULL,
  `fieldtype` enum('1','2','3') NOT NULL default '1',
  `category` int(11) NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_content`
--

INSERT INTO `cms_content` (`contentkey`, `contentvalue`, `setting_title`, `setting_desc`, `fieldtype`, `category`) VALUES
('credits1', 'Credits are the hotel''s currency. You can use them to buy all kinds of things, from rubber ducks and sofas, to Habbo Club membership, jukeboxes and teleports.', 'Credits Content Box 1', 'The text within a content box on the credits page.', '1', 3),
('credits2', '<img class=''credits-image'' src=''./web-gallery/album1/palmchair.gif'' align=''left'' />To buy furniture or play games, you need <b>credits</b>. We provide you with free credits on registration, and if you run out, there are several ways you can earn more credits:<li>* Refer a friend to the hotel and earn credits</li><li>* Ask a staff member ingame</li><li>* Redeem a voucher if you have one</li><li>* Trade your furniture with others for credit furniture</li>', 'Credits Content Box 2', 'The text within a content box on the credits page.', '1', 3),
('credits1-heading', 'What are credits?', 'Credits Content Box 1 Heading', 'The title (heading) of Credit Content Box 1.', '1', 3),
('credits2-heading', 'Get credits!', 'Credit Content Box 2 Heading', 'The title (heading) of Credit Content Box 2.', '1', 3),
('staff1', 'You can find the staff members all over the hotel -- in the public rooms, their own rooms, or that dark little corner in your room. But how can you call them if you actually need them!? Easy. If it''s urgent, use the Call for Help system ingame by using the blue questionmark in the right bottom of your screen. If it isn''t urgent, use the Help Tool on the website.', 'Staff Content Box 1', 'The text within a content box on the staff page (if enabled).', '1', 2),
('staff2', 'So you want that sexy staff badge next to your name in the hotel and on the site? Do you want to join Holo Hotel''s moderation team? Keep your eyes focused on this section and the news -- if we''re looking for staff it will be announced there, and surely you won''t miss it!', 'Staff Content Box 2', 'The text within a content box on the staff page (if enabled).', '1', 2),
('staff1-heading', 'Need our help?', 'Staff Content Box 1 Heading', 'The title (heading) of Staff Content Box 1.', '1', 2),
('staff2-heading', 'Joining the Team', 'Staff Content Box 2 Heading', 'The title (heading) of Staff Content Box 2.', '1', 2),
('staff1-color', 'green', 'Staff Content Box 1 Color', 'Only valid colors defined in CSS such as ''orange'', ''blue'', etc', '3', 2),
('staff2-color', 'green', 'Staff Content Box 2 Color', 'Only valid colors defined in CSS such as ''orange'', ''blue'', etc', '3', 2),
('mod_staff-enabled', '1', 'Staff Module Enabled', 'This determines wether the Staff Module (staff.php) will be displayed/enabled.', '2', 2),
('client-widescreen', '1', 'Client in Widescreen', 'This determines wether the game client should display in widescreen mode or not.', '2', 1),
('birthday-notifications', '1', 'Birthday Notifications Enabled', 'This will determine wether a ''Happy birthday'' message will be shown on a user''s birthday.', '2', 1),
('allow-group-purchase', '1', 'Group Purchasing Enabled', 'This determines wether new groups can be created or not.', '2', 1),
('forum-enabled', '1', 'Forum Enabled', 'This determines wether the Discussion Board will be shown/enabled.', '2', 4),
('smilies-enabled', '1', 'Smilies Enabled', 'This determines wether Smilies will be shown on the Discussion Board and on Homes.', '2', 4),
('enable-flash-promo', '1', 'Enable Flash Promo', 'This determines wether the Flash Promo on the login page will be displayed. If disabled, a HTML version will be used.', '2', 1),
('allow-guests', '1', 'Allow guests?', 'This determines wether guest mode is enabled. Guest Mode allows you to visit (parts of) your site (with limitations) without logging in.', '2', 1),
('hc-maxmonths', '6', 'HC Months Limit', 'This will limit the allowed amount of subscribed Club months per user at once to this number. Set to ''0'' to have no limit.', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_faq`
--

CREATE TABLE IF NOT EXISTS `cms_faq` (
  `id` int(255) NOT NULL auto_increment,
  `type` varchar(255) NOT NULL default 'type',
  `catid` int(11) default NULL,
  `title` varchar(1000) NOT NULL,
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cms_faq`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_forum_posts`
--

CREATE TABLE IF NOT EXISTS `cms_forum_posts` (
  `id` int(11) NOT NULL auto_increment,
  `threadid` int(11) NOT NULL default '0',
  `message` text NOT NULL,
  `author` varchar(25) NOT NULL,
  `date` varchar(30) NOT NULL,
  `edit_date` varchar(30) NOT NULL,
  `edit_author` varchar(25) NOT NULL,
  `forumid` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `cms_forum_posts`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_forum_threads`
--

CREATE TABLE IF NOT EXISTS `cms_forum_threads` (
  `id` int(4) NOT NULL auto_increment,
  `type` tinyint(4) NOT NULL,
  `title` varchar(30) NOT NULL,
  `author` varchar(25) NOT NULL,
  `date` varchar(35) NOT NULL,
  `lastpost_author` varchar(25) NOT NULL,
  `lastpost_date` varchar(35) NOT NULL,
  `views` int(11) NOT NULL,
  `posts` tinyint(4) NOT NULL,
  `unix` varchar(40) NOT NULL,
  `forumid` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `cms_forum_threads`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_guestbook`
--

CREATE TABLE IF NOT EXISTS `cms_guestbook` (
  `id` int(10) NOT NULL auto_increment,
  `message` varchar(1000) default NULL,
  `time` varchar(1000) default NULL,
  `widget_id` int(10) default NULL,
  `userid` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `cms_guestbook`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_help`
--

CREATE TABLE IF NOT EXISTS `cms_help` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(25) collate latin1_general_ci NOT NULL,
  `ip` varchar(50) collate latin1_general_ci NOT NULL,
  `message` mediumtext collate latin1_general_ci NOT NULL,
  `date` varchar(50) collate latin1_general_ci NOT NULL,
  `picked_up` enum('0','1') collate latin1_general_ci NOT NULL,
  `subject` varchar(50) collate latin1_general_ci NOT NULL,
  `roomid` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='HoloCMS' AUTO_INCREMENT=113 ;

--
-- Dumping data for table `cms_help`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_homes_catalouge`
--

CREATE TABLE IF NOT EXISTS `cms_homes_catalouge` (
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `type` varchar(1) NOT NULL,
  `subtype` varchar(1) NOT NULL,
  `data` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL default '1',
  `category` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4575 ;

--
-- Dumping data for table `cms_homes_catalouge`
--

INSERT INTO `cms_homes_catalouge` (`id`, `name`, `type`, `subtype`, `data`, `price`, `amount`, `category`) VALUES
(2, 'Trax Sfx', '1', '0', 'trax_sfx', 1, 1, '3'),
(3, 'Trax Disco', '1', '0', 'trax_disco', 1, 1, '3'),
(4, 'Trax 8 bit', '1', '0', 'trax_8_bit', 1, 1, '3'),
(5, 'Trax Electro', '1', '0', 'trax_electro', 1, 1, '3'),
(6, 'Trax Reggae', '1', '0', 'trax_reggae', 1, 1, '3'),
(7, 'Trax Ambient', '1', '0', 'trax_ambient', 1, 1, '3'),
(8, 'Trax Bling', '1', '0', 'trax_bling', 1, 1, '3'),
(9, 'Trax Heavy', '1', '0', 'trax_heavy', 1, 1, '3'),
(10, 'Trax Latin', '1', '0', 'trax_latin', 1, 1, '3'),
(11, 'Trax Rock', '1', '0', 'trax_rock', 1, 1, '3'),
(12, 'Rain Background', '4', '0', 'bg_rain', 3, 1, '27'),
(13, 'Notes', '3', '0', 'stickienote', 2, 5, '29'),
(14, 'Serpentine Darkblue Background', '4', '0', 'bg_serpentine_darkblue', 3, 1, '27'),
(15, 'Serpentine Darkred Background 2', '4', '0', 'bg_serpntine_darkred', 3, 1, '27'),
(16, 'Serpentine Background', '4', '0', 'bg_serpentine_1', 3, 1, '27'),
(17, 'Serpentine  Background 2', '4', '0', 'bg_serpentine_2', 3, 1, '27'),
(18, 'Denim Background', '4', '0', 'bg_denim', 3, 1, '27'),
(19, 'Lace Background', '4', '0', 'bg_lace', 3, 1, '27'),
(20, 'Stitched Background', '4', '0', 'bg_stitched', 3, 1, '27'),
(21, 'Wood Background', '4', '0', 'bg_wood', 3, 1, '27'),
(22, 'Cork Background', '4', '0', 'bg_cork', 3, 1, '27'),
(23, 'Stone Background', '4', '0', 'bg_stone', 3, 1, '27'),
(24, 'Pattern Bricks Background', '4', '0', 'bg_pattern_bricks', 3, 1, '27'),
(25, 'Ruled Paper Background', '4', '0', 'bg_ruled_paper', 3, 1, '27'),
(26, 'Grass Background', '4', '0', 'bg_grass', 3, 1, '27'),
(27, 'Hotel Background', '4', '0', 'bg_hotel', 3, 1, '27'),
(28, 'Bubble Background', '4', '0', 'bg_bubble', 3, 1, '27'),
(29, 'Pattern Bobbaskulls  Background', '4', '0', 'bg_pattern_bobbaskulls1', 3, 1, '27'),
(30, 'Pattern Space Background', '4', '0', 'bg_pattern_space', 3, 1, '27'),
(31, 'Image Submarine Background', '4', '0', 'bg_image_submarine', 3, 1, '27'),
(32, 'Metal Background 2', '4', '0', 'bg_metal2', 3, 1, '27'),
(33, 'Broken Glass Background', '4', '0', 'bg_broken_glass', 3, 1, '27'),
(34, 'Pattern Clouds Background', '4', '0', 'bg_pattern_clouds', 3, 1, '27'),
(35, 'Comic Background', '4', '0', 'bg_comic2', 3, 1, '27'),
(36, 'Pattern Floral Background 1', '4', '0', 'bg_pattern_floral_01', 3, 1, '27'),
(37, 'A', '1', '0', 'a', 1, 1, '5'),
(38, 'B', '1', '0', 'b_2', 1, 1, '5'),
(39, 'C', '1', '0', 'c', 1, 1, '5'),
(40, 'D', '1', '0', 'd', 1, 1, '5'),
(41, 'E', '1', '0', 'e', 1, 1, '5'),
(42, 'F', '1', '0', 'f', 1, 1, '5'),
(43, 'G', '1', '0', 'g', 1, 1, '5'),
(44, 'H', '1', '0', 'h', 1, 1, '5'),
(45, 'I', '1', '0', 'i', 1, 1, '5'),
(46, 'J', '1', '0', 'j', 1, 1, '5'),
(47, 'K', '1', '0', 'k', 1, 1, '5'),
(48, 'L', '1', '0', 'l', 1, 1, '5'),
(49, 'M', '1', '0', 'm', 1, 1, '5'),
(50, 'N', '1', '0', 'n', 1, 1, '5'),
(51, 'O', '1', '0', 'o', 1, 1, '5'),
(52, 'P', '1', '0', 'p', 1, 1, '5'),
(53, 'Q', '1', '0', 'q', 1, 1, '5'),
(54, 'R', '1', '0', 'r', 1, 1, '5'),
(55, 'S', '1', '0', 's', 1, 1, '5'),
(56, 'T', '1', '0', 't', 1, 1, '5'),
(57, 'U', '1', '0', 'u', 1, 1, '5'),
(58, 'V', '1', '0', 'v', 1, 1, '5'),
(59, 'W', '1', '0', 'w', 1, 1, '5'),
(60, 'X', '1', '0', 'x', 1, 1, '5'),
(61, 'Y', '1', '0', 'y', 1, 1, '5'),
(62, 'Z', '1', '0', 'z', 1, 1, '5'),
(63, 'Bling Star', '1', '0', 'bling_star', 1, 1, '6'),
(64, 'Bling a', '1', '0', 'bling_a', 1, 1, '6'),
(65, 'Bling b', '1', '0', 'bling_b', 1, 1, '6'),
(66, 'Bling c', '1', '0', 'bling_c', 1, 1, '6'),
(67, 'Bling d', '1', '0', 'bling_d', 1, 1, '6'),
(68, 'Bling e', '1', '0', 'bling_e', 1, 1, '6'),
(69, 'Bling f', '1', '0', 'bling_f', 1, 1, '6'),
(70, 'Bling g', '1', '0', 'bling_g', 1, 1, '6'),
(71, 'Bling h', '1', '0', 'bling_h', 1, 1, '6'),
(72, 'Bling i', '1', '0', 'bling_i', 1, 1, '6'),
(73, 'Bling j', '1', '0', 'bling_j', 1, 1, '6'),
(74, 'Bling k', '1', '0', 'bling_k', 1, 1, '6'),
(75, 'Bling l', '1', '0', 'bling_l', 1, 1, '6'),
(76, 'Bling m', '1', '0', 'bling_m', 1, 1, '6'),
(77, 'Bling n', '1', '0', 'bling_n', 1, 1, '6'),
(78, 'Bling o', '1', '0', 'bling_o', 1, 1, '6'),
(79, 'Bling p', '1', '0', 'bling_p', 1, 1, '6'),
(80, 'Bling q', '1', '0', 'bling_q', 1, 1, '6'),
(81, 'Bling r', '1', '0', 'bling_r', 1, 1, '6'),
(82, 'Bling s', '1', '0', 'bling_s', 1, 1, '6'),
(83, 'Bling t', '1', '0', 'bling_t', 1, 1, '6'),
(84, 'Bling u', '1', '0', 'bling_u', 1, 1, '6'),
(85, 'Bling v', '1', '0', 'bling_v', 1, 1, '6'),
(86, 'Bling w', '1', '0', 'bling_w', 1, 1, '6'),
(87, 'Bling x', '1', '0', 'bling_x', 1, 1, '6'),
(88, 'Bling y', '1', '0', 'bling_y', 1, 1, '6'),
(89, 'Bling z', '1', '0', 'bling_z', 1, 1, '6'),
(90, 'Bling Underscore', '1', '0', 'bling_underscore', 1, 1, '6'),
(91, 'Bling Comma', '1', '0', 'bling_comma', 1, 1, '6'),
(92, 'Bling Dot', '1', '0', 'bling_dot', 1, 1, '6'),
(93, 'Bling Exclamation', '1', '0', 'bling_exclamation', 1, 1, '6'),
(94, 'Bling Question', '1', '0', 'bling_question', 1, 1, '6'),
(95, 'A with Circle', '1', '0', 'a_with_circle', 1, 1, '5'),
(96, 'A with Dots', '1', '0', 'a_with_dots', 1, 1, '5'),
(97, 'O with Dots', '1', '0', 'o_with_dots', 1, 1, '5'),
(98, 'Dot', '1', '0', 'dot', 1, 1, '5'),
(99, 'Acsent 1', '1', '0', 'acsent1', 1, 1, '5'),
(100, 'Acsent 2', '1', '0', 'acsent2', 1, 1, '5'),
(101, 'Underscore', '1', '0', 'underscore', 1, 1, '5'),
(103, 'Chain Horizontal', '1', '0', 'chain_horizontal', 1, 1, '7'),
(104, 'Chain Vertical', '1', '0', 'chain_vertical', 1, 1, '7'),
(105, 'Ruler Horizontal', '1', '0', 'ruler_horizontal', 1, 1, '7'),
(106, 'Ruler Vertical', '1', '0', 'ruler_vertical', 1, 1, '7'),
(107, 'Vine', '1', '0', 'vine', 1, 1, '7'),
(108, 'Vine 2', '1', '0', 'vine2', 1, 1, '7'),
(109, 'Leafs 1', '1', '0', 'leafs1', 1, 1, '7'),
(110, 'Leafs 2', '1', '0', 'leafs2', 1, 1, '7'),
(111, 'Sticker Zipper V Tile', '1', '0', 'sticker_zipper_v_tile', 1, 1, '7'),
(112, 'Sticker Zipper H Tile', '1', '0', 'sticker_zipper_h_tile', 1, 1, '7'),
(113, 'Sticker Zipper H Normal Lock', '1', '0', 'sticker_zipper_h_normal_lock', 1, 1, '7'),
(114, 'Sticker Zipper H Bobba Lock', '1', '0', 'sticker_zipper_h_bobba_lock', 1, 1, '7'),
(115, 'Sticker Zipper H End', '1', '0', 'sticker_zipper_h_end', 1, 1, '7'),
(116, 'Sticker Zipper V End', '1', '0', 'sticker_zipper_v_end', 1, 1, '7'),
(117, 'Sticker Zipper V Bobba Lock', '1', '0', 'sticker_zipper_v_bobba_lock', 1, 1, '7'),
(118, 'Sticker Zipper V Normal Lock', '1', '0', 'sticker_zipper_v_normal_lock', 1, 1, '7'),
(119, 'Wormhand', '1', '0', 'wormhand', 5, 1, '8'),
(120, 'Sticker Gentleman', '1', '0', 'sticker_gentleman', 2, 1, '8'),
(121, 'Chewed Bubblegum', '1', '0', 'chewed_bubblegum', 1, 1, '8'),
(122, 'Cactus', '1', '0', 'sticker_cactus_anim', 2, 1, '8'),
(123, 'Sticker Spaceduck', '1', '0', 'sticker_spaceduck', 1, 1, '8'),
(124, 'Sticker Moonpig', '1', '0', 'sticker_moonpig', 2, 1, '8'),
(125, 'Swimming Fish', '1', '0', 'swimming_fish', 2, 1, '8'),
(126, 'Sticker Boxer', '1', '0', 'sticker_boxer', 2, 1, '8'),
(127, 'Wunder Frank', '1', '0', 'wunderfrank', 1, 1, '8'),
(128, 'Sticker Submarine', '1', '0', 'sticker_submarine', 2, 1, '8'),
(129, 'Sticker Clown Anim', '1', '0', 'sticker_clown_anim', 2, 1, '8'),
(130, 'Bling Bling Stars', '1', '0', 'blingblingstars', 2, 1, '9'),
(131, 'Bling Hearts', '1', '0', 'blinghearts', 2, 1, '9'),
(132, 'Sticker Heartbeat', '1', '0', 'sticker_heartbeat', 2, 1, '9'),
(133, 'Sticker Catinabox', '1', '0', 'sticker_catinabox', 2, 1, '9'),
(134, 'Bear', '1', '0', 'bear', 2, 1, '9'),
(135, 'Gothic Draculacape', '1', '0', 'gothic_draculacape ', 3, 1, '10'),
(136, 'Evil Giant Bunny', '1', '0', 'evil_giant_bunny', 2, 1, '10'),
(137, 'Zombie Pupu', '1', '0', 'zombiepupu', 2, 1, '10'),
(138, 'Skeletor 1', '1', '0', 'skeletor_001', 2, 1, '10'),
(139, 'Skull', '1', '0', 'skull', 2, 1, '10'),
(140, 'Skull 2', '1', '0', 'skull2', 2, 1, '10'),
(141, 'Scubacapsule Anim', '1', '0', 'scubacapsule_anim', 2, 1, '10'),
(142, 'Bobbaskull', '1', '0', 'sticker_bobbaskull', 2, 1, '10'),
(143, 'Sticker Flower', '1', '0', 'sticker_flower1', 3, 5, '11'),
(144, 'Icecube Big', '1', '0', 'icecube_big', 3, 10, '11'),
(145, 'Leafs 2', '1', '0', 'leafs2', 5, 7, '11'),
(146, 'Vine 2', '1', '0', 'vine2', 3, 5, '11'),
(147, 'Chain Horizontal', '1', '0', 'chain_horizontal', 3, 5, '11'),
(148, 'Icecube Small', '1', '0', 'icecube_small', 3, 10, '11'),
(149, 'Sticker Arrow Up', '1', '0', 'sticker_arrow_up', 2, 1, '12'),
(150, 'Sticker Arrow Down', '1', '0', 'sticker_arrow_down', 2, 1, '12'),
(151, 'Sticker Arrow Left', '1', '0', 'sticker_arrow_left', 2, 1, '12'),
(152, 'Sticker Arrow Right', '1', '0', 'sticker_arrow_right', 2, 1, '12'),
(153, 'Sticker Pointing Hand 1', '1', '0', 'sticker_pointing_hand_1', 2, 1, '12'),
(154, 'Sticker Pointing Hand 2', '1', '0', 'sticker_pointing_hand_2', 2, 1, '12'),
(155, 'Sticker Pointing Hand 3', '1', '0', 'sticker_pointing_hand_3', 2, 1, '12'),
(156, 'Sticker Pointing Hand 4', '1', '0', 'sticker_pointing_hand_4', 2, 1, '12'),
(157, 'Nail 2', '1', '0', 'nail2', 2, 1, '12'),
(158, 'Nail 3', '1', '0', 'nail3', 2, 1, '12'),
(159, 'Needle 1', '1', '0', 'needle_1', 1, 1, '12'),
(160, 'Needle 2', '1', '0', 'needle_2', 1, 1, '12'),
(161, 'Needle 3', '1', '0', 'needle_3', 1, 1, '12'),
(162, 'Needle 4', '1', '0', 'needle_4', 1, 1, '12'),
(163, 'Needle 5', '1', '0', 'needle_5', 1, 1, '12'),
(164, 'Grass Meadow', '1', '0', 'grass', 2, 1, '13'),
(165, 'Sticker Flower', '1', '0', 'sticker_flower1', 1, 1, '13'),
(166, 'Sticker Flower Big Yellow', '1', '0', 'sticker_flower_big_yellow', 1, 1, '13'),
(167, 'Sticker Flower Pink', '1', '0', 'sticker_flower_pink', 1, 1, '13'),
(168, 'Bobba badge', '1', '0', 'sticker_bobbaskull', 1, 1, '14'),
(169, 'I love Coffee', '1', '0', 'i_love_coffee', 1, 1, '14'),
(170, 'Sticker Effect Bam', '1', '0', 'sticker_effect_bam', 1, 1, '14'),
(171, 'Sticker Effect Burp', '1', '0', 'sticker_effect_burp', 1, 1, '14'),
(172, 'Sticker Effect Woosh', '1', '0', 'sticker_effect_woosh', 1, 1, '14'),
(173, 'Sticker Effect Zap', '1', '0', 'sticker_effect_zap', 1, 1, '14'),
(174, 'Sticker Effect Whoosh 2', '1', '0', 'sticker_effect_whoosh2', 1, 1, '14'),
(175, 'Icecube Small', '1', '0', 'icecube_small', 1, 1, '15'),
(176, 'Snowball Machine', '1', '0', 'ss_snowballmachine', 1, 1, '15'),
(177, 'Icecube Big', '1', '0', 'icecube_big', 1, 1, '15'),
(178, 'Bootsitjalapaset Red', '1', '0', 'bootsitjalapaset_red', 2, 1, '15'),
(179, 'Boots and Gloves', '1', '0', 'ss_bootsitjalapaset_blue', 2, 1, '15'),
(180, 'Red SnowStorm Costume', '1', '0', 'ss_costume_red', 2, 1, '15'),
(181, 'Snowstorm Blue Costume', '1', '0', 'ss_costume_blue', 2, 1, '15'),
(182, 'Splash!', '1', '0', 'ss_hits_by_snowball', 1, 1, '15'),
(183, 'SnowStorm Duck!', '1', '0', 'extra_ss_duck_left', 1, 1, '15'),
(184, 'Snowtree', '1', '0', 'ss_snowtree', 2, 1, '15'),
(185, 'SnowStorm Duck!', '1', '0', 'extra_ss_duck_right', 1, 1, '15'),
(186, 'Snowman', '1', '0', 'ss_snowman', 2, 1, '15'),
(187, 'Lumihiutale', '1', '0', 'ss_snowflake2', 1, 1, '15'),
(188, 'Snow Queen', '1', '0', 'ss_snowqueen', 2, 1, '15'),
(189, 'Battle 1', '1', '0', 'battle1', 1, 1, '16'),
(190, 'Battle 3', '1', '0', 'battle3', 1, 1, '16'),
(191, 'HC Hat', '1', '0', 'hc_hat', 5, 1, '18'),
(192, 'Eye Left', '1', '0', 'eyeleft', 2, 1, '18'),
(193, 'Eye Right', '1', '0', 'eyeright', 2, 1, '18'),
(194, 'Angel Wings', '1', '0', 'angelwings_anim', 3, 1, '18'),
(195, 'Sticker Gurubeard Gray', '1', '0', 'sticker_gurubeard_gray', 1, 1, '18'),
(196, 'Sticker Gurubeard Brown', '1', '0', 'sticker_gurubeard_brown', 1, 1, '18'),
(197, 'Supernerd', '1', '0', 'sticker_glasses_supernerd', 1, 1, '18'),
(198, 'Goofy Glasses', '1', '0', 'sticker_glasses_elton', 1, 1, '18'),
(199, 'Blue Eyes', '1', '0', 'sticker_eyes_blue', 1, 1, '18'),
(200, 'Sticker Eye Anim', '1', '0', 'sticker_eye_anim', 2, 1, '18'),
(201, 'Sticker Eye Evil Anim', '1', '0', 'sticker_eye_evil_anim', 2, 1, '18'),
(202, 'Sticker Eraser', '1', '0', 'sticker_eraser', 1, 1, '20'),
(203, 'Star', '1', '0', 'star', 1, 1, '20'),
(204, 'Sticker Pencil', '1', '0', 'sticker_pencil', 1, 1, '20'),
(205, 'Sticker Dreamer', '1', '0', 'sticker_dreamer', 3, 1, '20'),
(206, 'Sticker Pencil 2', '1', '0', 'sticker_pencil_2', 1, 1, '20'),
(207, 'Sticker Lonewolf', '1', '0', 'sticker_lonewolf', 3, 1, '20'),
(208, 'Sticker Prankster', '1', '0', 'sticker_prankster', 3, 1, '20'),
(209, 'Sticker Prankster', '1', '0', 'sticker_prankster', 3, 1, '20'),
(210, 'Sticker Romantic', '1', '0', 'sticker_romantic', 3, 1, '20'),
(211, 'Redlamp', '1', '0', 'redlamp', 2, 1, '20'),
(212, 'Lightbulb', '1', '0', 'lightbulb', 2, 1, '20'),
(213, 'Bullet 1', '1', '0', 'bullet1', 2, 1, '20'),
(214, 'Spill 1', '1', '0', 'spill1', 1, 1, '20'),
(215, 'Spill 2', '1', '0', 'spill2', 1, 1, '20'),
(216, 'Spill 3', '1', '0', 'spill3', 1, 1, '20'),
(217, 'Sticker Coffee Stain', '1', '0', 'sticker_coffee_stain', 1, 1, '20'),
(218, 'Sticker Hole', '1', '0', 'sticker_hole', 1, 1, '20'),
(219, 'Sticker Flames', '1', '0', 'sticker_flames', 2, 1, '20'),
(220, 'Paper Clip 1', '1', '0', 'paper_clip_1', 1, 1, '20'),
(221, 'Paper Clip 2', '1', '0', 'paper_clip_2', 1, 1, '20'),
(222, 'Paper Clip 3', '1', '0', 'paper_clip_3', 1, 1, '20'),
(223, 'Highlighter 1', '1', '0', 'highlighter_1', 1, 1, '20'),
(224, 'Highlighter Mark 5', '1', '0', 'highlighter_mark5', 1, 1, '20'),
(225, 'Highlighter Mark 6', '1', '0', 'highlighter_mark6', 1, 1, '20'),
(226, 'Highlighter Mark 4', '1', '0', 'highlighter_mark4b', 1, 1, '20'),
(227, 'Highlighter 2', '1', '0', 'highlighter_2', 1, 1, '20'),
(228, 'Highlighter Mark 1', '1', '0', 'highlighter_mark1', 1, 1, '20'),
(229, 'Highlighter Mark 2', '1', '0', 'highlighter_mark2', 1, 1, '20'),
(230, 'Highlighter Mark 3', '1', '0', 'highlighter_mark3', 1, 1, '20'),
(231, 'Plaster', '1', '0', 'plaster1', 1, 1, '20'),
(232, 'Plaster 2', '1', '0', 'plaster2', 1, 1, '20'),
(233, 'Sticker Croco', '1', '0', 'sticker_croco', 1, 1, '20'),
(234, 'Fish', '1', '0', 'fish', 1, 1, '20'),
(235, 'Parrot', '1', '0', 'parrot', 1, 1, '20'),
(236, 'Sticker Sleeping Habbo', '1', '0', 'sticker_sleeping_habbo', 2, 1, '20'),
(237, 'Burger', '1', '0', 'burger', 1, 1, '20'),
(238, 'Juice', '1', '0', 'juice', 1, 1, '20'),
(239, 'Sticker Coffee Steam Blue', '1', '0', 'sticker_coffee_steam_blue', 1, 1, '20'),
(240, 'Sticker Coffee Steam Grey', '1', '0', 'sticker_coffee_steam_grey', 1, 1, '20'),
(241, 'Cassette 1', '1', '0', 'cassette1', 1, 1, '20'),
(242, 'Cassette 2', '1', '0', 'cassette2', 1, 1, '20'),
(243, 'Cassette 3', '1', '0', 'cassette3', 1, 1, '20'),
(244, 'Cassette 4', '1', '0', 'cassette4', 1, 1, '20'),
(245, 'Football', '1', '0', 'football', 1, 1, '20'),
(246, 'Pattern Floral Background 2', '4', '0', 'bg_pattern_floral_02', 2, 1, '27'),
(247, 'Pattern Floral Background 3', '4', '0', 'bg_pattern_floral_03', 2, 1, '27'),
(248, 'Pattern Cars Background', '4', '0', 'bg_pattern_cars', 2, 1, '27'),
(249, 'Pattern Carpants Background', '4', '0', 'bg_pattern_carpants', 2, 1, '27'),
(250, 'Pattern Plasto Background', '4', '0', 'bg_pattern_plasto', 2, 1, '27'),
(251, 'Pattern Tinyroom Background', '4', '0', 'bg_pattern_tinyroom', 2, 1, '27'),
(252, 'Pattern Hearts Background', '4', '0', 'bg_pattern_hearts', 2, 1, '27'),
(253, 'Pattern Abstract Background', '4', '0', 'bg_pattern_abstract1', 2, 1, '27'),
(254, 'Bathroom Tile Background', '4', '0', 'bg_bathroom_tile', 2, 1, '27'),
(255, 'Pattern Fish Background', '4', '0', 'bg_pattern_fish', 2, 1, '27'),
(256, 'Pattern Deepred Background', '4', '0', 'bg_pattern_deepred', 2, 1, '27'),
(257, 'Colour 02 Background', '4', '0', 'bg_colour_02', 2, 1, '27'),
(258, 'Colour 03 Background', '4', '0', 'bg_colour_03', 2, 1, '27'),
(259, 'Colour 04 Background', '4', '0', 'bg_colour_04', 2, 1, '27'),
(260, 'Colour 05 Background', '4', '0', 'bg_colour_05', 2, 1, '27'),
(261, 'Colour 06 Background', '4', '0', 'bg_colour_06', 2, 1, '27'),
(262, 'Colour 07 Background', '4', '0', 'bg_colour_07', 2, 1, '27'),
(263, 'Colour 08 Background', '4', '0', 'bg_colour_08', 2, 1, '27'),
(264, 'Colour 09 Background', '4', '0', 'bg_colour_09', 2, 1, '27'),
(265, 'Colour 10 Background', '4', '0', 'bg_colour_10', 2, 1, '27'),
(266, 'Colour 11 Background', '4', '0', 'bg_colour_11', 2, 1, '27'),
(267, 'Colour 12 Background', '4', '0', 'bg_colour_12', 2, 1, '27'),
(268, 'Colour 13 Background', '4', '0', 'bg_colour_13', 2, 1, '27'),
(269, 'Colour 14 Background', '4', '0', 'bg_colour_14', 2, 1, '27'),
(270, 'Colour 15 Background', '4', '0', 'bg_colour_15', 2, 1, '27'),
(271, 'Colour 17 Background', '4', '0', 'bg_colour_17', 2, 1, '27'),
(272, 'Tonga Background', '4', '0', 'bg_tonga', 2, 1, '27'),
(275, 'Alhambra Group', '4', '0', 'alhambragroup', 0, 1, '50'),
(276, 'Themepark Background 1', '4', '0', 'themepark_bg_01', 0, 1, '50'),
(277, 'Themepark Background 2', '4', '0', 'themepark_bg_02', 0, 1, '50'),
(278, 'Unofficial Fansites Background', '4', '0', 'bg_unofficial_fansites', 0, 1, '50'),
(279, 'Official Fansites Background', '4', '0', 'bg_official_fansites2', 0, 1, '50'),
(280, 'Welcoming Party', '4', '0', 'welcoming_party', 0, 1, '50'),
(281, 'Random Habbos', '4', '0', 'random_habbos', 0, 1, '50'),
(282, 'Habborella Sea Background', '4', '0', 'habborella_sea_bg', 0, 1, '50'),
(283, 'Penelope', '4', '0', 'penelope', 0, 1, '50'),
(284, 'Orca', '4', '0', 'orca', 0, 1, '50'),
(285, 'Sttrinians Group', '4', '0', 'sttriniansgroup', 0, 1, '50'),
(286, 'Sttrinians Blackboard', '4', '0', 'sttriniansblackboard', 0, 1, '50'),
(287, 'Habbox Background', '4', '0', 'habbox', 0, 1, '50'),
(288, 'Christmas Background 2 ', '4', '0', 'christmas2007bg_001', 0, 1, '50'),
(289, 'Kerrang', '4', '0', 'bg_kerrang2', 0, 1, '50'),
(291, 'Voice of Teens Background', '4', '0', 'bg_voiceofteens', 0, 1, '50'),
(292, 'Makeover Background', '4', '0', 'makeover', 0, 1, '50'),
(293, 'Snowstorm Background', '4', '0', 'snowstorm_bg', 0, 1, '50'),
(294, 'Habbo Group Background', '4', '0', 'habbogroup', 0, 1, '50'),
(295, 'Wobble Squabble Background', '4', '0', 'bg_wobble_squabble', 0, 1, '50'),
(296, 'VIP Background', '4', '0', 'bg_vip', 0, 1, '50'),
(297, 'Lido Background', '4', '0', 'bg_lidoo', 0, 1, '50'),
(298, 'Lido Flat Background', '4', '0', 'bg_lido_flat', 0, 1, '50'),
(299, 'Infobus Yellow Background', '4', '0', 'bg_infobus_yellow', 0, 1, '50'),
(300, 'Infobus White Background', '4', '0', 'bg_infobus_white', 0, 1, '50'),
(301, 'Infobus Blue Background', '4', '0', 'bg_infobus_blue', 0, 1, '50'),
(302, 'Battle Ball Background 2', '4', '0', 'bg_battle_ball2', 0, 1, '50'),
(303, 'Grunge Background', '4', '0', 'grungewall', 0, 1, '50'),
(1001, 'OB Clubber', '1', '0', 'ob_clubber_146x146', 2, 1, '201'),
(1002, 'OB Devil', '1', '0', 'ob_devil_146x146', 2, 1, '201'),
(1003, 'OB Doctor', '1', '0', 'ob_doctor_146x146', 2, 1, '201'),
(1004, 'OB Fairy', '1', '0', 'ob_fairy_146x146', 2, 1, '201'),
(1005, 'OB Jetsetter', '1', '0', 'ob_jetsetter_146x146', 2, 1, '201'),
(1006, 'OB Misuniverse', '1', '0', 'ob_misuniverse_146x146', 2, 1, '1000'),
(1007, 'OB Shopaholic', '1', '0', 'ob_shopaholic_146x146', 2, 1, '201'),
(1008, 'OB Sport', '1', '0', 'ob_sporty_146x146', 2, 1, '201'),
(1009, 'Edynamic Animator Sticker', '1', '0', 'edynamic_animator_sticker', 2, 1, '1000'),
(1010, 'Edynamic Sticker Avatar', '1', '0', 'edynamic_sticker_avatar', 2, 1, '1000'),
(1011, 'Sticker Themepark', '1', '0', '27224_sticker_themepark_001', 2, 1, '228'),
(1012, '3 Year .ca', '1', '0', '3yearca', 2, 1, '1000'),
(1013, 'A', '1', '0', 'a', 2, 1, '203'),
(1014, 'A with Circle', '1', '0', 'a_with_circle', 2, 1, '203'),
(1015, 'A with Dots', '1', '0', 'a_with_dots', 2, 1, '203'),
(1017, 'Acento', '1', '0', 'acento', 2, 1, '203'),
(1018, 'Acentoagudo', '1', '0', 'acentoagudo', 2, 1, '1000'),
(1023, 'Acma Notepad Background', '1', '0', 'acma_notepad_bg_lge', 2, 1, '228'),
(1026, 'Acsent 1', '1', '0', 'acsent1', 2, 1, '203'),
(1027, 'Acsent 2', '1', '0', 'acsent2', 2, 1, '203'),
(1028, 'Ad Cats', '1', '0', 'adcats', 2, 1, '204'),
(1029, 'Ad Dogs', '1', '0', 'addogs', 2, 1, '204'),
(1030, 'Ad Holiday', '1', '0', 'adholiday', 2, 1, '204'),
(1031, 'Adidabounce Sticker', '1', '0', 'adidabounce_sticker', 2, 1, '1000'),
(1032, 'Ad Party', '1', '0', 'adparty', 2, 1, '204'),
(1033, 'Ad Skating', '1', '0', 'adskating', 2, 1, '204'),
(1034, 'Agudo', '1', '0', 'agudo', 2, 1, '203'),
(1035, 'Alhambra Sticker', '1', '0', 'alhambra_sticker', 2, 1, '205'),
(1036, 'Alhambra Wallsticker', '1', '0', 'alhambra_wallsticker', 2, 1, '205'),
(1037, 'Alhambra Logo', '1', '0', 'alhambralogo', 2, 1, '205'),
(1039, 'Ametrin', '1', '0', 'ametrin', 2, 1, '216'),
(1040, 'Angel', '1', '0', 'angel_146x146', 2, 1, '201'),
(1041, 'Angel Winganim', '1', '0', 'angelwinganim', 2, 1, '1000'),
(1043, 'Anim Appart 732', '1', '0', 'anim_appart_732', 2, 1, '228'),
(1044, 'Anim Boule Cristal', '1', '0', 'anim_boule_cristal', 2, 1, '228'),
(1045, 'Anim Brasero', '1', '0', 'anim_brasero', 2, 1, '228'),
(1046, 'Anim Cook', '1', '0', 'anim_cook', 2, 1, '216'),
(1047, 'Anim Elvis', '1', '0', 'anim_elvis', 2, 1, '216'),
(1048, 'Anim Enseigne', '1', '0', 'anim_enseigne', 2, 1, '228'),
(1049, 'Anim Hockey', '1', '0', 'anim_hockey', 2, 1, '213'),
(1051, 'Anim Oeil', '1', '0', 'anim_oeil', 2, 1, '228'),
(1052, 'Anim Ventilo', '1', '0', 'anim_ventilo', 2, 1, '228'),
(1053, 'Anim Viking Hole', '1', '0', 'anim_viking_hole', 2, 1, '216'),
(1054, 'Anti Eco', '1', '0', 'anti_eco', 2, 1, '235'),
(1055, 'Aprilfool 08', '1', '0', 'aprilfool08', 2, 1, '1000'),
(1056, 'Aprilfool 08 2', '1', '0', 'aprilfool08_2', 2, 1, '1000'),
(1057, 'Argentina', '1', '0', 'argentina', 2, 1, '232'),
(1058, 'Asterisco 1', '1', '0', 'asterisco1', 2, 1, '203'),
(1059, 'AU 3rd Bday 1', '1', '0', 'au_3rdbday_01', 2, 1, '206'),
(1060, 'AU 3rd Bday 2', '1', '0', 'au_3rdbday_02', 2, 1, '206'),
(1061, 'AU 3rd Bday 3', '1', '0', 'au_3rdbday_03', 2, 1, '206'),
(1062, 'AU Greengold', '1', '0', 'au_greengold', 2, 1, '204'),
(1063, 'AU Lifesaver', '1', '0', 'au_lifesaver', 2, 1, '228'),
(1064, 'AU Surfing', '1', '0', 'au_surfing', 2, 1, '204'),
(1065, 'B', '1', '0', 'b', 2, 1, '203'),
(1067, 'Ballsma Honey', '1', '0', 'ballsmahoney', 2, 1, '209'),
(1068, 'Baltasar', '1', '0', 'baltasar', 2, 1, '216'),
(1069, 'Banks Bobby', '1', '0', 'banksbobby', 2, 1, '236'),
(1070, 'Banks Can', '1', '0', 'bankscan', 2, 1, '236'),
(1071, 'Banks Door', '1', '0', 'banksdoor', 2, 1, '236'),
(1072, 'Banks Heater', '1', '0', 'banksheater', 2, 1, '236'),
(1073, 'Barbequeset', '1', '0', 'barbequeset', 2, 1, '207'),
(1074, 'Barra', '1', '0', 'barra', 2, 1, '203'),
(1075, 'Bartender Costume', '1', '0', 'bartender_costume', 2, 1, '208'),
(1076, 'Batista', '1', '0', 'batista', 2, 1, '209'),
(1077, 'Battle 1', '1', '0', 'battle1', 2, 1, '228'),
(1078, 'Battle 3', '1', '0', 'battle3', 2, 1, '228'),
(1079, 'Beachbunny Beachball', '1', '0', 'beachbunny_beachball', 2, 1, '207'),
(1080, 'Beachbunny Beachball Bouncing', '1', '0', 'beachbunny_beachball_bouncing', 2, 1, '207'),
(1081, 'Beachbunny Bmovie Poster', '1', '0', 'beachbunny_bmovieposter', 2, 1, '207'),
(1082, 'Beachbunny Bunny Suit', '1', '0', 'beachbunny_bunny_suit', 2, 1, '207'),
(1083, 'Beachbunny Peep', '1', '0', 'beachbunny_peep', 2, 1, '207'),
(1084, 'Beachbunny Roaster Bunny', '1', '0', 'beachbunny_roaster_bunny', 2, 1, '207'),
(1085, 'Beachgirl', '1', '0', 'beachgirl_146x146', 2, 1, '201'),
(1086, 'Bear', '1', '0', 'bear', 2, 1, '226'),
(1087, 'Bellydancer', '1', '0', 'bellydancer', 2, 1, '205'),
(1088, 'Beth Phoenix', '1', '0', 'bethphoenix', 2, 1, '209'),
(1089, 'Beth Phoenix Skinny', '1', '0', 'bethphoenixskinny', 2, 1, '209'),
(1090, 'Groupinfo Background', '1', '0', 'bg_groupinfo', 2, 1, '228'),
(1092, 'Big Daddy V', '1', '0', 'bigdaddyv', 2, 1, '209'),
(1093, 'Big Show', '1', '0', 'bigshow', 2, 1, '209'),
(1094, 'Billy Graham', '1', '0', 'billygraham', 2, 1, '209'),
(1095, 'Bird Suit', '1', '0', 'bird_suit', 2, 1, '210'),
(1096, 'Bling a', '1', '0', 'bling_a', 2, 1, '211'),
(1097, 'Bling b', '1', '0', 'bling_b', 2, 1, '211'),
(1098, 'Bling c', '1', '0', 'bling_c', 2, 1, '211'),
(1099, 'Bling Comma', '1', '0', 'bling_comma', 2, 1, '211'),
(1100, 'Bling d', '1', '0', 'bling_d', 2, 1, '211'),
(1101, 'Bling Dot', '1', '0', 'bling_dot', 2, 1, '211'),
(1102, 'Bling e', '1', '0', 'bling_e', 2, 1, '211'),
(1103, 'Bling Exclamation', '1', '0', 'bling_exclamation', 2, 1, '211'),
(1104, 'Bling f', '1', '0', 'bling_f', 2, 1, '211'),
(1105, 'Bling g', '1', '0', 'bling_g', 2, 1, '211'),
(1106, 'Bling h', '1', '0', 'bling_h', 2, 1, '211'),
(1107, 'Bling i', '1', '0', 'bling_i', 2, 1, '211'),
(1108, 'Bling j', '1', '0', 'bling_j', 2, 1, '211'),
(1109, 'Bling k', '1', '0', 'bling_k', 2, 1, '211'),
(1110, 'Bling l', '1', '0', 'bling_l', 2, 1, '211'),
(1111, 'Bling Line', '1', '0', 'bling_line', 2, 1, '211'),
(1112, 'Bling m', '1', '0', 'bling_m', 2, 1, '211'),
(1113, 'Bling n', '1', '0', 'bling_n', 2, 1, '211'),
(1114, 'Bling o', '1', '0', 'bling_o', 2, 1, '211'),
(1115, 'Bling p', '1', '0', 'bling_p', 2, 1, '211'),
(1116, 'Bling q', '1', '0', 'bling_q', 2, 1, '211'),
(1117, 'Bling Question', '1', '0', 'bling_question', 2, 1, '211'),
(1118, 'Bling r', '1', '0', 'bling_r', 2, 1, '211'),
(1119, 'Bling s', '1', '0', 'bling_s', 2, 1, '211'),
(1120, 'Bling Star', '1', '0', 'bling_star', 2, 1, '211'),
(1121, 'Bling t', '1', '0', 'bling_t', 2, 1, '211'),
(1122, 'Bling u', '1', '0', 'bling_u', 2, 1, '211'),
(1123, 'Bling Underscore', '1', '0', 'bling_underscore', 2, 1, '211'),
(1124, 'Bling v', '1', '0', 'bling_v', 2, 1, '211'),
(1125, 'Bling w', '1', '0', 'bling_w', 2, 1, '211'),
(1126, 'Bling x', '1', '0', 'bling_x', 2, 1, '211'),
(1127, 'Bling y', '1', '0', 'bling_y', 2, 1, '211'),
(1128, 'Bling z', '1', '0', 'bling_z', 2, 1, '211'),
(1129, 'Bling Bling Stars', '1', '0', 'blingblingstars', 2, 1, '237'),
(1130, 'Bling Hearts', '1', '0', 'blinghearts', 2, 1, '237'),
(1131, 'Bling Heartp', '1', '0', 'blingheartp', 2, 1, '1000'),
(1132, 'Blue Hockey Stick', '1', '0', 'bluehockeystick', 2, 1, '213'),
(1133, 'Blue Starfish', '1', '0', 'bluestarfish', 2, 1, '228'),
(1134, 'Bobba Curse', '1', '0', 'bobbacurse', 2, 1, '228'),
(1136, 'Boborton', '1', '0', 'boborton', 2, 1, '209'),
(1137, 'Bonbon Duck', '1', '0', 'bonbon_duck_146x146', 2, 1, '214'),
(1138, 'Bonbon Mouse', '1', '0', 'bonbon_mouse_146x146', 2, 1, '214'),
(1139, 'Bonbon Rat', '1', '0', 'bonbon_rat_146x146', 2, 1, '214'),
(1140, 'Boogeyman', '1', '0', 'boogeyman', 2, 1, '209'),
(1141, 'Bootsitjalapaset Red', '1', '0', 'bootsitjalapaset_red', 2, 1, '208'),
(1142, 'Bottes Bleu', '1', '0', 'bottesbleu', 2, 1, '1000'),
(1143, 'Bouledeneige', '1', '0', 'bouledeneige', 2, 1, '1000'),
(1144, 'Bowser Sticker v1', '1', '0', 'bowser_sticker_v1', 2, 1, '212'),
(1145, 'Bozzanova', '1', '0', 'bozzanova', 2, 1, '216'),
(1146, 'BRA Football Guest 2', '1', '0', 'bra_football_guest2', 2, 1, '232'),
(1147, 'Bratz Featured Clique', '1', '0', 'bratz_featuredclique', 2, 1, '214'),
(1148, 'Brian Kendrick', '1', '0', 'briankendrick', 2, 1, '209'),
(1149, 'British Legion', '1', '0', 'britishlegion', 2, 1, '228'),
(1150, 'Britney', '1', '0', 'britney', 2, 1, '228'),
(1151, 'Bronze Medallion', '1', '0', 'bronzemedallion', 2, 1, '1000'),
(1152, 'Bullet 1', '1', '0', 'bullet1', 2, 1, '228'),
(1153, 'Bullybuster', '1', '0', 'bullybuster', 2, 1, '228'),
(1155, 'Burger', '1', '0', 'burger', 2, 1, '228'),
(1156, 'Businesswoman', '1', '0', 'businesswoman_146x146', 2, 1, '201'),
(1157, 'Butterfly', '1', '0', 'butterfly_01', 2, 1, '210'),
(1158, 'C', '1', '0', 'c', 2, 1, '203'),
(1159, 'CA Hockeygoalie 2', '1', '0', 'ca_hockeygoalie2', 2, 1, '213'),
(1160, 'Camel', '1', '0', 'camel', 2, 1, '228'),
(1162, 'Candice Michelle', '1', '0', 'candicemichelle', 2, 1, '209'),
(1163, 'Candycorn', '1', '0', 'candycorn', 2, 1, '228'),
(1164, 'Carlito', '1', '0', 'carlito', 2, 1, '209'),
(1165, 'Cassette 1', '1', '0', 'cassette1', 2, 1, '228'),
(1166, 'Cassette 2', '1', '0', 'cassette2', 2, 1, '228'),
(1167, 'Cassette 3', '1', '0', 'cassette3', 2, 1, '228'),
(1168, 'Cassette 4', '1', '0', 'cassette4', 2, 1, '228'),
(1170, 'Celeb Ticket Veronicas', '1', '0', 'celebticket_veronicas', 2, 1, '214'),
(1171, 'Cena', '1', '0', 'cena', 2, 1, '209'),
(1172, 'Chain Horizontal', '1', '0', 'chain_horizontal', 2, 1, '215'),
(1173, 'Chain Vertical', '1', '0', 'chain_vertical', 2, 1, '215'),
(1174, 'Cheerleader', '1', '0', 'cheerleader_146x146', 2, 1, '201'),
(1175, 'Cheese Badge', '1', '0', 'cheese_badge', 2, 1, '204'),
(1177, 'Cheese Suit Sticker', '1', '0', 'cheese_suit_sticker', 2, 1, '208'),
(1178, 'Cheshirecat', '1', '0', 'cheshirecat', 2, 1, '216'),
(1179, 'Chewed Bubblegum', '1', '0', 'chewed_bubblegum', 2, 1, '228'),
(1180, 'Chile', '1', '0', 'chile', 2, 1, '232'),
(1181, 'Chocolates', '1', '0', 'chocolates', 2, 1, '228'),
(1183, 'Chris Jericho', '1', '0', 'chrisjericho', 2, 1, '209'),
(1184, 'Chuck Palumbo', '1', '0', 'chuckpalumbo', 2, 1, '209'),
(1185, 'Clothes line', '1', '0', 'clothesline', 2, 1, '228'),
(1186, 'Clothes line 5', '1', '0', 'clothesline5', 2, 1, '1000'),
(1187, 'CM Punk', '1', '0', 'cmpunk', 2, 1, '209'),
(1188, 'CN Teleskull', '1', '0', 'cn_teleskull', 2, 1, '220'),
(1190, 'CNY Dragon Body L', '1', '0', 'cny_dragon_body_l', 2, 1, '217'),
(1191, 'CNY Dragon Body R', '1', '0', 'cny_dragon_body_r', 2, 1, '217'),
(1192, 'CNY Dragon Head L', '1', '0', 'cny_dragon_head_l', 2, 1, '217'),
(1193, 'CNY Dragon Head R', '1', '0', 'cny_dragon_head_r', 2, 1, '217'),
(1195, 'CNY Kunfu Dude', '1', '0', 'cny_kunfu_dude', 2, 1, '217'),
(1197, 'CNY Kunfu Girl', '1', '0', 'cny_kungfu_girl', 2, 1, '217'),
(1198, 'Colombia', '1', '0', 'colombia', 2, 1, '232'),
(1199, 'Comma', '1', '0', 'comma', 2, 1, '203'),
(1203, 'Crase', '1', '0', 'crase', 2, 1, '203'),
(1205, 'Cube Deglace', '1', '0', 'cubedeglace', 2, 1, '1000'),
(1206, 'Curt Hawkins', '1', '0', 'curthawkins', 2, 1, '209'),
(1207, 'D', '1', '0', 'd', 2, 1, '203'),
(1208, 'Dag of Habbo Trophy', '1', '0', 'dagofhabbo_trophy', 2, 1, '228'),
(1209, 'DagorNot', '1', '0', 'dagornot', 2, 1, '228'),
(1210, 'DE 4th Bday', '1', '0', 'de_bday_4', 2, 1, '206'),
(1211, 'Deal Girasoles', '1', '0', 'dealgirasoles', 2, 1, '1000'),
(1214, 'Deal easter 6', '1', '0', 'deal_eas07_6', 2, 1, '210'),
(1215, 'Deal easter 7', '1', '0', 'deal_eas07_7', 2, 1, '210'),
(1216, 'Deal easter 8', '1', '0', 'deal_eas07_8', 2, 1, '210'),
(1217, 'Deal goth border Horizontale', '1', '0', 'deal_goth_border_hor', 2, 1, '219'),
(1218, 'deal goth border Verticale', '1', '0', 'deal_goth_border_ver', 2, 1, '219'),
(1219, 'DH Smith', '1', '0', 'dhsmith', 2, 1, '209'),
(1220, 'Dia de Internetsticker 2008', '1', '0', 'diadeinternetsticker2008_001', 2, 1, '214'),
(1221, 'Diamond Reward', '1', '0', 'diamond_reward', 2, 1, '237'),
(1222, 'Dim Sims', '1', '0', 'dimsims', 2, 1, '228'),
(1223, 'DK Bobbacurse 2', '1', '0', 'dk_bobbacurse_2', 2, 1, '228'),
(1224, 'Doelee', '1', '0', 'doelee', 2, 1, '216'),
(1225, 'Donk', '1', '0', 'donk', 2, 1, '216'),
(1226, 'Dot', '1', '0', 'dot', 2, 1, '203'),
(1227, 'Dudesons', '1', '0', 'dudesons', 2, 1, '214'),
(1228, 'Durian', '1', '0', 'durian', 2, 1, '228'),
(1230, 'E', '1', '0', 'e', 2, 1, '203'),
(1231, 'Easter Bird', '1', '0', 'easter_bird', 2, 1, '210'),
(1236, 'Easter Broomstick_001', '1', '0', 'easter_broomstick_001', 2, 1, '210'),
(1238, 'Easter Bunnymoped', '1', '0', 'easter_bunnymoped', 2, 1, '210'),
(1240, 'Easter Carrot_rocket', '1', '0', 'easter_carrot_rocket', 2, 1, '210'),
(1251, 'Easter Pointyhat', '1', '0', 'easter_pointyhat', 2, 1, '210'),
(1253, 'Easter Rabbit_in_hole', '1', '0', 'easter_rabbit_in_hole', 2, 1, '210'),
(1255, 'Easter Egg Costume', '1', '0', 'easteregg_costume', 2, 1, '210'),
(1258, 'Edge', '1', '0', 'edge', 2, 1, '209'),
(1259, 'Edito Fisherman Bait', '1', '0', 'edito_fisherman_bait', 2, 1, '228'),
(1260, 'Edito Logo', '1', '0', 'edito_logo', 2, 1, '228'),
(1261, 'Edito Logo 1', '1', '0', 'edito_logo_001', 2, 1, '1000'),
(1262, 'Edito Petit Talingots', '1', '0', 'edito_petit_talingots', 2, 1, '1000'),
(1263, 'Eggs', '1', '0', 'eggs', 2, 1, '220'),
(1264, 'Elegant Bling', '1', '0', 'elegant_bling', 2, 1, '237'),
(1265, 'Elijah Burke', '1', '0', 'elijahburke', 2, 1, '209'),
(1266, 'E4 Years', '1', '0', 'e4_years', 2, 1, '1000'),
(1267, 'Educk Sticker', '1', '0', 'educk_sticker', 2, 1, '1000'),
(1268, 'Evil Easter Bunny', '1', '0', 'evil_easterbunny', 2, 1, '1000'),
(1269, 'Evil Giant Bunny', '1', '0', 'evil_giant_bunny', 2, 1, '220'),
(1270, 'Exclamation', '1', '0', 'exclamation', 2, 1, '203'),
(1271, 'Executive Cheappen', '1', '0', 'exe_sticker_cheappen', 2, 1, '228'),
(1272, 'Executive Luxurypen', '1', '0', 'exe_sticker_luxurypen', 2, 1, '228'),
(1273, 'Extra Sduck Left', '1', '0', 'extra_sduck_left', 2, 1, '1000'),
(1274, 'Extra Sduck Right', '1', '0', 'extra_sduck_right', 2, 1, '1000'),
(1275, 'Extra Ssnowball', '1', '0', 'extra_ssnowball', 2, 1, '1000'),
(1276, 'Extreme Dudesons', '1', '0', 'extreme_dudesons', 2, 1, '214'),
(1277, 'Eye Left', '1', '0', 'eyeleft', 2, 1, '220'),
(1278, 'Eye Right', '1', '0', 'eyeright', 2, 1, '220'),
(1279, 'F', '1', '0', 'f', 2, 1, '203'),
(1280, 'Fantastic Four Logo', '1', '0', 'fantasticfourlogo', 2, 1, '214'),
(1281, 'Featuredgroup', '1', '0', 'featuredgroup', 2, 1, '50'),
(1283, 'Featuredgroup Sticker', '1', '0', 'featuredgroup_sticker', 2, 1, '50'),
(1284, 'Felix 1', '1', '0', 'felix01', 2, 1, '214'),
(1285, 'Felix 2', '1', '0', 'felix02', 2, 1, '214'),
(1286, 'Felix 3', '1', '0', 'felix03b', 2, 1, '214'),
(1289, 'Festus', '1', '0', 'festus', 2, 1, '209'),
(1290, 'Fikoirakisu', '1', '0', 'fikoirakisu', 2, 1, '1000'),
(1291, 'FI Golden Snake', '1', '0', 'fi_golden_snake', 2, 1, '228'),
(1292, 'FI Koirakisu 2', '1', '0', 'fi_koirakisu2', 2, 1, '216'),
(1293, 'FI Mino', '1', '0', 'fi_mino', 2, 1, '216'),
(1294, 'FI Posti Box', '1', '0', 'fi_posti_box', 2, 1, '216'),
(1295, 'FI Posti Girl', '1', '0', 'fi_posti_girl', 2, 1, '216'),
(1296, 'FI Rasmu 2', '1', '0', 'fi_rasmu2_194x130', 2, 1, '1000'),
(1297, 'Fieldberries', '1', '0', 'fieldberries', 2, 1, '214'),
(1298, 'Fiesta Chica Tampax', '1', '0', 'fiesta_chica_tampax', 2, 1, '214'),
(1299, 'Fiesta Minifalda 1', '1', '0', 'fiesta_minifalda_1', 2, 1, '214'),
(1300, 'Fiesta Minifalda 2', '1', '0', 'fiesta_minifalda_2', 2, 1, '214'),
(1301, 'Fiesta Welcome', '1', '0', 'fiesta_welcome', 2, 1, '214'),
(1302, 'Filmstrip Corner Botleft', '1', '0', 'filmstrip_corner_botleft', 2, 1, '221'),
(1303, 'Filmstrip Corner Botright', '1', '0', 'filmstrip_corner_botright', 2, 1, '221'),
(1304, 'Filmstrip Corner Topleft', '1', '0', 'filmstrip_corner_topleft', 2, 1, '221'),
(1305, 'Filmstrip Corner Topright', '1', '0', 'filmstrip_corner_topright', 2, 1, '221'),
(1306, 'Filmstrip Horiz', '1', '0', 'filmstrip_horiz', 2, 1, '221'),
(1307, 'Filmstrip Vert', '1', '0', 'filmstrip_vert', 2, 1, '221'),
(1308, 'Finger Push', '1', '0', 'finger_push', 2, 1, '222'),
(1309, 'Fish', '1', '0', 'fish', 2, 1, '228'),
(1310, 'Flameskull', '1', '0', 'flameskull', 2, 1, '1000'),
(1311, 'Flower 1', '1', '0', 'flower1png', 2, 1, '214'),
(1312, 'Flower 2', '1', '0', 'flower2', 2, 1, '214'),
(1313, 'Football', '1', '0', 'football', 2, 1, '232'),
(1314, 'Free Hugs', '1', '0', 'free_hugs', 2, 1, '216'),
(1317, 'Funaki', '1', '0', 'funaki', 2, 1, '209'),
(1318, 'FWRK Blue', '1', '0', 'fwrk_blue', 2, 1, '223'),
(1319, 'FWRK Pink', '1', '0', 'fwrk_pink', 2, 1, '223'),
(1320, 'FWRK Yellow', '1', '0', 'fwrk_yellow', 2, 1, '223'),
(1321, 'G', '1', '0', 'g', 2, 1, '203'),
(1322, 'Galasticker', '1', '0', 'galasticker', 2, 1, '1000'),
(1323, 'Gamask', '1', '0', 'gamask', 2, 1, '1000'),
(1324, 'Gaspar', '1', '0', 'gaspar', 2, 1, '216'),
(1325, 'Gaur', '1', '0', 'gaur', 2, 1, '1000'),
(1327, 'Gaursticker 3', '1', '0', 'gaursticker3', 2, 1, '214'),
(1328, 'Genie Fire Head', '1', '0', 'genie_fire_head', 2, 1, '208'),
(1330, 'Girlfriend Blue', '1', '0', 'gf_hotornot_blue', 2, 1, '214'),
(1331, 'Girlfriend Pink', '1', '0', 'gf_hotornot_pink', 2, 1, '214'),
(1332, 'Global World Sticker', '1', '0', 'globalw_sticker', 2, 1, '235'),
(1333, 'Global World Sticker 2', '1', '0', 'globalw_sticker_001', 2, 1, '1000'),
(1334, 'Global World Tstorieoldweb', '1', '0', 'globalw_tstorieoldweb', 2, 1, '1000'),
(1335, 'Gold Medallion', '1', '0', 'goldmedallion', 2, 1, '1000'),
(1336, 'Gorilla Hand', '1', '0', 'gorilla_hand', 2, 1, '1000'),
(1337, 'Gorilla Hand 1', '1', '0', 'gorillahand1', 2, 1, '220'),
(1338, 'Gorilla Hand 2', '1', '0', 'gorillahand2', 2, 1, '220'),
(1344, 'Gothic Draculacape', '1', '0', 'gothic_draculacape', 2, 1, '214'),
(1346, 'Gothic Scienceplatform', '1', '0', 'gothic_scienceplatform', 2, 1, '219'),
(1348, 'GP Logo White', '1', '0', 'gplogo_white', 2, 1, '1000'),
(1351, 'Gras Deal', '1', '0', 'grasdeal', 2, 1, '1000'),
(1352, 'Grave Sticker', '1', '0', 'gravesticker', 2, 1, '220'),
(1353, 'Grave Sticker 2', '1', '0', 'gravesticker2', 2, 1, '220'),
(1354, 'Green Hockey Stick', '1', '0', 'greenhockeystick', 2, 1, '213'),
(1355, 'Greenpeace', '1', '0', 'greenpeace', 2, 1, '1000'),
(1356, 'Greenpeace Sticker', '1', '0', 'greenpeace_sticker', 2, 1, '1000'),
(1357, 'Greenpeace White', '1', '0', 'greenpeacewhite', 2, 1, '1000'),
(1359, 'Grossebouledeneige', '1', '0', 'grossebouledeneige', 2, 1, '1000'),
(1360, 'Grunge Polaroid 1', '1', '0', 'grunge_polaroid_1', 2, 1, '216'),
(1361, 'Grunge Polaroid 2', '1', '0', 'grunge_polaroid_2', 2, 1, '216'),
(1362, 'Grunge Polaroid 3', '1', '0', 'grunge_polaroid_3', 2, 1, '216'),
(1363, 'Grunge Polaroid 4', '1', '0', 'grunge_polaroid_4', 2, 1, '216'),
(1364, 'Grunge Polaroid 5', '1', '0', 'grunge_polaroid_5', 2, 1, '216'),
(1365, 'Guard 1', '1', '0', 'guard1', 2, 1, '216'),
(1366, 'Guard 2', '1', '0', 'guard2', 2, 1, '216'),
(1367, 'Guccimama', '1', '0', 'guccimama', 2, 1, '216'),
(1368, 'H', '1', '0', 'h', 2, 1, '203'),
(1370, 'Habbo Island', '1', '0', 'habbo_island', 2, 1, '207'),
(1371, 'Habbo Toolbar Sticker', '1', '0', 'habbo_toolbar_sticker', 2, 1, '1000'),
(1372, 'Habbo By Night-sticker', '1', '0', 'habbobynightsticker', 2, 1, '220'),
(1373, 'Habbohome Of The Month', '1', '0', 'habbohome_of_the_month', 2, 1, '50'),
(1375, 'Habborella Logo', '1', '0', 'habborella_logo', 2, 1, '228'),
(1376, 'Habboween Background', '1', '0', 'habboween_bg', 2, 1, '1000'),
(1377, 'Hacksaw', '1', '0', 'hacksaw', 2, 1, '209'),
(1378, 'Hat Clown 2', '1', '0', 'hat_clown2', 2, 1, '208'),
(1379, 'HC Hat', '1', '0', 'hc_hat', 2, 1, '208'),
(1380, 'Highlighter 1', '1', '0', 'highlighter_1', 2, 1, '238'),
(1381, 'Highlighter 2', '1', '0', 'highlighter_2', 2, 1, '238'),
(1382, 'Highlighter Mark 1', '1', '0', 'highlighter_mark1', 2, 1, '238'),
(1383, 'Highlighter Mark 2', '1', '0', 'highlighter_mark2', 2, 1, '238'),
(1384, 'Highlighter Mark 3', '1', '0', 'highlighter_mark3', 2, 1, '238'),
(1385, 'Highlighter Mark 4', '1', '0', 'highlighter_mark4b', 2, 1, '238'),
(1386, 'Highlighter Mark 5', '1', '0', 'highlighter_mark5', 2, 1, '238'),
(1387, 'Highlighter Mark 6', '1', '0', 'highlighter_mark6', 2, 1, '238'),
(1388, 'Hockey Habbo', '1', '0', 'hockey_habbo', 2, 1, '213'),
(1389, 'Hockeyref', '1', '0', 'hockeyref', 2, 1, '213'),
(1390, 'Holycarp', '1', '0', 'holycarp', 2, 1, '228'),
(1391, 'Homer', '1', '0', 'homer', 2, 1, '216'),
(1392, 'Horizontalink', '1', '0', 'horizontalink', 2, 1, '238'),
(1393, 'Hornswoggle', '1', '0', 'hornswoggle', 2, 1, '209'),
(1394, 'HP Guest', '1', '0', 'hp_guest', 2, 1, '216'),
(1421, 'JP 5 Years', '1', '0', 'hwjp_5years', 2, 1, '1000'),
(1422, 'HW Lapanen Blue', '1', '0', 'hwlapanen_blue', 2, 1, '1000'),
(1423, 'HW Ssnowqueen', '1', '0', 'hwssnowqueen', 2, 1, '1000'),
(1424, 'HW Sticker Galafinal', '1', '0', 'hwsticker_galafinal', 2, 1, '1000'),
(1425, 'Valentine Cupido Anim', '1', '0', 'hwval_cupido_anim', 2, 1, '1000'),
(1426, 'Valentine Sticker Bobbadice', '1', '0', 'hwval_sticker_bobbadice', 2, 1, '1000'),
(1427, 'Xmas Box Suit Mint 2', '1', '0', 'hwxmabox_suit_mint2', 2, 1, '1000'),
(1428, 'Xmas Cat Animated', '1', '0', 'hwxmacat_animated', 2, 1, '1000'),
(1429, '3d Glasses', '1', '0', 'hw_3d_glasses', 2, 1, '221'),
(1430, 'Actionstar', '1', '0', 'hw_actionstar', 2, 1, '221'),
(1431, 'Amp Big', '1', '0', 'hw_amp_big', 2, 1, '221'),
(1432, 'Amp Small', '1', '0', 'hw_amp_small', 2, 1, '221'),
(1433, 'Bartender Costume', '1', '0', 'hw_bartender_costume', 2, 1, '221'),
(1434, 'Bassplayer Boy', '1', '0', 'hw_bassplayer_boy', 2, 1, '221'),
(1435, 'Bassplayer Girl', '1', '0', 'hw_bassplayer_girl', 2, 1, '221'),
(1437, 'Skull Background', '1', '0', 'hw_bgpattern_skull', 2, 1, '221'),
(1438, 'Bigcamera', '1', '0', 'hw_bigcamera', 2, 1, '221'),
(1439, 'Bouncers', '1', '0', 'hw_bouncers', 2, 1, '221'),
(1440, 'Camera L', '1', '0', 'hw_camera_l', 2, 1, '221'),
(1441, 'Camera R', '1', '0', 'hw_camera_r', 2, 1, '221'),
(1442, 'Camopant L', '1', '0', 'hw_camopantl', 2, 1, '1000'),
(1443, 'Camopant R', '1', '0', 'hw_camopantr', 2, 1, '1000'),
(1444, 'Camopant R1', '1', '0', 'hw_camopantr1', 2, 1, '1000'),
(1445, 'Carpet Corner Down', '1', '0', 'hw_carpet_corner_down', 2, 1, '221'),
(1446, 'Carpet Corner Up', '1', '0', 'hw_carpet_corner_up', 2, 1, '221'),
(1447, 'Carpet End Ldown', '1', '0', 'hw_carpet_end_ldown', 2, 1, '221'),
(1448, 'Carpet End Lup', '1', '0', 'hw_carpet_end_lup', 2, 1, '221'),
(1449, 'Carpet End Rdown', '1', '0', 'hw_carpet_end_rdown', 2, 1, '221'),
(1450, 'Carpet End Rup', '1', '0', 'hw_carpet_end_rup', 2, 1, '221'),
(1451, 'Carpet L', '1', '0', 'hw_carpet_l', 2, 1, '221'),
(1452, 'Carpet R', '1', '0', 'hw_carpet_r', 2, 1, '221'),
(1453, 'Drummer Boy', '1', '0', 'hw_drummer_boy', 2, 1, '221'),
(1454, 'Drummer Girl', '1', '0', 'hw_drummer_girl', 2, 1, '221'),
(1455, 'Edito Logo', '1', '0', 'hw_edito_logo', 2, 1, '1000'),
(1456, 'Guitarplayer Black', '1', '0', 'hw_guitarplayer_black', 2, 1, '221'),
(1457, 'Guitarplayer White', '1', '0', 'hw_guitarplayer_white', 2, 1, '221'),
(1458, 'Hairspray', '1', '0', 'hw_hairspray', 2, 1, '221'),
(1459, 'Hippie', '1', '0', 'hw_hippie', 2, 1, '221'),
(1460, 'Hitcher', '1', '0', 'hw_hitcher', 2, 1, '221'),
(1461, 'Inmate', '1', '0', 'hw_inmate', 2, 1, '221'),
(1462, 'Kenny Burger', '1', '0', 'hw_kenny_burger', 2, 1, '221'),
(1463, 'Kenny Fight', '1', '0', 'hw_kenny_fight', 2, 1, '221'),
(1464, 'Kenny Shock', '1', '0', 'hw_kenny_shock', 2, 1, '221'),
(1465, 'Keyboards', '1', '0', 'hw_keyboards', 2, 1, '221'),
(1468, 'Logoanim', '1', '0', 'hw_logoanim', 2, 1, '221'),
(1469, 'Mega Afro', '1', '0', 'hw_mega_afro', 2, 1, '221'),
(1470, 'Microphone', '1', '0', 'hw_microphone', 2, 1, '221'),
(1471, 'Moh Logo', '1', '0', 'hw_moh_logo', 2, 1, '221'),
(1472, 'Shades', '1', '0', 'hw_shades', 2, 1, '221'),
(1473, 'Speedobunny', '1', '0', 'hw_speedobunny', 2, 1, '221'),
(1474, 'Valentine Love Costume', '1', '0', 'hw_val_sticker_love-costume', 2, 1, '221'),
(1475, 'Veronicas', '1', '0', 'hw_veronicas', 2, 1, '1000'),
(1476, 'Habbowood Klaffi 1', '1', '0', 'hwood07klaffi2', 2, 1, '1000'),
(1477, 'Habbowood Klaffi 2', '1', '0', 'hwood07_klaffi2', 2, 1, '221'),
(1478, 'I', '1', '0', 'i', 2, 1, '203'),
(1480, 'I love Bobba', '1', '0', 'i_love_bobba', 2, 1, '204'),
(1481, 'I love Coffee', '1', '0', 'i_love_coffee', 2, 1, '204'),
(1483, 'Icecube Big', '1', '0', 'icecube_big', 2, 1, '235'),
(1484, 'Icecube Small', '1', '0', 'icecube_small', 2, 1, '235'),
(1487, 'Impactsdeneige', '1', '0', 'impactsdeneige', 2, 1, '1000'),
(1488, 'Inked Antisquidf', '1', '0', 'inked_antisquidf', 2, 1, '239'),
(1489, 'Inked Antisquidm', '1', '0', 'inked_antisquidm', 2, 1, '239'),
(1490, 'Inked Antisquidrank', '1', '0', 'inked_antisquidrank', 2, 1, '239'),
(1491, 'Inked Inkedblink', '1', '0', 'inked_inkedblink', 2, 1, '239'),
(1492, 'Inked Lamp', '1', '0', 'inked_lamp', 2, 1, '239'),
(1493, 'Inked Love', '1', '0', 'inked_love', 2, 1, '239'),
(1494, 'Inked Poster', '1', '0', 'inked_poster', 2, 1, '239'),
(1495, 'Inked Ship', '1', '0', 'inked_ship', 2, 1, '239'),
(1496, 'Inked Spit', '1', '0', 'inked_spit', 2, 1, '239'),
(1497, 'Inked Squidpants', '1', '0', 'inked_squidpants', 2, 1, '239'),
(1498, 'Inked Suidpatrol', '1', '0', 'inked_suidpatrol', 2, 1, '239'),
(1499, 'Island', '1', '0', 'island', 2, 1, '207'),
(1500, 'IT Habbohome', '1', '0', 'it_habbohome', 2, 1, '50'),
(1501, 'IT Stickerpodio', '1', '0', 'it_stickerpodio', 2, 1, '228'),
(1502, 'IT Toilet', '1', '0', 'it_toilet', 2, 1, '216'),
(1503, 'J', '1', '0', 'j', 2, 1, '203'),
(1504, 'James Curtis', '1', '0', 'jamescurtis', 2, 1, '209'),
(1505, 'Jared', '1', '0', 'jared', 2, 1, '216'),
(1506, 'Jarno Guest', '1', '0', 'jarno_guest', 2, 1, '216'),
(1507, 'Jarppi Guest', '1', '0', 'jarppi_guest', 2, 1, '216'),
(1508, 'Jarppi Guest 2', '1', '0', 'jarppi_guest2', 2, 1, '216'),
(1509, 'JBL', '1', '0', 'jbl', 2, 1, '209'),
(1510, 'Jeff Hardy', '1', '0', 'jeffhardy', 2, 1, '209'),
(1511, 'Jenkki Monster Sticker', '1', '0', 'jenkki_monster_sticker', 2, 1, '214'),
(1513, 'Jesse', '1', '0', 'jesse', 2, 1, '209'),
(1514, 'Jigoku Shojo 1', '1', '0', 'jigoku_shojo_1', 2, 1, '214'),
(1515, 'Jigoku Shojo 2', '1', '0', 'jigoku_shojo_2', 2, 1, '214'),
(1516, 'Jimmyhart', '1', '0', 'jimmyhart', 2, 1, '209'),
(1517, 'Jimmysnuka', '1', '0', 'jimmysnuka', 2, 1, '209'),
(1518, 'Johnmorrison', '1', '0', 'johnmorrison', 2, 1, '209'),
(1519, 'JP 5 Uears', '1', '0', 'jp_5years', 2, 1, '206'),
(1520, 'JP Godzilla', '1', '0', 'jp_godzilla', 2, 1, '204'),
(1521, 'JP Sushi', '1', '0', 'jp_sushi', 2, 1, '204'),
(1522, 'Juice', '1', '0', 'juice', 2, 1, '228'),
(1523, 'Jukka Guest', '1', '0', 'jukka_guest', 2, 1, '216'),
(1524, 'Jukka Guest2', '1', '0', 'jukka_guest2', 2, 1, '216'),
(1525, 'July0408 Boom 1', '1', '0', 'july0408_boom_1', 2, 1, '223'),
(1526, 'July408 Auntsamantha', '1', '0', 'july408_auntsamantha', 2, 1, '223'),
(1527, 'July408 Boom 2', '1', '0', 'july408_boom_2', 2, 1, '223'),
(1528, 'July408 Boom 3', '1', '0', 'july408_boom_3', 2, 1, '223'),
(1529, 'July408 Boom 4', '1', '0', 'july408_boom_4', 2, 1, '223'),
(1530, 'July408 Border', '1', '0', 'july408_border', 2, 1, '223'),
(1531, 'July408 July4th', '1', '0', 'july408_july4th', 2, 1, '223'),
(1532, 'July408 Unclesam', '1', '0', 'july408_unclesam', 2, 1, '223'),
(1533, 'K', '1', '0', 'k', 2, 1, '203'),
(1534, 'Karigrandi Sticker', '1', '0', 'karigrandi_sticker', 2, 1, '214'),
(1535, 'Kennydy Kstra', '1', '0', 'kennydykstra', 2, 1, '209'),
(1536, 'Ketupat', '1', '0', 'ketupat', 2, 1, '228'),
(1537, 'Kevinthorn', '1', '0', 'kevinthorn', 2, 1, '209'),
(1538, 'KFP Sticker 1', '1', '0', 'kfp_sticker_01', 2, 1, '214'),
(1539, 'KFP Sticker 2', '1', '0', 'kfp_sticker_02', 2, 1, '214'),
(1540, 'KFP Sticker 3', '1', '0', 'kfp_sticker_03', 2, 1, '214'),
(1541, 'KFP Sticker 4', '1', '0', 'kfp_sticker_04', 2, 1, '214'),
(1542, 'KFP Sticker 5', '1', '0', 'kfp_sticker_05', 2, 1, '214'),
(1543, 'KFP Sticker 6', '1', '0', 'kfp_sticker_06', 2, 1, '214'),
(1544, 'KFP Sticker 7', '1', '0', 'kfp_sticker_07', 2, 1, '214'),
(1545, 'KIP Partnerbtn', '1', '0', 'kip_partnerbtn', 2, 1, '225'),
(1546, 'KIR Stamp 1', '1', '0', 'kir-stamp1', 2, 1, '225'),
(1547, 'KIR Bam Sticker', '1', '0', 'kir_bam_sticker', 2, 1, '225'),
(1548, 'KIR Elkah Sticker', '1', '0', 'kir_elkah_sticker', 2, 1, '225'),
(1549, 'KIR Foz Sticker', '1', '0', 'kir_foz_sticker', 2, 1, '225'),
(1550, 'KIR Fushi Sticker', '1', '0', 'kir_fushi_sticker', 2, 1, '225'),
(1551, 'KIR Stamp 1', '1', '0', 'kir_stamp1', 2, 1, '225'),
(1552, 'KIR Stamp 2', '1', '0', 'kir_stamp2', 2, 1, '225'),
(1553, 'KIR Stamp 3', '1', '0', 'kir_stamp3', 2, 1, '225'),
(1555, 'Kir Stamp', '1', '0', 'kir_stamp4', 2, 1, '225'),
(1557, 'KIR Stamp 5', '1', '0', 'kir_stamp5', 2, 1, '225'),
(1558, 'KIR Stamp 6', '1', '0', 'kir_stamp6', 2, 1, '225'),
(1559, 'KIR Stamp 7', '1', '0', 'kir_stamp6_002', 2, 1, '225'),
(1561, 'KIR Sticker', '1', '0', 'kir_sticker', 2, 1, '225'),
(1562, 'KIR Winner 1', '1', '0', 'kir_winner_01', 2, 1, '225'),
(1563, 'KIR Winner 2', '1', '0', 'kir_winner_02', 2, 1, '225'),
(1564, 'KIR Winner 3', '1', '0', 'kir_winner_03', 2, 1, '225'),
(1565, 'KIR Winner 4', '1', '0', 'kir_winner_04', 2, 1, '225'),
(1566, 'KIR Winner 5', '1', '0', 'kir_winner_05', 2, 1, '225'),
(1567, 'KIR Winner 6', '1', '0', 'kir_winner_06', 2, 1, '225'),
(1568, 'KIR Winner 7', '1', '0', 'kir_winner_07', 2, 1, '225'),
(1569, 'KIR Winner 8', '1', '0', 'kir_winner_08', 2, 1, '225'),
(1570, 'KIR Winner 9', '1', '0', 'kir_winner_09', 2, 1, '225'),
(1571, 'KIR Winner 10', '1', '0', 'kir_winner_10', 2, 1, '225'),
(1572, 'KIR Winner 11', '1', '0', 'kir_winner_11', 2, 1, '225'),
(1573, 'KIR Yobbo Sticker', '1', '0', 'kir_yobbo_sticker', 2, 1, '225'),
(1574, 'Kitsune Wonders', '1', '0', 'kitsune_wonders', 2, 1, '224'),
(1575, 'Kitsune Yelling', '1', '0', 'kitsune_yelling', 2, 1, '224'),
(1576, 'Kitune Fighting', '1', '0', 'kitune_fighting', 2, 1, '224'),
(1580, 'Krans', '1', '0', 'krans', 2, 1, '228'),
(1581, 'L', '1', '0', 'l', 2, 1, '203'),
(1582, 'Lamp 1', '1', '0', 'lamp_1', 2, 1, '228'),
(1583, 'Lamp 2', '1', '0', 'lamp_2', 2, 1, '229'),
(1584, 'Lamp 3', '1', '0', 'lamp_3', 2, 1, '229'),
(1585, 'Lamp 4', '1', '0', 'lamp_4', 2, 1, '229'),
(1586, 'Lamp Group', '1', '0', 'lamp_group', 2, 1, '229'),
(1588, 'Lapanen Blue', '1', '0', 'lapanen_blue', 2, 1, '229'),
(1593, 'Lapanen Purple', '1', '0', 'lapanen_purple', 2, 1, '229'),
(1594, 'Lapanen Red', '1', '0', 'lapanen_red', 2, 1, '229'),
(1596, 'Lapanen Yellow', '1', '0', 'lapanen_yellow', 2, 1, '229'),
(1597, 'Lashey', '1', '0', 'lashey', 2, 1, '209'),
(1598, 'Leafs 1', '1', '0', 'leafs1', 2, 1, '215'),
(1599, 'Leafs 2', '1', '0', 'leafs2', 2, 1, '215'),
(1600, 'Leapday', '1', '0', 'leapday', 2, 1, '229'),
(1602, 'Letrah', '1', '0', 'letrah', 2, 1, '203'),
(1603, 'Letrai', '1', '0', 'letrai', 2, 1, '203'),
(1604, 'Lightbulb', '1', '0', 'lightbulb', 2, 1, '229'),
(1605, 'Limo Back', '1', '0', 'limo_back', 2, 1, '221'),
(1606, 'Limo Doorpiece', '1', '0', 'limo_doorpiece', 2, 1, '221'),
(1607, 'Limo Front', '1', '0', 'limo_front', 2, 1, '221'),
(1608, 'Limo Windowpiece', '1', '0', 'limo_windowpiece', 2, 1, '221'),
(1609, 'Linha', '1', '0', 'linha', 2, 1, '203'),
(1610, 'Linnsticker', '1', '0', 'linnsticker', 2, 1, '214'),
(1611, 'Little Dog Little Dog', '1', '0', 'littledoglittledog', 2, 1, '1000'),
(1612, 'Little Dog Mechahead', '1', '0', 'littledogmechahead', 2, 1, '1000'),
(1613, 'Little Dog Walking Mecha', '1', '0', 'littledogwalkingmecha', 2, 1, '1000'),
(1614, 'Loderse', '1', '0', 'loderse', 2, 1, '214'),
(1616, 'Lovebed', '1', '0', 'lovebed', 2, 1, '226'),
(1617, 'M', '1', '0', 'm', 2, 1, '203'),
(1620, 'Malecapitain Costume', '1', '0', 'malecapitain_costume', 2, 1, '1000'),
(1622, 'Mansikka Tarra', '1', '0', 'mansikka_tarra', 2, 1, '214'),
(1623, 'Maria', '1', '0', 'maria', 2, 1, '209'),
(1624, 'Mark Henry', '1', '0', 'markhenry', 2, 1, '209'),
(1625, 'Matt Hardy', '1', '0', 'matthardy', 2, 1, '209'),
(1626, 'Matt Striker', '1', '0', 'mattstriker', 2, 1, '209'),
(1627, 'May Weather', '1', '0', 'mayweather', 2, 1, '209'),
(1628, 'Melchor', '1', '0', 'melchor', 2, 1, '216'),
(1629, 'Melina', '1', '0', 'melina', 2, 1, '209'),
(1631, 'Mexico', '1', '0', 'mexico', 2, 1, '232'),
(1633, 'Mid Sommar 1', '1', '0', 'midsommar_1', 2, 1, '229'),
(1634, 'Mike Knoxx', '1', '0', 'mikeknoxx', 2, 1, '209'),
(1635, 'Miss J', '1', '0', 'missj', 2, 1, '216'),
(1636, 'Money Low', '1', '0', 'money_o', 2, 1, '215'),
(1637, 'Money Stash', '1', '0', 'money_stash', 2, 1, '215'),
(1638, 'Money High', '1', '0', 'money_v', 2, 1, '215'),
(1639, 'Mooncake Dark', '1', '0', 'mooncake_dark', 2, 1, '217'),
(1640, 'Mooncake Light', '1', '0', 'mooncake_light', 2, 1, '217'),
(1641, 'Mr Kennedy', '1', '0', 'mrkennedy', 2, 1, '209'),
(1642, 'Mummimor', '1', '0', 'mummimor', 2, 1, '216'),
(1643, 'N', '1', '0', 'n', 2, 1, '203');
INSERT INTO `cms_homes_catalouge` (`id`, `name`, `type`, `subtype`, `data`, `price`, `amount`, `category`) VALUES
(1644, 'Nail 2', '1', '0', 'nail2', 2, 1, '222'),
(1645, 'Nail 3', '1', '0', 'nail3', 2, 1, '222'),
(1646, 'Needle 1', '1', '0', 'needle_1', 2, 1, '222'),
(1647, 'Needle 2', '1', '0', 'needle_2', 2, 1, '222'),
(1648, 'Needle 3', '1', '0', 'needle_3', 2, 1, '222'),
(1649, 'Needle 4', '1', '0', 'needle_4', 2, 1, '222'),
(1650, 'Needle 5', '1', '0', 'needle_5', 2, 1, '222'),
(1652, 'Newyear 2007', '1', '0', 'newyear_2007_anim', 2, 1, '223'),
(1655, 'Newyear Sparkler', '1', '0', 'newyear_sparkler', 2, 1, '223'),
(1656, 'Nigiri Sushi', '1', '0', 'nigirisushi', 2, 1, '224'),
(1657, 'NL Coinguy Animated', '1', '0', 'nl_coinguy_animated', 2, 1, '230'),
(1658, 'NL Cupido', '1', '0', 'nl_cupido', 2, 1, '226'),
(1659, 'NL Downtown Costume', '1', '0', 'nl_downtown_costume', 2, 1, '208'),
(1660, 'NL Firecracker', '1', '0', 'nl_firecracker', 2, 1, '217'),
(1661, 'NL Football Guest', '1', '0', 'nl_football_guest', 2, 1, '232'),
(1662, 'NL Football Guest 2', '1', '0', 'nl_football_guest2', 2, 1, '232'),
(1663, 'NL Limo', '1', '0', 'nl_limo', 2, 1, '221'),
(1664, 'NL Wanted Costume', '1', '0', 'nl_wanted_costume', 2, 1, '208'),
(1665, 'No Space Sticker', '1', '0', 'no_space_sticker', 2, 1, '204'),
(1666, 'No Way Out Slanted', '1', '0', 'nowayout_slanted', 2, 1, '214'),
(1667, 'N-Jury', '1', '0', 'njury', 2, 1, '1000'),
(1668, 'N-Logo', '1', '0', 'nlogo', 2, 1, '1000'),
(1669, 'N-Stage', '1', '0', 'nstage', 2, 1, '1000'),
(1670, 'Nunzio', '1', '0', 'nunzio', 2, 1, '209'),
(1671, 'NZ Heart', '1', '0', 'nz_heart', 2, 1, '204'),
(1672, 'NZ Tiki', '1', '0', 'nz_tiki', 2, 1, '204'),
(1673, 'O', '1', '0', 'o', 2, 1, '203'),
(1674, 'O with Dots', '1', '0', 'o_with_dots', 2, 1, '203'),
(1675, 'Ogopogo 1', '1', '0', 'ogopogo1', 2, 1, '217'),
(1676, 'Oldfence Left', '1', '0', 'oldfence_left', 2, 1, '230'),
(1677, 'Oldfence Right', '1', '0', 'oldfence_right', 2, 1, '230'),
(1678, 'Orca Ideal Home', '1', '0', 'orca_ideal_home', 2, 1, '230'),
(1679, 'P', '1', '0', 'p', 2, 1, '203'),
(1680, 'Paper Clip 1', '1', '0', 'paper_clip_1', 2, 1, '222'),
(1681, 'Paper Clip 2', '1', '0', 'paper_clip_2', 2, 1, '222'),
(1682, 'Paper Clip 3', '1', '0', 'paper_clip_3', 2, 1, '222'),
(1683, 'Parrot', '1', '0', 'parrot', 2, 1, '230'),
(1684, 'Patsday Claddagh', '1', '0', 'patsday_claddagh', 2, 1, '241'),
(1685, 'Patsday Kissme', '1', '0', 'patsday_kissme', 2, 1, '241'),
(1687, 'Patsday Potogold', '1', '0', 'patsday_potogold', 2, 1, '241'),
(1688, 'Patsday Shamborderh', '1', '0', 'patsday_shamborderh', 2, 1, '241'),
(1689, 'Patsday Shamborderv', '1', '0', 'patsday_shamborderv', 2, 1, '241'),
(1690, 'Patsday Shamrock', '1', '0', 'patsday_shamrock', 2, 1, '241'),
(1691, 'Paul London', '1', '0', 'paullondon', 2, 1, '209'),
(1692, 'Paul Orndorff', '1', '0', 'paulorndorff', 2, 1, '209'),
(1693, 'Petite Boule', '1', '0', 'petiteboule', 2, 1, '1000'),
(1694, 'Pinrock Inrio', '1', '0', 'pinrockinrio', 2, 1, '1000'),
(1695, 'Pirate', '1', '0', 'pirate', 2, 1, '1000'),
(1696, 'Pirate Captain', '1', '0', 'piratecaptain', 2, 1, '1000'),
(1697, 'Pirate Cutlass', '1', '0', 'piratecutlass', 2, 1, '1000'),
(1698, 'Pirate Dude 1', '1', '0', 'piratedude01', 2, 1, '1000'),
(1699, 'Pirate Dude 2', '1', '0', 'piratedude02', 2, 1, '1000'),
(1700, 'Pirate Flag', '1', '0', 'pirateflag', 2, 1, '1000'),
(1701, 'Pirate Scroll', '1', '0', 'piratescroll', 2, 1, '1000'),
(1702, 'Pirate Treasure 1', '1', '0', 'piratetreasure01', 2, 1, '1000'),
(1703, 'Pirate Treasure 2', '1', '0', 'piratetreasure02', 2, 1, '1000'),
(1704, 'Plaster', '1', '0', 'plaster', 2, 1, '229'),
(1705, 'Plaster 2', '1', '0', 'plaster2', 2, 1, '229'),
(1706, 'Ponto', '1', '0', 'ponto', 2, 1, '203'),
(1707, 'Poppy', '1', '0', 'poppy', 2, 1, '229'),
(1708, 'Poptart', '1', '0', 'poptartcv1b2', 2, 1, '1000'),
(1710, 'Poptart 2', '1', '0', 'poptartcv2b2', 2, 1, '1000'),
(1711, 'Poptart 3', '1', '0', 'poptartcv2ba', 2, 1, '1000'),
(1712, 'Poptarts 1', '1', '0', 'poptartsb1b', 2, 1, '1000'),
(1713, 'Poptarts 2', '1', '0', 'poptartsb2b', 2, 1, '1000'),
(1714, 'Pro Eco', '1', '0', 'pro_eco', 2, 1, '235'),
(1717, 'Prom of the Dead Sticker Brains', '1', '0', 'promofthedead_sticker_brains', 2, 1, '221'),
(1718, 'Prom of the Dead Sticker Dress', '1', '0', 'promofthedead_sticker_dress', 2, 1, '221'),
(1719, 'Prom of the Dead Sticker Duck', '1', '0', 'promofthedead_sticker_duck', 2, 1, '221'),
(1720, 'Prom of the Dead Sticker Poster', '1', '0', 'promofthedead_sticker_poster', 2, 1, '221'),
(1721, 'Prom of the Dead Sticker Suit', '1', '0', 'promofthedead_sticker_suit', 2, 1, '221'),
(1722, 'Prom of the Dead Sticker Zombie', '1', '0', 'promofthedead_sticker_zombie', 2, 1, '221'),
(1723, 'Q', '1', '0', 'q', 2, 1, '203'),
(1724, 'Queensibidi', '1', '0', 'queensibidi', 2, 1, '216'),
(1725, 'Question', '1', '0', 'question', 2, 1, '203'),
(1726, 'R', '1', '0', 'r', 2, 1, '203'),
(1727, 'Radar', '1', '0', 'radar', 2, 1, '216'),
(1728, 'Randy Orton', '1', '0', 'randyorton', 2, 1, '209'),
(1729, 'Rasta', '1', '0', 'rasta', 2, 1, '216'),
(1730, 'Ratv 2', '1', '0', 'ratv2', 2, 1, '217'),
(1731, 'Red Hockeystick', '1', '0', 'redhockeystick', 2, 1, '213'),
(1732, 'Redlamp', '1', '0', 'redlamp', 2, 1, '229'),
(1733, 'Red Starfish', '1', '0', 'redstarfish', 2, 1, '229'),
(1734, 'Referee 1 Guest', '1', '0', 'referee_01_guest', 2, 1, '216'),
(1735, 'Referee 2 Guest', '1', '0', 'referee_02_guest', 2, 1, '1000'),
(1736, 'Referee 3 Guest', '1', '0', 'referee_03_guest', 2, 1, '216'),
(1737, 'Reymysterio', '1', '0', 'reymysterio', 2, 1, '209'),
(1738, 'Ricflair', '1', '0', 'ricflair', 2, 1, '209'),
(1739, 'Roddypiper', '1', '0', 'roddypiper', 2, 1, '209'),
(1740, 'Ronsimmons', '1', '0', 'ronsimmons', 2, 1, '209'),
(1741, 'Room of the Week', '1', '0', 'room_of_the_week', 2, 1, '50'),
(1742, 'Rt Stiker', '1', '0', 'rtsstciker', 2, 1, '1000'),
(1744, 'Rt Sticker v1', '1', '0', 'rtsticker_v1', 2, 1, '1000'),
(1745, 'Ruler Horizontal', '1', '0', 'ruler_horizontal', 2, 1, '215'),
(1746, 'Ruler Vertical', '1', '0', 'ruler_vertical', 2, 1, '215'),
(1747, 'S', '1', '0', 's', 2, 1, '203'),
(1748, 'Sack Costume', '1', '0', 'sackcostume', 2, 1, '208'),
(1749, 'Safer Internet 2008', '1', '0', 'saferinternet2008', 2, 1, '229'),
(1750, 'Samsung 1', '1', '0', 'samsung1', 2, 1, '214'),
(1751, 'Samsung 2', '1', '0', 'samsung2', 2, 1, '214'),
(1752, 'Samsung 3', '1', '0', 'samsung3', 2, 1, '214'),
(1753, 'Samsung 4', '1', '0', 'samsung4', 2, 1, '214'),
(1754, 'Samsung 5', '1', '0', 'samsung5', 2, 1, '214'),
(1755, 'Santa 3000 Character', '1', '0', 'santa3000_character', 2, 1, '1000'),
(1756, 'Santinoma Rella', '1', '0', 'santinomarella', 2, 1, '209'),
(1758, 'Sasquatch', '1', '0', 'sasquatch7', 2, 1, '229'),
(1759, 'Sasquatch Hands', '1', '0', 'sasquatch_hands', 2, 1, '208'),
(1760, 'Satay', '1', '0', 'satay', 2, 1, '229'),
(1761, 'Scubacapsule Anim', '1', '0', 'scubacapsule_anim', 2, 1, '208'),
(1762, 'SE Sticker Competition', '1', '0', 'se_sticker_competition', 2, 1, '208'),
(1763, 'Seagull 1', '1', '0', 'seagull_01', 2, 1, '207'),
(1764, 'Seagull 2', '1', '0', 'seagull_02', 2, 1, '207'),
(1767, 'Sea Shell', '1', '0', 'seashell', 2, 1, '207'),
(1768, 'Sergeant Slaughter', '1', '0', 'sergeantslaughter', 2, 1, '209'),
(1769, 'MTV Sticker 1', '1', '0', 'sg_mtv_sticker_01', 2, 1, '214'),
(1770, 'MTV Sticker 2', '1', '0', 'sg_mtv_sticker_02', 2, 1, '214'),
(1771, 'MTV Sticker 3', '1', '0', 'sg_mtv_sticker_03', 2, 1, '214'),
(1772, 'Shell', '1', '0', 'shell', 2, 1, '207'),
(1773, 'Shelton Benjamin', '1', '0', 'sheltonbenjamin', 2, 1, '209'),
(1774, 'Shrubbery', '1', '0', 'shrubbery', 2, 1, '229'),
(1775, 'Silver Medallion', '1', '0', 'silvermedallion', 2, 1, '1000'),
(1776, 'Skeletor 1', '1', '0', 'skeletor_001', 2, 1, '220'),
(1777, 'Skull', '1', '0', 'skull', 2, 1, '220'),
(1778, 'Skull 2', '1', '0', 'skull2', 2, 1, '220'),
(1779, 'Slash', '1', '0', 'slash', 2, 1, '203'),
(1780, 'Smichaels', '1', '0', 'smichaels', 2, 1, '209'),
(1781, 'Snitsky', '1', '0', 'snitsky', 2, 1, '209'),
(1782, 'Snowball', '1', '0', 'snowball', 2, 1, '229'),
(1783, 'Snowball Bumpy', '1', '0', 'snowball_bumpy', 2, 1, '229'),
(1784, 'Snowball Smooth', '1', '0', 'snowball_smooth', 2, 1, '1000'),
(1785, 'Soccer Dude 1', '1', '0', 'soccer_dude_1', 2, 1, '232'),
(1786, 'Soccer Dude 2', '1', '0', 'soccer_dude_2', 2, 1, '232'),
(1787, 'Soccer Dude 3', '1', '0', 'soccer_dude_3', 2, 1, '232'),
(1788, 'Soccer Dude 4', '1', '0', 'soccer_dude_4', 2, 1, '232'),
(1789, 'Soccer Dude 5', '1', '0', 'soccer_dude_5', 2, 1, '232'),
(1790, 'Soccer Shirt 1', '1', '0', 'soccer_shirt1', 2, 1, '1000'),
(1791, 'Soccer Shirt 10', '1', '0', 'soccer_shirt10', 2, 1, '1000'),
(1792, 'Soccer Shirt 11', '1', '0', 'soccer_shirt11', 2, 1, '1000'),
(1793, 'Soccer Shirt 12', '1', '0', 'soccer_shirt12', 2, 1, '1000'),
(1794, 'Soccer Shirt 13', '1', '0', 'soccer_shirt13', 2, 1, '1000'),
(1795, 'Soccer Shirt 14', '1', '0', 'soccer_shirt14', 2, 1, '1000'),
(1796, 'Soccer Shirt 15', '1', '0', 'soccer_shirt15', 2, 1, '1000'),
(1797, 'Soccer Shirt 16', '1', '0', 'soccer_shirt16', 2, 1, '1000'),
(1798, 'Soccer Shirt  17', '1', '0', 'soccer_shirt17', 2, 1, '1000'),
(1799, 'Soccer Shirt 18', '1', '0', 'soccer_shirt18', 2, 1, '1000'),
(1800, 'Soccer Shirt 19', '1', '0', 'soccer_shirt19', 2, 1, '1000'),
(1801, 'Soccer Shirt 2', '1', '0', 'soccer_shirt2', 2, 1, '1000'),
(1802, 'Soccer Shirt 20', '1', '0', 'soccer_shirt20', 2, 1, '1000'),
(1803, 'Soccer Shirt 3', '1', '0', 'soccer_shirt3', 2, 1, '1000'),
(1804, 'Soccer Shirt 4', '1', '0', 'soccer_shirt4', 2, 1, '1000'),
(1805, 'Soccer Shirt 5', '1', '0', 'soccer_shirt5', 2, 1, '1000'),
(1806, 'Soccer Shirt 6', '1', '0', 'soccer_shirt6', 2, 1, '1000'),
(1807, 'Soccer Shirt 7', '1', '0', 'soccer_shirt7', 2, 1, '1000'),
(1808, 'Soccer Shirt 8', '1', '0', 'soccer_shirt8', 2, 1, '1000'),
(1809, 'Soccer Shirt 9', '1', '0', 'soccer_shirt9', 2, 1, '1000'),
(1810, 'Soccer Short 1', '1', '0', 'soccer_short1', 2, 1, '1000'),
(1811, 'Soccer Short 10', '1', '0', 'soccer_short10', 2, 1, '1000'),
(1812, 'Soccer Short 11', '1', '0', 'soccer_short11', 2, 1, '1000'),
(1813, 'Soccer Short 12', '1', '0', 'soccer_short12', 2, 1, '1000'),
(1814, 'Soccer Short 13', '1', '0', 'soccer_short13', 2, 1, '1000'),
(1815, 'Soccer Short 14', '1', '0', 'soccer_short14', 2, 1, '1000'),
(1816, 'Soccer Short 15', '1', '0', 'soccer_short15', 2, 1, '1000'),
(1817, 'Soccer Short 16', '1', '0', 'soccer_short16', 2, 1, '1000'),
(1818, 'Soccer Short 17', '1', '0', 'soccer_short17', 2, 1, '1000'),
(1819, 'Soccer Short 18', '1', '0', 'soccer_short18', 2, 1, '1000'),
(1820, 'Soccer Short 19', '1', '0', 'soccer_short19', 2, 1, '1000'),
(1821, 'Soccer Short 2', '1', '0', 'soccer_short2', 2, 1, '1000'),
(1822, 'Soccer Short 20', '1', '0', 'soccer_short20', 2, 1, '1000'),
(1823, 'Soccer Short 3', '1', '0', 'soccer_short3', 2, 1, '1000'),
(1824, 'Soccer Short 4', '1', '0', 'soccer_short4', 2, 1, '1000'),
(1825, 'Soccer Short 5', '1', '0', 'soccer_short5', 2, 1, '1000'),
(1826, 'Soccer Short 6', '1', '0', 'soccer_short6', 2, 1, '1000'),
(1827, 'Soccer Short 7', '1', '0', 'soccer_short7', 2, 1, '1000'),
(1828, 'Soccer Short 8', '1', '0', 'soccer_short8', 2, 1, '1000'),
(1829, 'Soccer Short 9', '1', '0', 'soccer_short9', 2, 1, '1000'),
(1830, 'Sofresh', '1', '0', 'sofresh', 2, 1, '204'),
(1831, 'spiderwick Goblin 1 L', '1', '0', 'spiderwick_goblin1_l', 2, 1, '214'),
(1832, 'spiderwick Goblin 1 R', '1', '0', 'spiderwick_goblin1_r', 2, 1, '214'),
(1833, 'spiderwick Goblin 2 L', '1', '0', 'spiderwick_goblin2_l', 2, 1, '214'),
(1834, 'spiderwick Goblin 2 R', '1', '0', 'spiderwick_goblin2_r', 2, 1, '214'),
(1835, 'spiderwick Goblin Anim L', '1', '0', 'spiderwick_goblin_anim_l', 2, 1, '214'),
(1836, 'spiderwick Goblin Anim R', '1', '0', 'spiderwick_goblin_anim_r', 2, 1, '214'),
(1837, 'spiderwick Griffin L', '1', '0', 'spiderwick_griffin_l', 2, 1, '214'),
(1838, 'spiderwick Griffin R', '1', '0', 'spiderwick_griffin_r', 2, 1, '214'),
(1839, 'spiderwick Sprite 1 L', '1', '0', 'spiderwick_sprite1_l', 2, 1, '214'),
(1840, 'spiderwick Sprite 1 R', '1', '0', 'spiderwick_sprite1_r', 2, 1, '214'),
(1841, 'spiderwick Sprite 2 L', '1', '0', 'spiderwick_sprite2_l', 2, 1, '214'),
(1842, 'spiderwick Sprite 2 R', '1', '0', 'spiderwick_sprite2_r', 2, 1, '214'),
(1843, 'spiderwick Toadstooll', '1', '0', 'spiderwick_toadstooll', 2, 1, '1000'),
(1844, 'Spiderwick Toadstooll 2', '1', '0', 'spiderwick_toadstoolr', 2, 1, '1000'),
(1845, 'Spill 1', '1', '0', 'spill1', 2, 1, '229'),
(1846, 'Spill 2', '1', '0', 'spill2', 2, 1, '229'),
(1847, 'Spill 3', '1', '0', 'spill3', 2, 1, '229'),
(1848, 'Spotlight Sticker', '1', '0', 'spotlight_sticker', 2, 1, '229'),
(1849, 'Spotlight Sticker 2', '1', '0', 'spotlight_sticker2_001', 2, 1, '229'),
(1852, 'Spray', '1', '0', 'spray1', 2, 1, '229'),
(1853, 'Spray 2', '1', '0', 'spray2', 2, 1, '229'),
(1854, 'Squib', '1', '0', 'squib', 2, 1, '229'),
(1856, 'Snowstorm Boots Blue', '1', '0', 'sbootsitjalapaset_blue', 2, 1, '1000'),
(1857, 'Snowstorm Boots Red ', '1', '0', 'sbootsitjalapaset_red', 2, 1, '1000'),
(1858, 'Snowstorm Costume Blue', '1', '0', 'scostume_blue', 2, 1, '1000'),
(1859, 'Snowstorm Costume Red', '1', '0', 'scostume_red', 2, 1, '1000'),
(1860, 'Shitby Snowball', '1', '0', 'shitby_snowball', 2, 1, '1000'),
(1861, 'Snowstorm Ballmachine', '1', '0', 'ssnowballmachine', 2, 1, '1000'),
(1862, 'Snowstorm Flake', '1', '0', 'ssnowflake1', 2, 1, '1000'),
(1865, 'Snowstorm Flake 2', '1', '0', 'ssnowflake2', 2, 1, '1000'),
(1866, 'Snowstorm Man', '1', '0', 'ssnowman', 2, 1, '1000'),
(1867, 'Snowstorm Queen', '1', '0', 'ssnowqueen', 2, 1, '1000'),
(1868, 'Snowstorm Tree', '1', '0', 'ssnowtree', 2, 1, '1000'),
(1869, 'Stanley Cup Sticker', '1', '0', 'stanleycupsticker', 2, 1, '213'),
(1870, 'Star', '1', '0', 'star', 2, 1, '203'),
(1872, 'Starburst', '1', '0', 'starburst', 2, 1, '214'),
(1873, 'Stevie Richards', '1', '0', 'stevierichards', 2, 1, '209'),
(1874, 'Stewardes Costume', '1', '0', 'stewardescostume', 2, 1, '1000'),
(1875, 'Sticker Aunt Samantha', '1', '0', 'stickerauntsamantha', 2, 1, '1000'),
(1876, 'Sticker Flagborder', '1', '0', 'stickerflagborder', 2, 1, '1000'),
(1877, 'Sticker 3 Years', '1', '0', 'sticker_3years', 2, 1, '206'),
(1879, 'Sticker Arrow Down', '1', '0', 'sticker_arrow_down', 2, 1, '222'),
(1880, 'Sticker Arrow Left', '1', '0', 'sticker_arrow_left', 2, 1, '222'),
(1881, 'Sticker Arrow Right', '1', '0', 'sticker_arrow_right', 2, 1, '222'),
(1882, 'Sticker Arrow Up', '1', '0', 'sticker_arrow_up', 2, 1, '222'),
(1883, 'Sticker Award Bronze', '1', '0', 'sticker_award_bronze', 2, 1, '50'),
(1884, 'Sticker Award Gold', '1', '0', 'sticker_award_gold', 2, 1, '50'),
(1886, 'Sticker Award Silver', '1', '0', 'sticker_award_silver', 2, 1, '50'),
(1888, 'Sticker Bonsai Ninjaf', '1', '0', 'sticker_bonsai_ninjaf', 2, 1, '224'),
(1889, 'Sticker Bonsai Ninjafa', '1', '0', 'sticker_bonsai_ninjafa', 2, 1, '224'),
(1890, 'Sticker Bonsai Ninjam', '1', '0', 'sticker_bonsai_ninjam', 2, 1, '224'),
(1891, 'Sticker Bonsai Ninjama', '1', '0', 'sticker_bonsai_ninjama', 2, 1, '224'),
(1892, 'Sticker Bonsai Samuraif', '1', '0', 'sticker_bonsai_samuraif', 2, 1, '224'),
(1893, 'Sticker Bonsai Samuraifa', '1', '0', 'sticker_bonsai_samuraifa', 2, 1, '224'),
(1894, 'Sticker Bonsai Samuraim', '1', '0', 'sticker_bonsai_samuraim', 2, 1, '224'),
(1895, 'Sticker Bonsai Samuraima', '1', '0', 'sticker_bonsai_samuraima', 2, 1, '224'),
(1897, 'Sticker Boxer', '1', '0', 'sticker_boxer', 2, 1, '216'),
(1898, 'Sticker Caballoons', '1', '0', 'sticker_caballoons', 2, 1, '213'),
(1899, 'Sticker Cabin', '1', '0', 'sticker_cabin', 2, 1, '229'),
(1900, 'Sticker Cactuanim', '1', '0', 'sticker_cactuanim', 2, 1, '1000'),
(1901, 'Sticker Cais 4', '1', '0', 'sticker_cais4', 2, 1, '213'),
(1902, 'sticker_Cape', '1', '0', 'sticker_cape', 2, 1, '208'),
(1903, 'Sticker Catinabox', '1', '0', 'sticker_catinabox', 2, 1, '229'),
(1904, 'Sticker Chauvesouri', '1', '0', 'sticker_chauvesouri', 2, 1, '1000'),
(1905, 'Sticker Chauvesouris', '1', '0', 'sticker_chauvesouris', 2, 1, '1000'),
(1906, 'Sticker Chica_Tampax', '1', '0', 'sticker_chica_tampax', 2, 1, '214'),
(1907, 'Sticker Chica_Tampax 1', '1', '0', 'sticker_chica_tampax1', 2, 1, '214'),
(1908, 'Sticker Chica Tampax 2', '1', '0', 'sticker_chica_tampax2', 2, 1, '214'),
(1909, 'Sticker Chips', '1', '0', 'sticker_chips', 2, 1, '229'),
(1910, 'Sticker Clown Anim', '1', '0', 'sticker_clown_anim', 2, 1, '216'),
(1911, 'Sticker Coffee Stain', '1', '0', 'sticker_coffee_stain', 2, 1, '229'),
(1912, 'Sticker Coffee Steam Blue', '1', '0', 'sticker_coffee_steam_blue', 2, 1, '229'),
(1913, 'Sticker Coffee Steam Grey', '1', '0', 'sticker_coffee_steam_grey', 2, 1, '229'),
(1914, 'Sticker Croco', '1', '0', 'sticker_croco', 2, 1, '229'),
(1915, 'Sticker DA Blingclock', '1', '0', 'sticker_da_blingclock', 2, 1, '229'),
(1916, 'Sticker Dreamer', '1', '0', 'sticker_dreamer', 2, 1, '229'),
(1917, 'Sticker Effect Bam', '1', '0', 'sticker_effect_bam', 2, 1, '240'),
(1918, 'Sticker Effect Burp', '1', '0', 'sticker_effect_burp', 2, 1, '240'),
(1919, 'Sticker Effect Whoosh 2', '1', '0', 'sticker_effect_whoosh2', 2, 1, '240'),
(1920, 'Sticker Effect Woosh', '1', '0', 'sticker_effect_woosh', 2, 1, '240'),
(1921, 'Sticker Effect Zap', '1', '0', 'sticker_effect_zap', 2, 1, '240'),
(1922, 'Sticker Eraser', '1', '0', 'sticker_eraser', 2, 1, '229'),
(1923, 'Sticker Eye Anim', '1', '0', 'sticker_eye_anim', 2, 1, '229'),
(1924, 'Sticker Eye Evil Anim', '1', '0', 'sticker_eye_evil_anim', 2, 1, '229'),
(1925, 'Sticker Eyeblue', '1', '0', 'sticker_eyeblue', 2, 1, '1000'),
(1926, 'Sticker Fireworkboom 3', '1', '0', 'sticker_fireworkboom3', 2, 1, '223'),
(1927, 'Sticker Flames', '1', '0', 'sticker_flames', 2, 1, '229'),
(1928, 'Sticker Flameskull', '1', '0', 'sticker_flameskull', 2, 1, '1000'),
(1929, 'Sticker Flower', '1', '0', 'sticker_flower1', 2, 1, '210'),
(1930, 'Sticker Flower Big Yellow', '1', '0', 'sticker_flower_big_yellow', 2, 1, '210'),
(1931, 'Sticker Flower Pink', '1', '0', 'sticker_flower_pink', 2, 1, '210'),
(1932, 'Sticker Gala', '1', '0', 'sticker_gala', 2, 1, '214'),
(1934, 'Sticker Gentleman', '1', '0', 'sticker_gentleman', 2, 1, '216'),
(1935, 'Sticker Glasseelton', '1', '0', 'sticker_glasseelton', 2, 1, '1000'),
(1936, 'Sticker Glassesupernerd', '1', '0', 'sticker_glassesupernerd', 2, 1, '1000'),
(1945, 'Sticker Gurubeard Brown', '1', '0', 'sticker_gurubeard_brown', 2, 1, '208'),
(1946, 'Sticker Gurubeard Gray', '1', '0', 'sticker_gurubeard_gray', 2, 1, '208'),
(1947, 'Sticker Heartbeat', '1', '0', 'sticker_heartbeat', 2, 1, '226'),
(1949, 'Sticker Hole', '1', '0', 'sticker_hole', 2, 1, '229'),
(1950, 'Sticker Hulkhogan', '1', '0', 'sticker_hulkhogan', 2, 1, '208'),
(1951, 'Sticker Iheartfools', '1', '0', 'sticker_iheartfools', 2, 1, '204'),
(1952, 'Sticker Koopa', '1', '0', 'sticker_koopa', 2, 1, '212'),
(1953, 'Sticker Lonewolf', '1', '0', 'sticker_lonewolf', 2, 1, '229'),
(1954, 'Sticker Luigi', '1', '0', 'sticker_luigi', 2, 1, '212'),
(1955, 'Sticker Mamasboy', '1', '0', 'sticker_mamasboy', 2, 1, '229'),
(1956, 'Sticker Maquillage', '1', '0', 'sticker_maquillage', 2, 1, '208'),
(1957, 'Sticker Mario', '1', '0', 'sticker_mario', 2, 1, '212'),
(1958, 'Sticker Masque', '1', '0', 'sticker_masque_01', 2, 1, '208'),
(1959, 'Sticker Masque 2', '1', '0', 'sticker_masque_02', 2, 1, '208'),
(1960, 'Sticker Masque 3', '1', '0', 'sticker_masque_03', 2, 1, '208'),
(1961, 'sticker_Masque 4', '1', '0', 'sticker_masque_04', 2, 1, '208'),
(1962, 'Sticker Masque 5', '1', '0', 'sticker_masque_05', 2, 1, '208'),
(1963, 'Sticker Masque Or', '1', '0', 'sticker_masque_or', 2, 1, '208'),
(1964, 'Sticker Mathoffman', '1', '0', 'sticker_mathoffman', 2, 1, '214'),
(1965, 'Sticker Mineur', '1', '0', 'sticker_mineur', 2, 1, '216'),
(1966, 'Sticker Monolithe', '1', '0', 'sticker_monolithe', 2, 1, '229'),
(1967, 'Sticker Moonpig', '1', '0', 'sticker_moonpig', 2, 1, '229'),
(1972, 'Sticker Peach', '1', '0', 'sticker_peach', 2, 1, '212'),
(1973, 'Sticker Pencil', '1', '0', 'sticker_pencil', 2, 1, '229'),
(1974, 'Sticker Pencil 2', '1', '0', 'sticker_pencil_2', 2, 1, '230'),
(1975, 'Sticker Pointing Hand 1', '1', '0', 'sticker_pointing_hand_1', 2, 1, '222'),
(1976, 'Sticker Pointing Hand 2', '1', '0', 'sticker_pointing_hand_2', 2, 1, '222'),
(1977, 'Sticker Pointing Hand 3', '1', '0', 'sticker_pointing_hand_3', 2, 1, '222'),
(1978, 'Sticker Pointing Hand 4', '1', '0', 'sticker_pointing_hand_4', 2, 1, '222'),
(1979, 'Sticker Prankster', '1', '0', 'sticker_prankster', 2, 1, '230'),
(1980, 'Sticker Romantic', '1', '0', 'sticker_romantic', 2, 1, '230'),
(2654, 'Sticker Spaceduck', '1', '0', 'sticker_spaceduck', 2, 1, '230'),
(1985, 'Sticker Sboard 1', '1', '0', 'sticker_sboard1', 2, 1, '207'),
(1986, 'Sticker Sboard 2', '1', '0', 'sticker_sboard2', 2, 1, '207'),
(1987, 'Sticker Sboard 3', '1', '0', 'sticker_sboard3', 2, 1, '207'),
(1988, 'Sticker Skull', '1', '0', 'sticker_skull', 2, 1, '1000'),
(1989, 'Sticker Skull 2', '1', '0', 'sticker_skull2', 2, 1, '1000'),
(1990, 'Sticker Sleeping Habbo', '1', '0', 'sticker_sleeping_habbo', 2, 1, '216'),
(1992, 'Sticker Spiky Wristband', '1', '0', 'sticker_spiky_wristband', 2, 1, '230'),
(1997, 'Sticker Squelette', '1', '0', 'sticker_squelette', 2, 1, '220'),
(1998, 'Sticker Submarine', '1', '0', 'sticker_submarine', 2, 1, '230'),
(1999, 'Sticker Teensberg', '1', '0', 'sticker_teensberg', 2, 1, '1000'),
(2000, 'Sticker Themepark 2', '1', '0', 'sticker_themepark_002', 2, 1, '228'),
(2001, 'Sticker Themepark 3', '1', '0', 'sticker_themepark_003', 2, 1, '234'),
(2002, 'Sticker Tiki Flamesboard', '1', '0', 'sticker_tiki_flamesboard', 2, 1, '207'),
(2006, 'Sticker Tour', '1', '0', 'sticker_tour', 2, 1, '214'),
(2007, 'Sticker Trax Bling', '1', '0', 'sticker_trax_bling', 2, 1, '1000'),
(2008, 'Sticker Trax Heavy', '1', '0', 'sticker_trax_heavy', 2, 1, '1000'),
(2009, 'Sticker Trax Rock', '1', '0', 'sticker_trax_rock', 2, 1, '1000'),
(2010, 'Sticker Trophy Award', '1', '0', 'sticker_trophy_award', 2, 1, '230'),
(2011, 'Sticker Unclesam', '1', '0', 'sticker_unclesam', 2, 1, '223'),
(2012, 'Sticker Woodboard', '1', '0', 'sticker_woodboard', 2, 1, '207'),
(2013, 'Sticker Zipper H Bobba Lock', '1', '0', 'sticker_zipper_h_bobba_lock', 2, 1, '215'),
(2014, 'Sticker Zipper H End', '1', '0', 'sticker_zipper_h_end', 2, 1, '215'),
(2015, 'Sticker Zipper H Normal Lock', '1', '0', 'sticker_zipper_h_normal_lock', 2, 1, '215'),
(2016, 'Sticker Zipper H Tile', '1', '0', 'sticker_zipper_h_tile', 2, 1, '215'),
(2017, 'Sticker Zipper V Bobba Lock', '1', '0', 'sticker_zipper_v_bobba_lock', 2, 1, '215'),
(2018, 'Sticker Zipper V End', '1', '0', 'sticker_zipper_v_end', 2, 1, '215'),
(2019, 'Sticker Zipper V Normal Lock', '1', '0', 'sticker_zipper_v_normal_lock', 2, 1, '215'),
(2020, 'Sticker Zipper V Tile', '1', '0', 'sticker_zipper_v_tile', 2, 1, '215'),
(2021, 'Goth Border Vertical', '1', '0', 'goth_border_vertical', 2, 1, '215'),
(2022, 'Stonecold', '1', '0', 'stonecold', 2, 1, '209'),
(2023, 'Stray Pixels Winner', '1', '0', 'straypixelswinner', 2, 1, '230'),
(2024, 'Streaker', '1', '0', 'streaker', 2, 1, '216'),
(2025, 'Summer Flowerwreath', '1', '0', 'summerflowerwreath', 2, 1, '1000'),
(2026, 'Summer Beachballafro', '1', '0', 'summer_beachballafro', 2, 1, '207'),
(2027, 'Summer Blueberry Left', '1', '0', 'summer_blueberry_left', 2, 1, '207'),
(2031, 'Summer Blueberry Right', '1', '0', 'summer_blueberry_right', 2, 1, '207'),
(2033, 'Summer Cloud 1', '1', '0', 'summer_cloud1', 2, 1, '207'),
(2035, 'Summer Cloud 2', '1', '0', 'summer_cloud2', 2, 1, '207'),
(2037, 'Summer Cloud 3', '1', '0', 'summer_cloud3', 2, 1, '207'),
(2039, 'Summer Flowerwreath 2', '1', '0', 'summer_flowerwreath', 2, 1, '207'),
(2040, 'Summer Kite', '1', '0', 'summer_kite', 2, 1, '207'),
(2043, 'Summer Rollerblades', '1', '0', 'summer_rollerblades', 2, 1, '207'),
(2044, 'Summer Rowingboat', '1', '0', 'summer_rowingboat', 2, 1, '207'),
(2045, 'Summer Skateboard', '1', '0', 'summer_skateboard', 2, 1, '207'),
(2046, 'Summer Swim Trunk', '1', '0', 'summer_swim_trunk', 2, 1, '207'),
(2047, 'Summer sticker_Strawberry', '1', '0', 'summersticker_strawberry', 2, 1, '207'),
(2048, 'Sunflower', '1', '0', 'sunflower', 2, 1, '210'),
(2050, 'Supercrazy', '1', '0', 'supercrazy', 2, 1, '209'),
(2051, 'Superjatt', '1', '0', 'superjatt', 2, 1, '1000'),
(2052, 'Surflifesaver', '1', '0', 'surflifesaver', 2, 1, '1000'),
(2053, 'Sushi Ika Squid', '1', '0', 'sushi_ika_squid', 2, 1, '224'),
(2054, 'Sushi Ikura Caviar', '1', '0', 'sushi_ikura_caviar', 2, 1, '224'),
(2055, 'Sushi Kohada Mackerel', '1', '0', 'sushi_kohada_mackerel', 2, 1, '224'),
(2056, 'Sushi Maguro', '1', '0', 'sushi_maguro', 2, 1, '224'),
(2057, 'Sushi Tamago Egg', '1', '0', 'sushi_tamago_egg', 2, 1, '224'),
(2058, 'Sushi Uni Sea Urchin', '1', '0', 'sushi_uni_sea_urchin', 2, 1, '224'),
(2059, 'Swimming Fish', '1', '0', 'swimming_fish', 2, 1, '230'),
(2060, 'T', '1', '0', 't', 2, 1, '203'),
(2061, 'Tahti', '1', '0', 'tahti', 2, 1, '237'),
(2062, 'Tall Ship', '1', '0', 'tall_ship', 2, 1, '218'),
(2064, 'Tampax Signboard', '1', '0', 'tampax_signboard', 2, 1, '214'),
(2068, 'Tepetepe 2', '1', '0', 'tepetepe2', 2, 1, '1000'),
(2069, 'Thanksgiving 07', '1', '0', 'thanksgiving07', 2, 1, '230'),
(2070, 'The Great Khali', '1', '0', 'thegreatkhali', 2, 1, '209'),
(2071, 'The Miz', '1', '0', 'themiz', 2, 1, '209'),
(2072, 'The Safety Box', '1', '0', 'thesafetybox', 2, 1, '230'),
(2073, 'Tiki Cloudtiki L', '1', '0', 'tiki_cloudtiki_l', 2, 1, '207'),
(2074, 'Tiki Cloudtiki R', '1', '0', 'tiki_cloudtiki_r', 2, 1, '207'),
(2075, 'Tiki Flowersboard', '1', '0', 'tiki_flowersboard', 2, 1, '207'),
(2076, 'Tiki Greenboard', '1', '0', 'tiki_greenboard', 2, 1, '207'),
(2077, 'Tiki Moarider F', '1', '0', 'tiki_moarider_f', 2, 1, '207'),
(2078, 'Tiki Moarider M', '1', '0', 'tiki_moarider_m', 2, 1, '207'),
(2079, 'Tiki Planttiki L', '1', '0', 'tiki_planttiki_l', 2, 1, '207'),
(2080, 'Tiki Planttiki R', '1', '0', 'tiki_planttiki_r', 2, 1, '207'),
(2081, 'Tiki Skulltiki L', '1', '0', 'tiki_skulltiki_l', 2, 1, '207'),
(2082, 'Tiki Skulltiki R', '1', '0', 'tiki_skulltiki_r', 2, 1, '207'),
(2083, 'Tiki Watertiki L', '1', '0', 'tiki_watertiki_l', 2, 1, '207'),
(2084, 'Tiki Watertiki R', '1', '0', 'tiki_watertiki_r', 2, 1, '207'),
(2085, 'Tiki Woodboard', '1', '0', 'tiki_woodboard', 2, 1, '207'),
(2086, 'Toffee Tarra', '1', '0', 'toffee_tarra', 2, 1, '214'),
(2087, 'Tokfia', '1', '0', 'tokfia', 2, 1, '216'),
(2088, 'Tommy Dreamer', '1', '0', 'tommydreamer', 2, 1, '209'),
(2089, 'Tomo', '1', '0', 'tomo', 2, 1, '216'),
(2090, 'Toolbar Sticker', '1', '0', 'toolbar_sticker', 2, 1, '1000'),
(2091, 'Torrie Wilson', '1', '0', 'torriewilson', 2, 1, '209'),
(2092, 'Tproll', '1', '0', 'tproll', 2, 1, '221'),
(2093, 'Tracinho', '1', '0', 'tracinho', 2, 1, '203'),
(2094, 'Trax 8 bit', '1', '0', 'trax_8_bit', 2, 1, '204'),
(2095, 'Trax Ambient', '1', '0', 'trax_ambient', 2, 1, '204'),
(2098, 'Trax Bling', '1', '0', 'trax_bling', 2, 1, '204'),
(2101, 'Trax Disco', '1', '0', 'trax_disco', 2, 1, '204'),
(2103, 'Trax Electro', '1', '0', 'trax_electro', 2, 1, '204'),
(2106, 'Trax Heavy', '1', '0', 'trax_heavy', 2, 1, '204'),
(2108, 'Trax Latin', '1', '0', 'trax_latin', 2, 1, '204'),
(2110, 'Trax Log Not for sale', '1', '0', 'trax_log_not_for_sale', 2, 1, '1000'),
(2111, 'Trax Reggae', '1', '0', 'trax_reggae', 2, 1, '204'),
(2112, 'Trax Rock', '1', '0', 'trax_rock', 2, 1, '204'),
(2114, 'Trax Sfx', '1', '0', 'trax_sfx', 2, 1, '204'),
(2116, 'Trax Goldrecord', '1', '0', 'traxgoldrecord', 2, 1, '230'),
(2118, 'Tree Owl', '1', '0', 'tree_owl', 2, 1, '230'),
(2119, 'Treestump', '1', '0', 'treestump', 2, 1, '230'),
(2120, 'Tripleh', '1', '0', 'tripleh', 2, 1, '209'),
(2121, 'U', '1', '0', 'u', 2, 1, '203'),
(2122, 'UK Childline', '1', '0', 'uk_childline_sticker', 2, 1, '204'),
(2123, 'UK Habbo X', '1', '0', 'uk_habbo_x_sticker', 2, 1, '230'),
(2124, 'UK Pixel Maze', '1', '0', 'uk_pixel_maze_sticker', 2, 1, '204'),
(2125, 'UK Only Homes', '1', '0', 'ukonly_disarno_homes', 2, 1, '1000'),
(2126, 'Umaga', '1', '0', 'umaga', 2, 1, '209'),
(2127, 'Underscore', '1', '0', 'underscore', 2, 1, '203'),
(2128, 'Undertaker', '1', '0', 'undertaker', 2, 1, '209'),
(2130, 'uFootball Guest', '1', '0', 'ufootball_guest', 2, 1, '1000'),
(2131, 'V', '1', '0', 'v', 2, 1, '203'),
(2134, 'Valentine Cupido', '1', '0', 'val_cupido_anim', 2, 1, '226'),
(2136, 'Valentine Costume 3', '1', '0', 'val_lovecostume3', 2, 1, '226'),
(2139, 'Valentine Lovedice', '1', '0', 'val_lovedice', 2, 1, '226'),
(2140, 'Valentine Skull 360 Around', '1', '0', 'val_skull360around_anim', 2, 1, '226'),
(2141, 'Valentine Barbwire Horis', '1', '0', 'val_sticker_barbwire_horis', 2, 1, '226'),
(2143, 'Valentine Barbwire Vert', '1', '0', 'val_sticker_barbwire_vert', 2, 1, '226'),
(2146, 'Valentine Bartender', '1', '0', 'val_sticker_bartender', 2, 1, '226'),
(2147, 'Valentine Bartender2', '1', '0', 'val_sticker_bartender2', 2, 1, '226'),
(2148, 'Valentine Bobbadice', '1', '0', 'val_sticker_bobbadice', 2, 1, '226'),
(2150, 'Valentine Crew', '1', '0', 'val_sticker_crew', 2, 1, '226'),
(2151, 'Valentine Croco', '1', '0', 'val_sticker_croco', 2, 1, '226'),
(2152, 'Valentine Cupid Arrow', '1', '0', 'val_sticker_cupid_arrow', 2, 1, '226'),
(2153, 'Valentine Femalecaptain', '1', '0', 'val_sticker_femalecaptain', 2, 1, '226'),
(2157, 'Valentine Malecaptain', '1', '0', 'val_sticker_malecaptain', 2, 1, '226'),
(2158, 'Valentine Malecrew', '1', '0', 'val_sticker_malecrew', 2, 1, '226'),
(2159, 'Valentine Rosewire Corner', '1', '0', 'val_sticker_rosewire_corner', 2, 1, '226'),
(2162, 'Valentine Rosewire Horis', '1', '0', 'val_sticker_rosewire_horis', 2, 1, '226'),
(2163, 'Valentine Rosewire Vert', '1', '0', 'val_sticker_rosewire_vert', 2, 1, '226'),
(2165, 'Valentine Skull 360', '1', '0', 'val_sticker_skull360', 2, 1, '226'),
(2166, 'Valentine Skull 360 Circle', '1', '0', 'val_sticker_skull360_circle', 2, 1, '226'),
(2167, 'Valentine Stewardess', '1', '0', 'val_sticker_stewardess', 2, 1, '226'),
(2168, 'Valentine Stewardess 2', '1', '0', 'val_sticker_stewardess2', 2, 1, '226'),
(2169, 'Valentine Storm Costume', '1', '0', 'val_sticker_storm-costume', 2, 1, '226'),
(2171, 'Valentine Voodoo Suit', '1', '0', 'val_sticker_voodoo_suit', 2, 1, '226'),
(2172, 'Valentine Captain', '1', '0', 'valcaptain', 2, 1, '226'),
(2174, 'Valentine Welcome Sticker', '1', '0', 'valentine_welcome_sticker', 2, 1, '226'),
(2177, 'Valvenis', '1', '0', 'valvenis', 2, 1, '209'),
(2178, 'Vanilja Tarra', '1', '0', 'vanilja_tarra', 2, 1, '214'),
(2179, 'Venezuela', '1', '0', 'venezuela', 2, 1, '232'),
(2180, 'Venti', '1', '0', 'venti', 2, 1, '230'),
(2181, 'Veronicas', '1', '0', 'veronicas', 2, 1, '216'),
(2182, 'Vertical Ink', '1', '0', 'verticalink', 2, 1, '238'),
(2184, 'Victoria', '1', '0', 'victoria', 2, 1, '209'),
(2185, 'Vincent Viga', '1', '0', 'vincentviga', 2, 1, '216'),
(2186, 'Vine', '1', '0', 'vine', 2, 1, '215'),
(2187, 'Vine 2', '1', '0', 'vine2', 2, 1, '215'),
(2188, 'VIP Pin', '1', '0', 'vip_pin', 2, 1, '50'),
(2189, 'Voice Articleimage', '1', '0', 'voice_articleimage', 2, 1, '1000'),
(2191, 'W', '1', '0', 'w', 2, 1, '203'),
(2192, 'Whimsy', '1', '0', 'whimsy', 2, 1, '1000'),
(2193, 'Wood A', '1', '0', 'wood_a', 2, 1, '227'),
(2194, 'Wood Acircle', '1', '0', 'wood_acircle', 2, 1, '227'),
(2195, 'Wood Acsent', '1', '0', 'wood_acsent', 2, 1, '227'),
(2196, 'Wood Acsent 2', '1', '0', 'wood_acsent2', 2, 1, '227'),
(2197, 'Wood Adots', '1', '0', 'wood_adots', 2, 1, '227'),
(2198, 'Wood B', '1', '0', 'wood_b', 2, 1, '227'),
(2199, 'Wood C', '1', '0', 'wood_c', 2, 1, '227'),
(2200, 'Wood Comma', '1', '0', 'wood_comma', 2, 1, '227'),
(2201, 'Wood D', '1', '0', 'wood_d', 2, 1, '227'),
(2202, 'Wood Dot', '1', '0', 'wood_dot', 2, 1, '227'),
(2203, 'Wood E', '1', '0', 'wood_e', 2, 1, '227'),
(2204, 'Wood Exclamation', '1', '0', 'wood_exclamation', 2, 1, '227'),
(2205, 'Wood F', '1', '0', 'wood_f', 2, 1, '227'),
(2206, 'Wood G', '1', '0', 'wood_g', 2, 1, '227'),
(2207, 'Wood H', '1', '0', 'wood_h', 2, 1, '227'),
(2208, 'Wood I', '1', '0', 'wood_i', 2, 1, '227'),
(2209, 'Wood J', '1', '0', 'wood_j', 2, 1, '227'),
(2210, 'Wood K', '1', '0', 'wood_k', 2, 1, '227'),
(2211, 'Wood L', '1', '0', 'wood_l', 2, 1, '227'),
(2212, 'Wood M', '1', '0', 'wood_m', 2, 1, '227'),
(2213, 'Wood N', '1', '0', 'wood_n', 2, 1, '227'),
(2214, 'Wood O', '1', '0', 'wood_o', 2, 1, '227'),
(2215, 'Wood Odots', '1', '0', 'wood_odots', 2, 1, '227'),
(2216, 'Wood P', '1', '0', 'wood_p', 2, 1, '227'),
(2217, 'Wood Q', '1', '0', 'wood_q', 2, 1, '227'),
(2218, 'Wood Question', '1', '0', 'wood_question', 2, 1, '227'),
(2219, 'Wood R', '1', '0', 'wood_r', 2, 1, '227'),
(2220, 'Wood S', '1', '0', 'wood_s', 2, 1, '227'),
(2221, 'Wood T', '1', '0', 'wood_t', 2, 1, '227'),
(2222, 'Wood U', '1', '0', 'wood_u', 2, 1, '227'),
(2223, 'Wood Undermark', '1', '0', 'wood_undermark', 2, 1, '227'),
(2224, 'Wood V', '1', '0', 'wood_v', 2, 1, '227'),
(2225, 'Wood W', '1', '0', 'wood_w', 2, 1, '227'),
(2226, 'Wood X', '1', '0', 'wood_x', 2, 1, '227'),
(2227, 'Wood Y', '1', '0', 'wood_y', 2, 1, '227'),
(2228, 'Wood Z', '1', '0', 'wood_z', 2, 1, '227'),
(2229, 'Wormhand', '1', '0', 'wormhand', 2, 1, '220'),
(2230, 'Wunder Frank', '1', '0', 'wunderfrank', 2, 1, '230'),
(2231, 'Wordwrestling', '1', '0', 'wwemvp', 2, 1, '209'),
(2232, 'X', '1', '0', 'x', 2, 1, '203'),
(2233, 'Xmas Angel Wings', '1', '0', 'xmaangel_wings', 2, 1, '1000'),
(2234, 'Xmas Angel Wing Animated', '1', '0', 'xmaangelwinganim', 2, 1, '1000'),
(2236, 'Xmas Box Darkred', '1', '0', 'xmabox_darkred', 2, 1, '1000'),
(2237, 'Xmas Box Darkred 2', '1', '0', 'xmabox_darkred2', 2, 1, '1000'),
(2238, 'Xmas Box Darkred 3', '1', '0', 'xmabox_darkred4', 2, 1, '1000'),
(2239, 'Xmas Box Green', '1', '0', 'xmabox_green', 2, 1, '1000'),
(2240, 'Xmas Box Green 2', '1', '0', 'xmabox_green_2', 2, 1, '1000'),
(2241, 'Xmas Box Lime', '1', '0', 'xmabox_lime', 2, 1, '1000'),
(2242, 'Xmas Box Lime 2', '1', '0', 'xmabox_lime_2', 2, 1, '1000'),
(2243, 'Xmas Box Orange', '1', '0', 'xmabox_orange', 2, 1, '1000'),
(2244, 'Xmas Box Red', '1', '0', 'xmabox_red', 2, 1, '1000'),
(2245, 'Xmas Box Suit Blue', '1', '0', 'xmabox_suit_blue', 2, 1, '1000'),
(2246, 'Xmas Box Suit Mint', '1', '0', 'xmabox_suit_mint', 2, 1, '1000'),
(2248, 'Xmas Box Suit Mint 2', '1', '0', 'xmabox_suit_mint2', 2, 1, '1000'),
(2249, 'Xmas Box Suit Mint 3', '1', '0', 'xmabox_suit_mint3', 2, 1, '1000'),
(2250, 'Xmas Box Suit Orange', '1', '0', 'xmabox_suit_orange', 2, 1, '1000'),
(2251, 'Xmas Box Suit Pink', '1', '0', 'xmabox_suit_pink', 2, 1, '1000'),
(2252, 'Xmas Box Violet', '1', '0', 'xmabox_violet', 2, 1, '1000'),
(2253, 'Xmas Box', '1', '0', 'xmaboxs', 2, 1, '1000'),
(2255, 'Xmas Cat Animated', '1', '0', 'xmacat_animated', 2, 1, '1000'),
(2256, 'Xmas Dog Animated', '1', '0', 'xmadogi_animated', 2, 1, '1000'),
(2257, 'Xmas Dog Reindeer Sticker', '1', '0', 'xmadograindeer_sticker', 2, 1, '1000'),
(2258, 'Xmas Dog Reindeer Thumb', '1', '0', 'xmadograindeer_sticker.thumb', 2, 1, '1000'),
(2259, 'Xmas Gift-Afro', '1', '0', 'xmagift-afro', 2, 1, '1000'),
(2260, 'Xmas Gift Afro', '1', '0', 'xmagift_afro', 2, 1, '1000'),
(2261, 'Xmas Gift Strap Corner L', '1', '0', 'xmagift_strap_corner_l', 2, 1, '1000'),
(2262, 'Xmas Gift Strap Corner Bundle', '1', '0', 'xmagift_strap_corner_l_bundle', 2, 1, '1000'),
(2263, 'Xmas Gift Strap Corner R', '1', '0', 'xmagift_strap_corner_r', 2, 1, '1000'),
(2264, 'Xmas Gift Strap H', '1', '0', 'xmagift_strap_h', 2, 1, '1000'),
(2265, 'Xmas Gift Strap V', '1', '0', 'xmagift_strap_v', 2, 1, '1000'),
(2266, 'Xmas HC Ribbon', '1', '0', 'xmahc_ribbon', 2, 1, '1000'),
(2267, 'Xmas HC Ribbon 2', '1', '0', 'xmahc_ribbon_2', 2, 1, '1000'),
(2268, 'Xmas Cicles', '1', '0', 'xmaicicles', 2, 1, '1000'),
(2269, 'Xmas Donkey Reindeer Sticker', '1', '0', 'xmajeff_donkey_reindeer_sticker', 2, 1, '1000'),
(2270, 'Xmas Sinister', '1', '0', 'xmamr_sinister', 2, 1, '1000'),
(2271, 'Xmas Rasta Santa', '1', '0', 'xmarastasanta', 2, 1, '1000'),
(2272, 'Xmas Skater Costume', '1', '0', 'xmaskater_costume', 2, 1, '1000'),
(2273, 'Xmas Smilla Snowboard', '1', '0', 'xmasmilla_snowboard', 2, 1, '1000'),
(2274, 'Xmas Snowcone Costume', '1', '0', 'xmasnowcone_costume', 2, 1, '1000'),
(2275, 'Xmas Snowlantern', '1', '0', 'xmasnowlantern_anim', 2, 1, '1000'),
(2276, 'Xmas Reindeer Dog', '1', '0', 'xmasticker_dograindeer', 2, 1, '1000'),
(2277, 'Xmas Horizontale Gold', '1', '0', 'xmastrap_horiz_gold', 2, 1, '1000'),
(2278, 'Xmas Horizontale Silver', '1', '0', 'xmastrap_horiz_silve', 2, 1, '1000'),
(2279, 'Xmas Vertical Gold', '1', '0', 'xmastrap_vertical_gold', 2, 1, '1000'),
(2280, 'Xmas Vertical Silver', '1', '0', 'xmastrap_vertical_silver', 2, 1, '1000'),
(2281, 'Xmas Animated Thumb', '1', '0', 'xmatree01_animated', 2, 1, '1000'),
(2282, 'Xmas Animated Thumb 2', '1', '0', 'xmatree01_animated_thumb2', 2, 1, '1000'),
(2283, 'Xmas Tree Costume', '1', '0', 'xmatree_costume', 2, 1, '1000'),
(2284, 'Xmas Tree Sticker', '1', '0', 'xmaxtree_sticker', 2, 1, '1000'),
(2285, 'Xmas Light Animated', '1', '0', 'xmaslightanim', 2, 1, '1000'),
(2286, 'Xmas 3000 Animated Sticker', '1', '0', 'xmassticker_anim_3000', 2, 1, '230'),
(2287, 'Y', '1', '0', 'y', 2, 1, '203'),
(2288, 'Yearbook Ribbon Sticker', '1', '0', 'yearbook_ribbon_sticker', 2, 1, '50'),
(2289, 'Yellow Starfish', '1', '0', 'yellowstarfish', 2, 1, '230'),
(2290, 'Z', '1', '0', 'z', 2, 1, '203'),
(2291, 'Zack Ryder', '1', '0', 'zackryder', 2, 1, '209'),
(2292, 'Zombie Hand', '1', '0', 'zombiehand', 2, 1, '1000'),
(2293, 'Zombie Pupu', '1', '0', 'zombiepupu', 2, 1, '220'),
(2294, 'Kaatissakki Tausta', '4', '0', '27368_kaatissakki_tausta', 2, 1, '127'),
(2295, 'Appart. 723 Scene', '4', '0', '27419_appart732_scene', 2, 1, '127'),
(2296, 'Get it Card Background', '4', '0', '27835_getitcard_bg', 2, 1, '127'),
(2297, 'GSOK', '4', '0', '27857_gsok_928x1360', 2, 1, '127'),
(2298, 'HMF Principale', '4', '0', '28182_hmf_917x1360_principale', 2, 1, '1000'),
(2299, 'HMF Dediee', '4', '0', '28183_hmf_917x1360_dediee', 2, 1, '1000'),
(2300, 'HMF Principale B', '4', '0', '28184_hmf_917x1360_principale_b', 2, 1, '1000'),
(2301, 'Comic Style Orange', '4', '0', '28221_comic_style_orange', 2, 1, '1000'),
(2302, 'Productboard', '4', '0', '928x1360_productboard', 2, 1, '127'),
(2303, 'Abrinq Infobus', '4', '0', 'abrinq_infobus', 2, 1, '1000'),
(2304, 'Abrinq Infobus G', '4', '0', 'abrinq_infobusg', 2, 1, '1000'),
(2305, 'Acma Cork Background', '4', '0', 'acma_cork_bg', 2, 1, '127'),
(2306, 'Alhambra Group', '4', '0', 'alhambragroup', 2, 1, '127'),
(2307, 'All Habbos Group', '4', '0', 'allhabbos_group', 2, 1, '127'),
(2308, 'Amango Background', '4', '0', 'amango_bg', 2, 1, '127'),
(2309, 'Ametrin', '4', '0', 'ametrin', 2, 1, '1000'),
(2310, 'Armin van Buren Background', '4', '0', 'arminvanbuuren_928x1360', 2, 1, '127'),
(2311, 'Around the World Background', '4', '0', 'aroundtheworld_bg', 2, 1, '1000'),
(2312, 'AU Rock The Schools Background', '4', '0', 'au_rocktheschools_bg', 2, 1, '127'),
(2313, 'AU Rock The Schools Background 2', '4', '0', 'au_rocktheschools_bg_v2', 2, 1, '127'),
(2314, 'Background Tour', '4', '0', 'background_tour', 2, 1, '127'),
(2315, 'Group Background', '4', '0', 'bgroup', 2, 1, '1000'),
(2316, 'Beachbunny Wallpaper', '4', '0', 'beachbunny_wallpaper', 2, 1, '127'),
(2317, 'SPI Japaneese Petit', '4', '0', 'bg_27372_spi_jap_petit_03', 2, 1, '127'),
(2318, 'Comic Style Orange Background', '4', '0', 'bg_28221_comic_style_orange_001', 2, 1, '127'),
(2320, 'Background EF', '4', '0', 'bg_background_ef', 2, 1, '127'),
(2321, 'Bathroom Tile Background', '4', '0', 'bg_bathroom_tile', 2, 1, '127'),
(2322, 'Battle Ball Background 2', '4', '0', 'bg_battle_ball2', 2, 1, '127'),
(2323, 'Infobus White Background 2', '4', '0', 'bg_bg_infobus_white', 2, 1, '127'),
(2324, 'BHabboeart Background', '4', '0', 'bg_bHabboeart', 2, 1, '127'),
(2325, 'Bonsai Background', '4', '0', 'bg_bonsai', 2, 1, '127'),
(2326, 'Broken Glass Background', '4', '0', 'bg_broken_glass', 2, 1, '127'),
(2327, 'Bubble Background', '4', '0', 'bg_bubble', 2, 1, '127'),
(2328, 'Christmas 2007 Background', '4', '0', 'bg_christmas2007bg', 2, 1, '127'),
(2330, 'Colour 01 Background', '4', '0', 'bg_colour_01', 2, 1, '127'),
(2331, 'Colour 02 Background', '4', '0', 'bg_colour_02', 2, 1, '127'),
(2332, 'Colour 03 Background', '4', '0', 'bg_colour_03', 2, 1, '127'),
(2333, 'Colour 04 Background', '4', '0', 'bg_colour_04', 2, 1, '127'),
(2334, 'Colour 05 Background', '4', '0', 'bg_colour_05', 2, 1, '127'),
(2335, 'Colour 06 Background', '4', '0', 'bg_colour_06', 2, 1, '127'),
(2336, 'Colour 07 Background', '4', '0', 'bg_colour_07', 2, 1, '127'),
(2337, 'Colour 08 Background', '4', '0', 'bg_colour_08', 2, 1, '127'),
(2338, 'Colour 09 Background', '4', '0', 'bg_colour_09', 2, 1, '127'),
(2339, 'Colour 10 Background', '4', '0', 'bg_colour_10', 2, 1, '127'),
(2340, 'Colour 11 Background', '4', '0', 'bg_colour_11', 2, 1, '127'),
(2341, 'Colour 12 Background', '4', '0', 'bg_colour_12', 2, 1, '127'),
(2342, 'Colour 13 Background', '4', '0', 'bg_colour_13', 2, 1, '127'),
(2343, 'Colour 14 Background', '4', '0', 'bg_colour_14', 2, 1, '127'),
(2344, 'Colour 15 Background', '4', '0', 'bg_colour_15', 2, 1, '127'),
(2345, 'Colour 16 Background', '4', '0', 'bg_colour_16', 2, 1, '127'),
(2346, 'Colour 17 Background', '4', '0', 'bg_colour_17', 2, 1, '1000'),
(2347, 'Comic Background', '4', '0', 'bg_comic2', 2, 1, '127'),
(2348, 'Comic Sisters Background', '4', '0', 'bg_comic_sisters', 2, 1, '127'),
(2349, 'Cork Background', '4', '0', 'bg_cork', 2, 1, '127'),
(2350, 'Dark Floors Background', '4', '0', 'bg_dark_floors', 2, 1, '127'),
(2351, 'Denim Background', '4', '0', 'bg_denim', 2, 1, '127'),
(2352, 'Easter Eggs Background', '4', '0', 'bg_easter_eggs_wallpaper', 2, 1, '127'),
(2353, 'Fansites Background', '4', '0', 'bg_fansites', 2, 1, '127'),
(2354, 'Goth Pattern Background', '4', '0', 'bg_goth_pattern', 2, 1, '128'),
(2355, 'Grass Background', '4', '0', 'bg_grass', 2, 1, '128'),
(2356, 'Habbo Lido Background', '4', '0', 'bg_habbolido', 2, 1, '128'),
(2357, 'Habboween Background', '4', '0', 'bg_habboween', 2, 1, '128'),
(2358, 'Hotel Background', '4', '0', 'bg_hotel', 2, 1, '128'),
(2359, 'Valentine Love Background', '4', '0', 'bg_hw_val_bgpattern_love', 2, 1, '1000'),
(2360, 'Image Submarine Background', '4', '0', 'bg_image_submarine', 2, 1, '128'),
(2361, 'Infobus Blue Background', '4', '0', 'bg_infobus_blue', 2, 1, '128'),
(2362, 'Infobus White Background', '4', '0', 'bg_infobus_white', 2, 1, '128'),
(2363, 'Infobus Yellow Background', '4', '0', 'bg_infobus_yellow', 2, 1, '128'),
(2364, 'Kerrang', '4', '0', 'bg_kerrang2', 2, 1, '128'),
(2365, 'Kingcorp Background', '4', '0', 'bg_kingcorp', 2, 1, '1000'),
(2366, 'Kingcorp Background 2', '4', '0', 'bg_kingcorp_928x1360', 2, 1, '1000'),
(2367, 'Konkur Rence Background', '4', '0', 'bg_konkurrence', 2, 1, '1000'),
(2368, 'Konkur Renceno Background', '4', '0', 'bg_konkurrenceno', 2, 1, '1000'),
(2369, 'Lace Background', '4', '0', 'bg_lace', 2, 1, '128'),
(2370, 'Lido Flat Background', '4', '0', 'bg_lido_flat', 2, 1, '128'),
(2371, 'Lido Background', '4', '0', 'bg_lidoo', 2, 1, '128'),
(2372, 'Madball 2008 Background', '4', '0', 'bg_madball_2008_bg_001', 2, 1, '128'),
(2373, 'Metal Background 2', '4', '0', 'bg_metal2', 2, 1, '128'),
(2374, 'Natasha Bedingfield Background', '4', '0', 'bg_natashabedingfield', 2, 1, '128'),
(2375, 'Newyear Background', '4', '0', 'bg_newyear', 2, 1, '1000'),
(2376, 'Newyear Fireworks Background', '4', '0', 'bg_newyear_bg_fireworks', 2, 1, '1000'),
(2377, 'Official Fansites Background', '4', '0', 'bg_official_fansites2', 2, 1, '128'),
(2378, 'Pattern Abstract Background', '4', '0', 'bg_pattern_abstract1', 2, 1, '128'),
(2379, 'Pattern Abstract Background 2', '4', '0', 'bg_pattern_abstract2', 2, 1, '128'),
(2380, 'Pattern Bobbaskulls  Background', '4', '0', 'bg_pattern_bobbaskulls1', 2, 1, '128'),
(2381, 'Pattern Bricks Background', '4', '0', 'bg_pattern_bricks', 2, 1, '128'),
(2382, 'Pattern Bulb Background', '4', '0', 'bg_pattern_bulb', 2, 1, '128'),
(2383, 'Pattern Carpants Background', '4', '0', 'bg_pattern_carpants', 2, 1, '128'),
(2384, 'Pattern Cars Background', '4', '0', 'bg_pattern_cars', 2, 1, '128'),
(2385, 'Pattern Clouds Background', '4', '0', 'bg_pattern_clouds', 2, 1, '128'),
(2386, 'Pattern Deepred Background', '4', '0', 'bg_pattern_deepred', 2, 1, '128'),
(2387, 'Pattern Fish Background', '4', '0', 'bg_pattern_fish', 2, 1, '128'),
(2388, 'Pattern Floral Background 1', '4', '0', 'bg_pattern_floral_01', 2, 1, '128'),
(2389, 'Pattern Floral Background 2', '4', '0', 'bg_pattern_floral_02', 2, 1, '128'),
(2390, 'Pattern Floral Background 3', '4', '0', 'bg_pattern_floral_03', 2, 1, '128'),
(2391, 'Pattern Floral Background', '4', '0', 'bg_pattern_floral_test', 2, 1, '128'),
(2392, 'Pattern Hearts Background', '4', '0', 'bg_pattern_hearts', 2, 1, '128'),
(2393, 'Pattern Plasto Background', '4', '0', 'bg_pattern_plasto', 2, 1, '128'),
(2394, 'Pattern Space Background', '4', '0', 'bg_pattern_space', 2, 1, '128'),
(2395, 'Pattern Tinyroom Background', '4', '0', 'bg_pattern_tinyroom', 2, 1, '128'),
(2396, 'Poptarts CV Background', '4', '0', 'bg_poptarts_cv', 2, 1, '128'),
(2397, 'Poptarts SB Background', '4', '0', 'bg_poptarts_sb', 2, 1, '128'),
(2398, 'Rain Background', '4', '0', 'bg_rain', 2, 1, '128'),
(2399, 'Rasta Background', '4', '0', 'bg_rasta_99x99', 2, 1, '1000'),
(2400, 'Ruled Paper Background', '4', '0', 'bg_ruled_paper', 2, 1, '128'),
(2401, 'Serpentine Background', '4', '0', 'bg_serpentine_1', 2, 1, '128'),
(2402, 'Serpentine  Background 2', '4', '0', 'bg_serpentine_2', 2, 1, '128'),
(2403, 'Serpentine Darkblue Background', '4', '0', 'bg_serpentine_darkblue', 2, 1, '128'),
(2404, 'Serpentine Darkred Background', '4', '0', 'bg_serpentine_darkred', 2, 1, '128'),
(2405, 'Serpentine Darkred Background 2', '4', '0', 'bg_serpntine_darkred', 2, 1, '128'),
(2406, 'Sexy Dance Background', '4', '0', 'bg_sexy_dance_2_group_opt2', 2, 1, '128'),
(2407, 'Shabbolin Background', '4', '0', 'bg_shabbolin', 2, 1, '1000'),
(2408, 'Solid Black Background', '4', '0', 'bg_solid_black', 2, 1, '128'),
(2409, 'Solid White Background', '4', '0', 'bg_solid_white', 2, 1, '128'),
(2410, 'Starburst Raspberry Background', '4', '0', 'bg_starburst_raspberry', 2, 1, '128'),
(2411, 'Stitched Background', '4', '0', 'bg_stitched', 2, 1, '128'),
(2412, 'Stone Background', '4', '0', 'bg_stone', 2, 1, '128'),
(2413, 'Tonga Background', '4', '0', 'bg_tonga', 2, 1, '129'),
(2414, 'Unofficial Fansites Background', '4', '0', 'bg_unofficial_fansites', 2, 1, '129'),
(2415, 'US Staffers Background', '4', '0', 'bg_us_staffers', 2, 1, '1000'),
(2416, 'VIP Background', '4', '0', 'bg_vip', 2, 1, '129'),
(2417, 'Voice of Teens Background', '4', '0', 'bg_voiceofteens', 2, 1, '129'),
(2418, 'Wobble Squabble Background', '4', '0', 'bg_wobble_squabble', 2, 1, '129'),
(2419, 'Wood Background', '4', '0', 'bg_wood', 2, 1, '129'),
(2420, 'Xmas Starsky Background', '4', '0', 'bg_xmasbgpatternstarsky', 2, 1, '1000'),
(2421, 'Xmas Gift Background', '4', '0', 'bg_xmas_gift', 2, 1, '1000'),
(2422, 'Starysky  Background', '4', '0', 'bgpattern_starsky', 2, 1, '1000'),
(2423, 'Bionicle 2', '4', '0', 'bionicle2', 2, 1, '129'),
(2424, 'Bubblejuice Background', '4', '0', 'bubblejuice_bg', 2, 1, '129'),
(2425, 'Camo Cheese Background', '4', '0', 'camo_cheese_wallpaper', 2, 1, '129'),
(2426, 'Cheese Suit', '4', '0', 'cheese_suit', 2, 1, '1000'),
(2427, 'Cheesewedge Background', '4', '0', 'cheesewedge_wallpaper', 2, 1, '129'),
(2429, 'Christmas Background 2 ', '4', '0', 'christmas2007bg_001', 2, 1, '129'),
(2430, 'CN Background', '4', '0', 'cn_mgpam_bg', 2, 1, '129'),
(2431, 'CN Background 2', '4', '0', 'cn_mgpam_bg_v2', 2, 1, '129'),
(2432, 'CN Background 3', '4', '0', 'cn_mgpam_bg_v3', 2, 1, '129'),
(2433, 'China Kunfu Girl', '4', '0', 'cny_kunfu_girl', 2, 1, '1000'),
(2434, 'Comic Style', '4', '0', 'comic_style', 2, 1, '129'),
(2435, 'Dia de Internet 2008', '4', '0', 'diadeinternet2008', 2, 1, '129'),
(2436, 'Donnas Background 2', '4', '0', 'donnaswallpaper', 2, 1, '129'),
(2437, 'Donnas Background', '4', '0', 'donnas_wallpaper', 2, 1, '129'),
(2438, 'Earthday Background', '4', '0', 'earthday_bk', 2, 1, '129'),
(2439, 'Easter Birdie', '4', '0', 'easter_birdie', 2, 1, '1000'),
(2440, 'Easter Broomstick', '4', '0', 'easter_broomstick_002', 2, 1, '1000'),
(2441, 'Easter Eggs Wallpaper', '4', '0', 'easter_egg_wallpaper', 2, 1, '129'),
(2442, 'Easter Eggs Horizontal', '4', '0', 'easter_eggs_horizontal', 2, 1, '1000'),
(2443, 'Easter Eggs Vertical', '4', '0', 'easter_eggs_vertical_001', 2, 1, '1000'),
(2446, 'Easter Egg Costume', '4', '0', 'easteregg_costume', 2, 1, '1000'),
(2447, 'E-Wallpaper', '4', '0', 'e928x1360', 2, 1, '1000'),
(2448, 'ES Calandar Background', '4', '0', 'es_calendarbg', 2, 1, '129'),
(2449, 'ES Italia Background', '4', '0', 'es_wallpaper_italia', 2, 1, '129'),
(2450, 'ES Obrero Background', '4', '0', 'es_wallpaper_obrero', 2, 1, '129'),
(2451, 'ES Sralim Background', '4', '0', 'es_wallpaper_sralim', 2, 1, '129'),
(2452, 'Executive Background', '4', '0', 'exe_background', 2, 1, '129'),
(2453, 'Executive Wood Background', '4', '0', 'exe_wood_background', 2, 1, '129'),
(2454, 'Executive Viilu Background', '4', '0', 'exec_bg_viilu', 2, 1, '129'),
(2455, 'Expert Background', '4', '0', 'expert_backround', 2, 1, '129'),
(2456, 'Fantastic Four 3', '4', '0', 'fan43', 2, 1, '129'),
(2457, 'Fantastic Four 1', '4', '0', 'fantastic4', 2, 1, '129'),
(2458, 'Fantastic Four 2', '4', '0', 'fantastic42', 2, 1, '129'),
(2459, 'Fantastic Four', '4', '0', 'fantasticfour', 2, 1, '129'),
(2460, 'Felix 3rd', '4', '0', 'felix03', 2, 1, '1000'),
(2461, 'Felix Ryhmasivutausta', '4', '0', 'felix_ryhmasivutausta', 2, 1, '129'),
(2462, 'Felix Ryhmasivutaustakuva', '4', '0', 'felix_ryhmasivutaustakuva', 2, 1, '129'),
(2463, 'Festade Boasvindas', '4', '0', 'festadeboasvindas', 2, 1, '1000'),
(2464, 'FI Linnamaki Background', '4', '0', 'fi_linnanmaki_bg', 2, 1, '129'),
(2465, 'FI Puffet Background', '4', '0', 'fi_puffet_bg', 2, 1, '129'),
(2466, 'Fondo Habbo Cibervoluntarios', '4', '0', 'fondo_habbo_cibervoluntarios', 2, 1, '129'),
(2467, 'FR Spiderwick', '4', '0', 'fr_spiderwick', 2, 1, '129'),
(2468, 'Global World Background', '4', '0', 'globalw_background', 2, 1, '129'),
(2469, 'Goth Pattern', '4', '0', 'goth_pattern', 2, 1, '129'),
(2470, 'Goth Pattern 2', '4', '0', 'goth_patternn', 2, 1, '129'),
(2471, 'Grandi Habbo Ryhma', '4', '0', 'grandi_habbo_ryhma', 2, 1, '129'),
(2472, 'Snowbattle Background 2', '4', '0', 'grouppage_snowbattle2', 2, 1, '129'),
(2473, 'Grunge Background', '4', '0', 'grungewall', 2, 1, '129'),
(2474, 'Gruposeda Teens', '4', '0', 'gruposedateens', 2, 1, '1000'),
(2475, 'Guidesgroup Background', '4', '0', 'guidesgroup_bg', 2, 1, '129'),
(2476, 'Habbo Group Tutorial', '4', '0', 'habbo_group_tutorial', 2, 1, '129'),
(2478, 'Habbo Ryhmatausta', '4', '0', 'habbo_ryhmatausta', 2, 1, '129'),
(2479, 'Habbo Social Game', '4', '0', 'habbo_social_game_001_opt', 2, 1, '129'),
(2480, 'Habbo Social Game 2', '4', '0', 'habbo_social_game_002', 2, 1, '129'),
(2481, 'Habbo Toolbar Background', '4', '0', 'habbo_toolbar', 2, 1, '130');
INSERT INTO `cms_homes_catalouge` (`id`, `name`, `type`, `subtype`, `data`, `price`, `amount`, `category`) VALUES
(2482, 'Habbo Classifieds Background', '4', '0', 'habboclassifieds', 2, 1, '130'),
(2483, 'Habbo Fest 2008 Background', '4', '0', 'habbofest2008_bg', 2, 1, '130'),
(2484, 'Habbo Group Background', '4', '0', 'habbogroup', 2, 1, '130'),
(2485, 'Habboguide Background', '4', '0', 'habboguide', 2, 1, '130'),
(2486, 'Habborella Sea Background', '4', '0', 'habborella_sea_bg', 2, 1, '130'),
(2487, 'Habborella Background', '4', '0', 'habborellabg', 2, 1, '130'),
(2488, 'Habbos Background', '4', '0', 'habbos_group', 2, 1, '130'),
(2489, 'Habboween Background', '4', '0', 'habboween_bg', 2, 1, '130'),
(2491, 'Habbox Background', '4', '0', 'habbox', 2, 1, '130'),
(2493, 'Hanna Montana Background', '4', '0', 'hannamontanawp', 2, 1, '130'),
(2494, 'HC Machine Background', '4', '0', 'hc_bg_machine', 2, 1, '130'),
(2495, 'HC Pillow Background', '4', '0', 'hc_bg_pillow', 2, 1, '130'),
(2496, 'HC Royal Background', '4', '0', 'hc_bg_royal', 2, 1, '130'),
(2497, 'Dediee', '4', '0', 'hmf_928x1360_dediee', 2, 1, '130'),
(2498, 'Principale', '4', '0', 'hmf_928x1360_principale', 2, 1, '130'),
(2499, 'Principale 2', '4', '0', 'hmf_928x1360_principale_b', 2, 1, '130'),
(2500, 'Hundredmillion Background', '4', '0', 'hundredmillionbg', 2, 1, '1000'),
(2501, 'Hundredmillion Background', '4', '0', 'hundredmillion_bg', 2, 1, '130'),
(2502, 'Around the World Wallpaper', '4', '0', 'hwaround_the_world_wallpaper', 2, 1, '1000'),
(2503, 'BGUS Staff', '4', '0', 'hwbgus-staff', 2, 1, '1000'),
(2504, 'Easter Egg Wallpaper', '4', '0', 'hweaster_egg_wallpaper', 2, 1, '1000'),
(2505, 'Xmas Gifts Background', '4', '0', 'hwxmas_gifts_bg', 2, 1, '1000'),
(2506, 'Bassplayer Girl', '4', '0', 'hw_bassplayer_girl', 2, 1, '1000'),
(2507, 'Valentine Love Background', '4', '0', 'hw_val_bgpattern_love', 2, 1, '130'),
(2508, 'Infobus SEM Logo', '4', '0', 'infobus_abrinq_sem_logo', 2, 1, '130'),
(2509, 'Inked Background', '4', '0', 'inked_bg', 2, 1, '130'),
(2510, 'Jopelines', '4', '0', 'jopelines', 2, 1, '130'),
(2511, 'Jordin Parks', '4', '0', 'jordinparks', 2, 1, '130'),
(2512, 'Japaneese Valentine', '4', '0', 'jpvalentine', 2, 1, '1000'),
(2513, 'Japaneese Background', '4', '0', 'jp_prom_bg', 2, 1, '130'),
(2514, 'Japaneese Valentine', '4', '0', 'jp_valentine', 2, 1, '130'),
(2515, 'July Wallpaper', '4', '0', 'july408_wallpaper', 2, 1, '130'),
(2516, 'Kerrang', '4', '0', 'kerrang2', 2, 1, '130'),
(2517, 'KFP Background', '4', '0', 'kfp_grouppage_bg', 2, 1, '130'),
(2518, 'Kingcorps', '4', '0', 'kingcorp928x1360', 2, 1, '1000'),
(2519, 'Kingcorps', '4', '0', 'kingcorp_928x1360', 2, 1, '130'),
(2520, 'Kir Background', '4', '0', 'kir_grouppage_bg', 2, 1, '130'),
(2521, 'Kir Stamp', '4', '0', 'kir_stamp4', 2, 1, '1000'),
(2522, 'Kungfu Background', '4', '0', 'kungfu_bg', 2, 1, '130'),
(2523, 'Madball 2008 Background', '4', '0', 'madball_2008_bg', 2, 1, '130'),
(2525, 'Makeover Background', '4', '0', 'makeover', 2, 1, '130'),
(2526, 'Manteli Background', '4', '0', 'manteli_bg', 2, 1, '130'),
(2527, 'Meet Dave Background', '4', '0', 'meet_dave_groupbg_01', 2, 1, '130'),
(2528, 'Meet Dave Background 2', '4', '0', 'meet_dave_groupbg_02', 2, 1, '130'),
(2529, 'Misshabbo Scene', '4', '0', 'misshabbo_scene', 2, 1, '130'),
(2530, 'Mmoore Wallpaper', '4', '0', 'mmoorewallpaper', 2, 1, '130'),
(2531, 'MMS', '4', '0', 'mms', 2, 1, '130'),
(2532, 'Netari Background', '4', '0', 'netaribg', 2, 1, '130'),
(2534, 'Newyear Fireworks Background', '4', '0', 'newyear_bg_fireworks', 2, 1, '1000'),
(2536, 'Newyear Fireworks Background 2', '4', '0', 'newyear_bg_fireworks2', 2, 1, '130'),
(2537, 'Green Background', '4', '0', 'nl_green_bg', 2, 1, '130'),
(2538, 'NS France', '4', '0', 'nsfrance', 2, 1, '130'),
(2539, 'NS France 2', '4', '0', 'nsfrance2', 2, 1, '130'),
(2540, 'OB', '4', '0', 'ob1', 2, 1, '130'),
(2541, 'OB 2', '4', '0', 'ob2', 2, 1, '130'),
(2542, 'Orca', '4', '0', 'orca', 2, 1, '130'),
(2543, 'Penelope', '4', '0', 'penelope', 2, 1, '130'),
(2544, 'Poptarts CV', '4', '0', 'poptarts_cv', 2, 1, '130'),
(2546, 'Promofthedead Wallpaper', '4', '0', 'promofthedead_wallpaper', 2, 1, '130'),
(2547, 'Random Habbos', '4', '0', 'random_habbos', 2, 1, '131'),
(2548, 'Robojam Wallpaper', '4', '0', 'robojam_wallpaper', 2, 1, '131'),
(2549, 'Room of the Week Background', '4', '0', 'room_of_the_week_bg', 2, 1, '131'),
(2550, 'Safetyweek Background', '4', '0', 'safetyweek2008', 2, 1, '1000'),
(2551, 'Safetyweek Background 2', '4', '0', 'safetyweek2008_b', 2, 1, '1000'),
(2552, 'Safetyweek Background 3', '4', '0', 'safetyweek2008_bg', 2, 1, '131'),
(2553, 'Samsungclouds', '4', '0', 'samsungclouds', 2, 1, '131'),
(2554, 'Samsunlight', '4', '0', 'samsungnight', 2, 1, '131'),
(2555, 'Sasquatch Background', '4', '0', 'sasquatch_hhbg3', 2, 1, '131'),
(2556, 'Scarecrow Background', '4', '0', 'scarecrowbg', 2, 1, '131'),
(2557, 'Animax Keroro', '4', '0', 'sg_animax_keroro', 2, 1, '131'),
(2558, 'MTV Background', '4', '0', 'sg_mtv_grouppage_bg_v1', 2, 1, '131'),
(2559, 'MTV Background 2', '4', '0', 'sg_mtv_grouppage_bg_v2', 2, 1, '131'),
(2560, 'Shabbo Line', '4', '0', 'shabboline', 2, 1, '131'),
(2561, 'Silver Surfer', '4', '0', 'silversurfer', 2, 1, '131'),
(2564, 'Simpleplan Background', '4', '0', 'simpleplan_bg', 2, 1, '131'),
(2566, 'Slamdunk', '4', '0', 'slamdunk', 2, 1, '131'),
(2567, 'Snowstorm Background', '4', '0', 'snowstorm_bg', 2, 1, '131'),
(2568, 'Sofresh Background', '4', '0', 'sofresh_bg', 2, 1, '131'),
(2569, 'Solid Background Black', '4', '0', 'solid_bg_black', 2, 1, '131'),
(2570, 'Solid Background White', '4', '0', 'solid_bg_white', 2, 1, '131'),
(2571, 'Spiderwick Beware', '4', '0', 'spiderwick_beware', 2, 1, '131'),
(2572, 'Spiderwick Fairy', '4', '0', 'spiderwick_fairy', 2, 1, '131'),
(2573, 'Spiderwick Goblin', '4', '0', 'spiderwick_goblin', 2, 1, '131'),
(2574, 'Spiderwick Main', '4', '0', 'spiderwick_main', 2, 1, '131'),
(2575, 'SPM Background', '4', '0', 'spm_background', 2, 1, '131'),
(2576, 'SPM Background 2', '4', '0', 'spm_bg_version_041207', 2, 1, '1000'),
(2577, 'Snowstorm Red Costume', '4', '0', 'ss_bootsitjalapaset_red', 2, 1, '1000'),
(2578, 'Snowstorm Blue Costume', '4', '0', 'ss_costume_blue', 2, 1, '1000'),
(2579, 'Raspberry', '4', '0', 'starburstraspberry', 2, 1, '1000'),
(2580, 'sticker_Cape', '4', '0', 'sticker_cape', 2, 1, '1000'),
(2581, 'sticker_Heartbeat ', '4', '0', 'sticker_heartbeat_2', 2, 1, '1000'),
(2582, 'sticker_Masque 4', '4', '0', 'sticker_masque_04', 2, 1, '1000'),
(2583, 'Stray Pixel Background', '4', '0', 'straypixelsbg', 2, 1, '131'),
(2584, 'Streaming 1', '4', '0', 'streaming001', 2, 1, '131'),
(2585, 'Streaming 2', '4', '0', 'streaming002', 2, 1, '131'),
(2586, 'Streaming 3', '4', '0', 'streaming003', 2, 1, '131'),
(2587, 'Sttrinians Blackboard', '4', '0', 'sttriniansblackboard', 2, 1, '131'),
(2588, 'Sttrinians Group', '4', '0', 'sttriniansgroup', 2, 1, '131'),
(2589, 'Summer Background', '4', '0', 'summer_bg', 2, 1, '131'),
(2590, 'Summer Background Optimal', '4', '0', 'summer_bg_optimal', 2, 1, '131'),
(2592, 'The Green', '4', '0', 'the_green', 2, 1, '131'),
(2593, 'Themepark Background 1', '4', '0', 'themepark_bg_01', 2, 1, '131'),
(2594, 'Themepark Background 2', '4', '0', 'themepark_bg_02', 2, 1, '131'),
(2595, 'Tiki Firehead Background', '4', '0', 'tiki_firehead_bg', 2, 1, '131'),
(2596, 'Tokiohotel Wallpaper', '4', '0', 'tokiohotel2', 2, 1, '131'),
(2597, 'Tokiohotel Scream Wallpaper', '4', '0', 'tokiohotel_scream_wallpaper', 2, 1, '131'),
(2599, 'Top Gamers Background', '4', '0', 'top_gamers_bg_64', 2, 1, '131'),
(2600, 'Trax Bling', '4', '0', 'trax_bling', 2, 1, '1000'),
(2602, 'USA Staff Wallpaper', '4', '0', 'usastaff-wall', 2, 1, '131'),
(2605, 'Valentine Costume 4', '4', '0', 'val_love-costume4', 2, 1, '1000'),
(2606, 'Valentine Costume 3', '4', '0', 'val_lovecostume3', 2, 1, '1000'),
(2607, 'Vale Rose Background', '4', '0', 'vale_rose_bg', 2, 1, '131'),
(2608, 'Vale Skull Background', '4', '0', 'vale_skull_bg', 2, 1, '131'),
(2609, 'VIP Group', '4', '0', 'vip_group', 2, 1, '50'),
(2611, 'Wallpaper Voiceofteens', '4', '0', 'voiceofteens', 2, 1, '1000'),
(2612, 'Wallepixar Background', '4', '0', 'wallepixar_bg', 2, 1, '131'),
(2613, 'Wallpaper 1', '4', '0', 'wallpaper1', 2, 1, '131'),
(2614, 'Wallpaper 2', '4', '0', 'wallpaper2', 2, 1, '131'),
(2616, 'Wallpaper 3', '4', '0', 'wallpaper3', 2, 1, '131'),
(2617, 'Wallpaper 4', '4', '0', 'wallpaper4', 2, 1, '131'),
(2618, 'Wallpaper Bonsai', '4', '0', 'wallpaper_bonsai', 2, 1, '131'),
(2619, 'Wallpaper Cais', '4', '0', 'wallpaper_cais4', 2, 1, '131'),
(2620, 'Wallpaper Earthday', '4', '0', 'wallpaper_earthday', 2, 1, '131'),
(2621, 'Wallpaper Mshepard', '4', '0', 'wallpaper_mshepard', 2, 1, '132'),
(2622, 'Wallpaper Newsiesca', '4', '0', 'wallpaper_newsiesca', 2, 1, '132'),
(2623, 'Wallpaper Veronicas', '4', '0', 'wallpaper_veronicas', 2, 1, '132'),
(2624, 'Wallpaper Victoriaday', '4', '0', 'wallpaper_victoriaday', 2, 1, '132'),
(2625, 'Welcoming Party', '4', '0', 'welcoming_party', 2, 1, '132'),
(2626, 'Wrestlemania Nowayout Wallpaper', '4', '0', 'wwe_nowayout_wallpaper', 2, 1, '132'),
(2627, 'Wrestlemania Wallpaper', '4', '0', 'wwe_wallpaper', 2, 1, '132'),
(2628, 'Wrestlemania Big Battle', '4', '0', 'wwe_wrestlemania_big_battle', 2, 1, '132'),
(2629, 'Wrestlemania Bunnymania', '4', '0', 'wwe_wrestlemania_bunnymania', 2, 1, '132'),
(2630, 'Wrestlemania Ladder Match', '4', '0', 'wwe_wrestlemania_ladder_match', 2, 1, '132'),
(2631, 'Wrestlemania Main', '4', '0', 'wwe_wrestlemania_main', 2, 1, '132'),
(2632, 'Wrestlemania Triple Champ', '4', '0', 'wwe_wrestlemania_triple_champ', 2, 1, '132'),
(2633, 'Wrestlemania World Champ', '4', '0', 'wwe_wrestlemania_world_champ', 2, 1, '132'),
(2634, 'Xmas 2006 Background', '4', '0', 'xmas2006backgrounds', 2, 1, '1000'),
(2635, 'Xmas Background Starsky', '4', '0', 'xmasbgpatternstarsky', 2, 1, '1000'),
(2636, 'Xmas Background Starsky', '4', '0', 'xmas_bgpattern_starsky', 2, 1, '132'),
(2637, 'Xmas Box Darkred', '4', '0', 'xmas_box_darkred', 2, 1, '1000'),
(2638, 'Xmas Box Darkred 2', '4', '0', 'xmas_box_darkred2', 2, 1, '1000'),
(2639, 'Xmas Box Darkred 3', '4', '0', 'xmas_box_darkred3', 2, 1, '1000'),
(2640, 'Xmas Box Green', '4', '0', 'xmas_box_green', 2, 1, '1000'),
(2641, 'Xmas Box Lime', '4', '0', 'xmas_box_lime', 2, 1, '1000'),
(2642, 'Xmas Gifts Background', '4', '0', 'xmas_gifts_bg', 2, 1, '1000'),
(2645, 'Xmas Gifts Background 2', '4', '0', 'xmas_gifts_gb', 2, 1, '132'),
(2646, 'Xmas HC Ribbon', '4', '0', 'xmas_hc_ribbon', 2, 1, '1000'),
(2647, 'Xmas Reindeer Sticker', '4', '0', 'xmas_jeff_donkey_reindeer_sticker', 2, 1, '1000'),
(2648, 'Xmas Tree Animated', '4', '0', 'xmas_tree01_animated', 2, 1, '1000'),
(2649, 'Yearbook Wallpaper', '4', '0', 'yearbook_wallpaper', 2, 1, '132'),
(1, 'Genie Fire Head', '1', '0', 'geniefirehead', 2, 1, '19'),
(2781, 'blue_diner_a', '1', '0', 'blue_diner_a', 2, 1, '242'),
(2782, 'blue_diner_a_umlaut', '1', '0', 'blue_diner_a_umlaut', 2, 1, '242'),
(2783, 'blue_diner_ae', '1', '0', 'blue_diner_ae', 2, 1, '242'),
(2784, 'blue_diner_b', '1', '0', 'blue_diner_b', 2, 1, '242'),
(2785, 'blue_diner_c', '1', '0', 'blue_diner_c', 2, 1, '242'),
(2786, 'blue_diner_c_cedilla', '1', '0', 'blue_diner_c_cedilla', 2, 1, '242'),
(2787, 'blue_diner_d', '1', '0', 'blue_diner_d', 2, 1, '242'),
(2788, 'blue_diner_e', '1', '0', 'blue_diner_e', 2, 1, '242'),
(2789, 'blue_diner_e_acc', '1', '0', 'blue_diner_e_acc', 2, 1, '242'),
(2790, 'blue_diner_e_acc_grave', '1', '0', 'blue_diner_e_acc_grave', 2, 1, '242'),
(2791, 'blue_diner_eight', '1', '0', 'blue_diner_eight', 2, 1, '242'),
(2792, 'blue_diner_exclamation', '1', '0', 'blue_diner_exclamation', 2, 1, '242'),
(2793, 'blue_diner_f', '1', '0', 'blue_diner_f', 2, 1, '242'),
(2794, 'blue_diner_five', '1', '0', 'blue_diner_five', 2, 1, '242'),
(2795, 'blue_diner_four', '1', '0', 'blue_diner_four', 2, 1, '242'),
(2796, 'blue_diner_g', '1', '0', 'blue_diner_g', 2, 1, '242'),
(2797, 'blue_diner_h', '1', '0', 'blue_diner_h', 2, 1, '242'),
(2798, 'blue_diner_i', '1', '0', 'blue_diner_i', 2, 1, '242'),
(2799, 'blue_diner_j', '1', '0', 'blue_diner_j', 2, 1, '242'),
(2800, 'blue_diner_k', '1', '0', 'blue_diner_k', 2, 1, '242'),
(2801, 'blue_diner_l', '1', '0', 'blue_diner_l', 2, 1, '242'),
(2802, 'blue_diner_m', '1', '0', 'blue_diner_m', 2, 1, '242'),
(2803, 'blue_diner_n', '1', '0', 'blue_diner_n', 2, 1, '242'),
(2804, 'blue_diner_nine', '1', '0', 'blue_diner_nine', 2, 1, '242'),
(2805, 'blue_diner_o', '1', '0', 'blue_diner_o', 2, 1, '242'),
(2806, 'blue_diner_o_accute', '1', '0', 'blue_diner_o_accute', 2, 1, '242'),
(2807, 'blue_diner_o_cc_grave', '1', '0', 'blue_diner_o_cc_grave', 2, 1, '242'),
(2808, 'blue_diner_o_umlaut', '1', '0', 'blue_diner_o_umlaut', 2, 1, '242'),
(2809, 'blue_diner_one', '1', '0', 'blue_diner_one', 2, 1, '242'),
(2810, 'blue_diner_p', '1', '0', 'blue_diner_p', 2, 1, '242'),
(2811, 'blue_diner_q', '1', '0', 'blue_diner_q', 2, 1, '242'),
(2812, 'blue_diner_question', '1', '0', 'blue_diner_question', 2, 1, '242'),
(2813, 'blue_diner_r', '1', '0', 'blue_diner_r', 2, 1, '242'),
(2814, 'blue_diner_s', '1', '0', 'blue_diner_s', 2, 1, '242'),
(2815, 'blue_diner_seven', '1', '0', 'blue_diner_seven', 2, 1, '242'),
(2816, 'blue_diner_six', '1', '0', 'blue_diner_six', 2, 1, '242'),
(2817, 'blue_diner_t', '1', '0', 'blue_diner_t', 2, 1, '242'),
(2818, 'blue_diner_three', '1', '0', 'blue_diner_three', 2, 1, '242'),
(2819, 'blue_diner_two', '1', '0', 'blue_diner_two', 2, 1, '242'),
(2820, 'blue_diner_u', '1', '0', 'blue_diner_u', 2, 1, '242'),
(2821, 'blue_diner_u_acc', '1', '0', 'blue_diner_u_acc', 2, 1, '242'),
(2822, 'blue_diner_u_acc_grave', '1', '0', 'blue_diner_u_acc_grave', 2, 1, '242'),
(2823, 'blue_diner_u_umlaut', '1', '0', 'blue_diner_u_umlaut', 2, 1, '242'),
(2824, 'blue_diner_upsidedown', '1', '0', 'blue_diner_upsidedown', 2, 1, '242'),
(2825, 'blue_diner_v', '1', '0', 'blue_diner_v', 2, 1, '242'),
(2826, 'blue_diner_w', '1', '0', 'blue_diner_w', 2, 1, '242'),
(2827, 'blue_diner_x', '1', '0', 'blue_diner_x', 2, 1, '242'),
(2828, 'blue_diner_y', '1', '0', 'blue_diner_y', 2, 1, '242'),
(2829, 'blue_diner_z', '1', '0', 'blue_diner_z', 2, 1, '242'),
(2830, 'blue_diner_zero', '1', '0', 'blue_diner_zero', 2, 1, '242'),
(2930, 'diner_belair', '1', '0', 'diner_belair', 2, 1, '243'),
(2933, 'diner_gaspump_blue', '1', '0', 'diner_gaspump_blue', 2, 1, '243'),
(2934, 'diner_gaspump_green', '1', '0', 'diner_gaspump_green', 2, 1, '243'),
(2935, 'diner_gaspump_red', '1', '0', 'diner_gaspump_red', 2, 1, '243'),
(2941, 'diner_hotrod', '1', '0', 'diner_hotrod', 2, 1, '243'),
(2943, 'diner_plymouth', '1', '0', 'diner_plymouth', 2, 1, '243'),
(2944, 'diner_poster', '1', '0', 'diner_poster', 2, 1, '243'),
(2945, 'diner_sign', '1', '0', 'diner_sign', 2, 1, '243'),
(2947, 'diner_trophy_bronze', '1', '0', 'diner_trophy_bronze', 2, 1, '243'),
(2948, 'diner_trophy_gold', '1', '0', 'diner_trophy_gold', 2, 1, '243'),
(2949, 'diner_trophy_silver', '1', '0', 'diner_trophy_silver', 2, 1, '243'),
(3080, 'green_diner_a', '1', '0', 'green_diner_a', 2, 1, '244'),
(3081, 'green_diner_a_umlaut', '1', '0', 'green_diner_a_umlaut', 2, 1, '244'),
(3082, 'green_diner_ae', '1', '0', 'green_diner_ae', 2, 1, '244'),
(3083, 'green_diner_b', '1', '0', 'green_diner_b', 2, 1, '244'),
(3084, 'green_diner_c', '1', '0', 'green_diner_c', 2, 1, '244'),
(3085, 'green_diner_c_cedilla', '1', '0', 'green_diner_c_cedilla', 2, 1, '244'),
(3086, 'green_diner_d', '1', '0', 'green_diner_d', 2, 1, '244'),
(3087, 'green_diner_e', '1', '0', 'green_diner_e', 2, 1, '244'),
(3088, 'green_diner_e_acc', '1', '0', 'green_diner_e_acc', 2, 1, '244'),
(3089, 'green_diner_e_cc_grave', '1', '0', 'green_diner_e_cc_grave', 2, 1, '244'),
(3090, 'green_diner_eight', '1', '0', 'green_diner_eight', 2, 1, '244'),
(3091, 'green_diner_exclamation', '1', '0', 'green_diner_exclamation', 2, 1, '244'),
(3092, 'green_diner_f', '1', '0', 'green_diner_f', 2, 1, '244'),
(3093, 'green_diner_five', '1', '0', 'green_diner_five', 2, 1, '244'),
(3094, 'green_diner_four', '1', '0', 'green_diner_four', 2, 1, '244'),
(3095, 'green_diner_g', '1', '0', 'green_diner_g', 2, 1, '244'),
(3096, 'green_diner_h', '1', '0', 'green_diner_h', 2, 1, '244'),
(3097, 'green_diner_i', '1', '0', 'green_diner_i', 2, 1, '244'),
(3098, 'green_diner_j', '1', '0', 'green_diner_j', 2, 1, '244'),
(3099, 'green_diner_k', '1', '0', 'green_diner_k', 2, 1, '244'),
(3100, 'green_diner_l', '1', '0', 'green_diner_l', 2, 1, '244'),
(3101, 'green_diner_m', '1', '0', 'green_diner_m', 2, 1, '244'),
(3102, 'green_diner_n', '1', '0', 'green_diner_n', 2, 1, '244'),
(3103, 'green_diner_nine', '1', '0', 'green_diner_nine', 2, 1, '244'),
(3104, 'green_diner_o', '1', '0', 'green_diner_o', 2, 1, '244'),
(3105, 'green_diner_o_accute', '1', '0', 'green_diner_o_accute', 2, 1, '244'),
(3106, 'green_diner_o_cc_grave', '1', '0', 'green_diner_o_cc_grave', 2, 1, '244'),
(3107, 'green_diner_o_umlaut', '1', '0', 'green_diner_o_umlaut', 2, 1, '244'),
(3108, 'green_diner_one', '1', '0', 'green_diner_one', 2, 1, '244'),
(3109, 'green_diner_p', '1', '0', 'green_diner_p', 2, 1, '244'),
(3110, 'green_diner_q', '1', '0', 'green_diner_q', 2, 1, '244'),
(3111, 'green_diner_question', '1', '0', 'green_diner_question', 2, 1, '244'),
(3112, 'green_diner_r', '1', '0', 'green_diner_r', 2, 1, '244'),
(3113, 'green_diner_s', '1', '0', 'green_diner_s', 2, 1, '244'),
(3114, 'green_diner_seven', '1', '0', 'green_diner_seven', 2, 1, '244'),
(3115, 'green_diner_six', '1', '0', 'green_diner_six', 2, 1, '244'),
(3116, 'green_diner_t', '1', '0', 'green_diner_t', 2, 1, '244'),
(3117, 'green_diner_three', '1', '0', 'green_diner_three', 2, 1, '244'),
(3118, 'green_diner_two', '1', '0', 'green_diner_two', 2, 1, '244'),
(3119, 'green_diner_u', '1', '0', 'green_diner_u', 2, 1, '244'),
(3120, 'green_diner_u_acc', '1', '0', 'green_diner_u_acc', 2, 1, '244'),
(3121, 'green_diner_u_acc_grave', '1', '0', 'green_diner_u_acc_grave', 2, 1, '244'),
(3122, 'green_diner_u_umlaut', '1', '0', 'green_diner_u_umlaut', 2, 1, '244'),
(3123, 'green_diner_upsidedown', '1', '0', 'green_diner_upsidedown', 2, 1, '244'),
(3124, 'green_diner_v', '1', '0', 'green_diner_v', 2, 1, '244'),
(3125, 'green_diner_w', '1', '0', 'green_diner_w', 2, 1, '244'),
(3126, 'green_diner_x', '1', '0', 'green_diner_x', 2, 1, '244'),
(3127, 'green_diner_y', '1', '0', 'green_diner_y', 2, 1, '244'),
(3128, 'green_diner_z', '1', '0', 'green_diner_z', 2, 1, '244'),
(2911, 'darkknight_batman_suit', '1', '0', 'darkknight_batman_suit', 2, 1, '245'),
(2912, 'darkknight_clownface', '1', '0', 'darkknight_clownface', 2, 1, '245'),
(2913, 'darkknight_dentbutton', '1', '0', 'darkknight_dentbutton', 2, 1, '245'),
(2914, 'darkknight_jokercard', '1', '0', 'darkknight_jokercard', 2, 1, '245'),
(2915, 'darkknight_jokerface', '1', '0', 'darkknight_jokerface', 2, 1, '245'),
(2916, 'darkknight_logo', '1', '0', 'darkknight_logo', 2, 1, '245'),
(4324, 'darkknight_wallpaper', '4', '0', 'darkknight_wallpaper', 2, 1, '248'),
(3530, 'red_diner_a', '1', '0', 'red_diner_a', 2, 1, '246'),
(3531, 'red_diner_a_umlaut', '1', '0', 'red_diner_a_umlaut', 2, 1, '246'),
(3532, 'red_diner_ae', '1', '0', 'red_diner_ae', 2, 1, '246'),
(3533, 'red_diner_b', '1', '0', 'red_diner_b', 2, 1, '246'),
(3534, 'red_diner_c', '1', '0', 'red_diner_c', 2, 1, '246'),
(3535, 'red_diner_c_cedilla', '1', '0', 'red_diner_c_cedilla', 2, 1, '246'),
(3536, 'red_diner_d', '1', '0', 'red_diner_d', 2, 1, '246'),
(3537, 'red_diner_e', '1', '0', 'red_diner_e', 2, 1, '246'),
(3538, 'red_diner_e_acc', '1', '0', 'red_diner_e_acc', 2, 1, '246'),
(3539, 'red_diner_e_cc_grave', '1', '0', 'red_diner_e_cc_grave', 2, 1, '246'),
(3540, 'red_diner_eight', '1', '0', 'red_diner_eight', 2, 1, '246'),
(3541, 'red_diner_exclamation', '1', '0', 'red_diner_exclamation', 2, 1, '246'),
(3542, 'red_diner_f', '1', '0', 'red_diner_f', 2, 1, '246'),
(3543, 'red_diner_five', '1', '0', 'red_diner_five', 2, 1, '246'),
(3544, 'red_diner_four', '1', '0', 'red_diner_four', 2, 1, '246'),
(3545, 'red_diner_g', '1', '0', 'red_diner_g', 2, 1, '246'),
(3546, 'red_diner_h', '1', '0', 'red_diner_h', 2, 1, '246'),
(3547, 'red_diner_i', '1', '0', 'red_diner_i', 2, 1, '246'),
(3548, 'red_diner_j', '1', '0', 'red_diner_j', 2, 1, '246'),
(3549, 'red_diner_k', '1', '0', 'red_diner_k', 2, 1, '246'),
(3550, 'red_diner_l', '1', '0', 'red_diner_l', 2, 1, '246'),
(3551, 'red_diner_m', '1', '0', 'red_diner_m', 2, 1, '246'),
(3552, 'red_diner_n', '1', '0', 'red_diner_n', 2, 1, '246'),
(3553, 'red_diner_nine', '1', '0', 'red_diner_nine', 2, 1, '246'),
(3554, 'red_diner_o', '1', '0', 'red_diner_o', 2, 1, '246'),
(3555, 'red_diner_o_accute', '1', '0', 'red_diner_o_accute', 2, 1, '246'),
(3556, 'red_diner_o_cc_grave', '1', '0', 'red_diner_o_cc_grave', 2, 1, '246'),
(3557, 'red_diner_o_umlaut', '1', '0', 'red_diner_o_umlaut', 2, 1, '246'),
(3558, 'red_diner_one', '1', '0', 'red_diner_one', 2, 1, '246'),
(3559, 'red_diner_p', '1', '0', 'red_diner_p', 2, 1, '246'),
(3560, 'red_diner_q', '1', '0', 'red_diner_q', 2, 1, '246'),
(3561, 'red_diner_question', '1', '0', 'red_diner_question', 2, 1, '246'),
(3562, 'red_diner_r', '1', '0', 'red_diner_r', 2, 1, '246'),
(3563, 'red_diner_s', '1', '0', 'red_diner_s', 2, 1, '246'),
(3564, 'red_diner_seven', '1', '0', 'red_diner_seven', 2, 1, '246'),
(3565, 'red_diner_six', '1', '0', 'red_diner_six', 2, 1, '246'),
(3566, 'red_diner_t', '1', '0', 'red_diner_t', 2, 1, '246'),
(3567, 'red_diner_three', '1', '0', 'red_diner_three', 2, 1, '246'),
(3568, 'red_diner_two', '1', '0', 'red_diner_two', 2, 1, '246'),
(3569, 'red_diner_u', '1', '0', 'red_diner_u', 2, 1, '246'),
(3570, 'red_diner_u_acc', '1', '0', 'red_diner_u_acc', 2, 1, '246'),
(3571, 'red_diner_u_acc_grave', '1', '0', 'red_diner_u_acc_grave', 2, 1, '246'),
(3572, 'red_diner_u_umlaut', '1', '0', 'red_diner_u_umlaut', 2, 1, '246'),
(3573, 'red_diner_upsidedown', '1', '0', 'red_diner_upsidedown', 2, 1, '246'),
(3574, 'red_diner_v', '1', '0', 'red_diner_v', 2, 1, '246'),
(3575, 'red_diner_w', '1', '0', 'red_diner_w', 2, 1, '246'),
(3576, 'red_diner_x', '1', '0', 'red_diner_x', 2, 1, '246'),
(3577, 'red_diner_y', '1', '0', 'red_diner_y', 2, 1, '246'),
(3578, 'red_diner_z', '1', '0', 'red_diner_z', 2, 1, '246'),
(3464, 'olym_carson', '1', '0', 'olym_carson', 2, 1, '247'),
(3465, 'olym_cresthawk', '1', '0', 'olym_cresthawk', 2, 1, '247'),
(3466, 'olym_inari', '1', '0', 'olym_inari', 2, 1, '247'),
(3467, 'olym_jandelee', '1', '0', 'olym_jandelee', 2, 1, '247'),
(3468, 'olym_lady', '1', '0', 'olym_lady', 2, 1, '247'),
(3469, 'olym_loderse', '1', '0', 'olym_loderse', 2, 1, '247'),
(3470, 'olym_moiraine', '1', '0', 'olym_moiraine', 2, 1, '247'),
(3471, 'olym_nme', '1', '0', 'olym_nme', 2, 1, '247'),
(3472, 'olym_smoothcriminal', '1', '0', 'olym_smoothcriminal', 2, 1, '247'),
(3473, 'olym_spartan', '1', '0', 'olym_spartan', 2, 1, '247'),
(3474, 'olym_squib', '1', '0', 'olym_squib', 2, 1, '247'),
(3475, 'olym_thegirls', '1', '0', 'olym_thegirls', 2, 1, '247'),
(2655, '25_146x146_habbo_sticker_fi', '1', '0', '25_146x146_habbo_sticker_fi', 2, 1, '214'),
(2713, 'backtoschool_badapple', '1', '0', 'backtoschool_badapple', 2, 1, '230'),
(2714, 'backtoschool_goldapple', '1', '0', 'backtoschool_goldapple', 2, 1, '1000'),
(2715, 'backtoschool_trophy', '1', '0', 'backtoschool_trophy', 2, 1, '230'),
(2740, 'bg_stickie', '4', '0', 'bg_stickie', 2, 1, '1000'),
(2868, 'cat_animated', '1', '0', 'cat_animated', 2, 1, '1000'),
(2873, 'checker_border_h', '1', '0', 'checker_border_h', 2, 1, '243'),
(2874, 'checker_border_v', '1', '0', 'checker_border_v', 2, 1, '243'),
(3148, 'habbo_x_home_sticker', '1', '0', 'habbo_x_home_sticker', 2, 1, '230'),
(3180, 'hw_bassplayer_girl2', '1', '0', 'hw_bassplayer_girl2', 2, 1, '221'),
(3210, 'hw_keyboards1', '1', '0', 'hw_keyboards1', 2, 1, '221'),
(3211, 'hw_keyboards2', '1', '0', 'hw_keyboards2', 2, 1, '221'),
(3512, 'pretzel', '1', '0', 'pretzel', 2, 1, '216'),
(3927, 'teensbear', '1', '0', 'teensbear', 2, 1, '235'),
(3945, 'tiki_volcano', '1', '0', 'tiki_volcano', 2, 1, '207'),
(4160, '10kbc_habbo_grouppage_bg_2b', '4', '0', '10kbc_habbo_grouppage_bg_2b', 2, 1, '248'),
(4161, '10kbc_habbo_grouppage_bg_3b', '4', '0', '10kbc_habbo_grouppage_bg_3b', 2, 1, '248'),
(4162, '26_habbo_background_fi', '4', '0', '26_habbo_background_fi', 2, 1, '248'),
(4182, 'au_iflyvampwasp_bg_v1', '4', '0', 'au_iflyvampwasp_bg_v1', 2, 1, '248'),
(4183, 'au_iflyvampwasp_bg_v2', '4', '0', 'au_iflyvampwasp_bg_v2', 2, 1, '248'),
(4186, 'au_spiderwick_bg', '4', '0', 'au_spiderwick_bg', 2, 1, '248'),
(4187, 'background_momie3_928x1360', '4', '0', 'background_momie3_928x1360', 2, 1, '248'),
(4189, 'backtoschool_wallpaper', '4', '0', 'backtoschool_wallpaper', 2, 1, '248'),
(4194, 'bg_alhambra', '4', '0', 'bg_alhambra', 2, 1, '248'),
(4195, 'bg_animegroup', '4', '0', 'bg_animegroup', 2, 1, '248'),
(4251, 'bg_moviesgroup', '4', '0', 'bg_moviesgroup', 2, 1, '248'),
(4252, 'bg_musicgroup', '4', '0', 'bg_musicgroup', 2, 1, '248'),
(4287, 'bg_solid_bg_white', '4', '0', 'bg_solid_bg_white', 2, 1, '248'),
(4296, 'bg_videogamesgroup', '4', '0', 'bg_videogamesgroup', 2, 1, '248'),
(4306, 'bmx_tailwhip', '4', '0', 'bmx_tailwhip', 2, 1, '248'),
(4309, 'camocheese_wallpaper', '4', '0', 'camocheese_wallpaper', 2, 1, '248'),
(4319, 'cw_group_1', '4', '0', 'cw_group_1', 2, 1, '248'),
(4321, 'cw_group_2', '4', '0', 'cw_group_2', 2, 1, '248'),
(4323, 'cw_poster', '4', '0', 'cw_poster', 2, 1, '248'),
(4328, 'diner_global', '4', '0', 'diner_global', 2, 1, '248'),
(4337, 'easter_eggs_wallpaper', '4', '0', 'easter_eggs_wallpaper', 2, 1, '248'),
(4338, 'easter_eggs_wallpaper2', '4', '0', 'easter_eggs_wallpaper2', 2, 1, '248'),
(4361, 'geeks_wallpaper', '4', '0', 'geeks_wallpaper', 2, 1, '248'),
(4366, 'greasers_wallpaper', '4', '0', 'greasers_wallpaper', 2, 1, '248'),
(4369, 'gruposedateens.jpg', '4', '0', 'gruposedateens.jpg', 2, 1, '248'),
(4371, 'guitarhero', '4', '0', 'guitarhero', 2, 1, '248'),
(4372, 'gyroscope_grouppage_bg_v1', '4', '0', 'gyroscope_grouppage_bg_v1', 2, 1, '248'),
(4374, 'habbo_bmx_foot_jam_tailwhip_bg', '4', '0', 'habbo_bmx_foot_jam_tailwhip_bg', 2, 1, '248'),
(4376, 'habbo_group_tutorial_bg', '4', '0', 'habbo_group_tutorial_bg', 2, 1, '248'),
(4385, 'habbolympics_bg_final', '4', '0', 'habbolympics_bg_final', 2, 1, '248'),
(4390, 'habboween_bg_bg', '4', '0', 'habboween_bg_bg', 2, 1, '248'),
(4392, 'hannah_montana_background', '4', '0', 'hannah_montana_background', 2, 1, '248'),
(4397, 'head_guides_germany', '4', '0', 'head_guides_germany', 2, 1, '248'),
(4398, 'head_guides_switserland', '4', '0', 'head_guides_switserland', 2, 1, '248'),
(4412, 'jocks_wallpaper', '4', '0', 'jocks_wallpaper', 2, 1, '248'),
(4419, 'kerli_wallpaper', '4', '0', 'kerli_wallpaper', 2, 1, '248'),
(4427, 'landing_page_comp', '4', '0', 'landing_page_comp', 2, 1, '248'),
(4429, 'madball_2008_bg_001', '4', '0', 'madball_2008_bg_001', 2, 1, '248'),
(4430, 'madball_wallpaper', '4', '0', 'madball_wallpaper', 2, 1, '248'),
(4438, 'myspy_group', '4', '0', 'myspy_group', 2, 1, '248'),
(4444, 'nicolajrasted_vip', '4', '0', 'nicolajrasted_vip', 2, 1, '248'),
(4453, 'poptarts_cv_002.jpg', '4', '0', 'poptarts_cv_002.jpg', 2, 1, '248'),
(4456, 'rexona_bg', '4', '0', 'rexona_bg', 2, 1, '248'),
(4471, 'silversurfer2', '4', '0', 'silversurfer2', 2, 1, '248'),
(4472, 'silversurfer3', '4', '0', 'silversurfer3', 2, 1, '248'),
(4475, 'skateollie_bg', '4', '0', 'skateollie_bg', 2, 1, '248'),
(4476, 'skateollie_bg2', '4', '0', 'skateollie_bg2', 2, 1, '248'),
(4477, 'skulls_wallpaper', '4', '0', 'skulls_wallpaper', 2, 1, '248'),
(4505, 'test', '4', '0', 'test', 2, 1, '248'),
(4512, 'toolbar_bg', '4', '0', 'toolbar_bg', 2, 1, '248'),
(4513, 'toolbar_bg2', '4', '0', 'toolbar_bg2', 2, 1, '248'),
(4514, 'top_gamers_bg', '4', '0', 'top_gamers_bg', 2, 1, '248'),
(4517, 'tutorial_bg', '4', '0', 'tutorial_bg', 2, 1, '248'),
(4519, 'val_bgpattern_love', '4', '0', 'val_bgpattern_love', 2, 1, '248'),
(4520, 'val_bgpattern_skull', '4', '0', 'val_bgpattern_skull', 2, 1, '248'),
(4526, 'vip_group.png', '4', '0', 'vip_group.png', 2, 1, '248'),
(4529, 'wallpaper_alkalinetrio', '4', '0', 'wallpaper_alkalinetrio', 2, 1, '248'),
(4532, 'wallpaper_dinerduck', '4', '0', 'wallpaper_dinerduck', 2, 1, '248'),
(4533, 'wallpaper_dinergeeks', '4', '0', 'wallpaper_dinergeeks', 2, 1, '248'),
(4534, 'wallpaper_dinergreasers', '4', '0', 'wallpaper_dinergreasers', 2, 1, '248'),
(4535, 'wallpaper_dinerjocks', '4', '0', 'wallpaper_dinerjocks', 2, 1, '248'),
(4536, 'wallpaper_dinermapusa', '4', '0', 'wallpaper_dinermapusa', 2, 1, '248'),
(4538, 'wallpaper_dinerus', '4', '0', 'wallpaper_dinerus', 2, 1, '248'),
(4539, 'wallpaper_droney', '4', '0', 'wallpaper_droney', 2, 1, '248'),
(4541, 'wallpaper_katiestill', '4', '0', 'wallpaper_katiestill', 2, 1, '248'),
(4542, 'wallpaper_lauraduncan', '4', '0', 'wallpaper_lauraduncan', 2, 1, '248'),
(4543, 'wallpaper_lenka', '4', '0', 'wallpaper_lenka', 2, 1, '248'),
(4544, 'wallpaper_monet', '4', '0', 'wallpaper_monet', 2, 1, '248'),
(4547, 'wallpaper_sprousebrothers', '4', '0', 'wallpaper_sprousebrothers', 2, 1, '248'),
(4548, 'wallpaper_submarines', '4', '0', 'wallpaper_submarines', 2, 1, '248'),
(4549, 'wallpaper_tmobile', '4', '0', 'wallpaper_tmobile', 2, 1, '248'),
(4554, 'wallpaper2_001', '4', '0', 'wallpaper2_001', 2, 1, '248'),
(4574, 'xmas_gifts_bg2', '4', '0', 'xmas_gifts_bg2', 2, 1, '248');

-- --------------------------------------------------------

--
-- Table structure for table `cms_homes_group_linker`
--

CREATE TABLE IF NOT EXISTS `cms_homes_group_linker` (
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `active` varchar(1) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_homes_group_linker`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_homes_inventory`
--

CREATE TABLE IF NOT EXISTS `cms_homes_inventory` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `subtype` varchar(1) NOT NULL,
  `data` text NOT NULL,
  `amount` varchar(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_homes_inventory`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_homes_stickers`
--

CREATE TABLE IF NOT EXISTS `cms_homes_stickers` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `x` varchar(6) NOT NULL default '1' COMMENT 'left',
  `y` varchar(6) NOT NULL default '1' COMMENT 'top',
  `z` varchar(6) NOT NULL default '1' COMMENT 'z-index',
  `data` text NOT NULL,
  `type` varchar(1) NOT NULL default '1',
  `subtype` varchar(1) NOT NULL default '0' COMMENT 'Widget Type (if widget)',
  `skin` text NOT NULL,
  `groupid` int(11) NOT NULL default '-1',
  `var` int(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_homes_stickers`
--

INSERT INTO `cms_homes_stickers` (`id`, `userid`, `x`, `y`, `z`, `data`, `type`, `subtype`, `skin`, `groupid`, `var`) VALUES
(1, 2, '25', '25', '5', '', '2', '1', 'defaultskin', -1, NULL),
(2, -1, '25', '25', '5', '', '2', '1', 'defaultskin', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_minimail`
--

CREATE TABLE IF NOT EXISTS `cms_minimail` (
  `senderid` int(11) NOT NULL,
  `to_id` int(11) default NULL,
  `subject` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `read_mail` enum('0','1') NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `deleted` int(10) default '0',
  `conversationid` int(10) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_minimail`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_news`
--

CREATE TABLE IF NOT EXISTS `cms_news` (
  `num` int(4) NOT NULL auto_increment,
  `title` text collate latin1_general_ci NOT NULL,
  `category` text collate latin1_general_ci NOT NULL,
  `topstory` varchar(100) collate latin1_general_ci NOT NULL,
  `short_story` text collate latin1_general_ci NOT NULL,
  `story` longtext collate latin1_general_ci NOT NULL,
  `date` date NOT NULL,
  `author` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='HoloCMS' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_news`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_noobgifts`
--

CREATE TABLE IF NOT EXISTS `cms_noobgifts` (
  `id` int(20) NOT NULL auto_increment,
  `userid` int(30) NOT NULL,
  `gift` int(2) NOT NULL,
  `read` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_noobgifts`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_recommended`
--

CREATE TABLE IF NOT EXISTS `cms_recommended` (
  `id` int(10) NOT NULL auto_increment,
  `rec_id` int(10) default NULL,
  `type` varchar(10) default 'group',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_recommended`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_system`
--

CREATE TABLE IF NOT EXISTS `cms_system` (
  `sitename` varchar(30) collate latin1_general_ci NOT NULL,
  `shortname` varchar(30) collate latin1_general_ci NOT NULL,
  `site_closed` enum('0','1') collate latin1_general_ci NOT NULL COMMENT 'Maintenance Mode',
  `enable_sso` enum('0','1') collate latin1_general_ci NOT NULL,
  `language` varchar(2) collate latin1_general_ci NOT NULL,
  `ip` varchar(50) collate latin1_general_ci NOT NULL,
  `port` varchar(5) collate latin1_general_ci NOT NULL,
  `texts` varchar(250) collate latin1_general_ci NOT NULL,
  `variables` varchar(250) collate latin1_general_ci NOT NULL,
  `dcr` varchar(250) collate latin1_general_ci NOT NULL,
  `reload_url` varchar(250) collate latin1_general_ci NOT NULL,
  `localhost` enum('0','1') collate latin1_general_ci NOT NULL COMMENT 'Local server?',
  `start_credits` int(11) NOT NULL default '0',
  `admin_notes` text collate latin1_general_ci NOT NULL,
  `loader` int(1) NOT NULL default '1',
  `analytics` text collate latin1_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='HoloCMS';

--
-- Dumping data for table `cms_system`
--

INSERT INTO `cms_system` (`sitename`, `shortname`, `site_closed`, `enable_sso`, `language`, `ip`, `port`, `texts`, `variables`, `dcr`, `reload_url`, `localhost`, `start_credits`, `admin_notes`, `loader`, `analytics`) VALUES
('Holo Hotel', 'Holo', '0', '1', 'en', '24.72.125.96', '21', 'http://loadermaker2.lo.funpic.de/v26/external_texts.txt', 'http://loadermaker2.lo.funpic.de/v26/external_variables.txt', 'http://loadermaker2.lo.funpic.de/v26/habbo.dcr', 'http://localhost/client.php', '1', 5000, 'You can use this to keep notes for yourself, other mods or admins, etc', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_tags`
--

CREATE TABLE IF NOT EXISTS `cms_tags` (
  `id` int(255) NOT NULL auto_increment,
  `ownerid` int(11) NOT NULL default '0',
  `tag` varchar(25) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='HoloCMS' AUTO_INCREMENT=394 ;

--
-- Dumping data for table `cms_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_transactions`
--

CREATE TABLE IF NOT EXISTS `cms_transactions` (
  `id` int(11) NOT NULL auto_increment,
  `date` varchar(20) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `descr` text NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cms_transactions`
--

INSERT INTO `cms_transactions` (`id`, `date`, `amount`, `descr`, `userid`) VALUES
(1, '12-12-2008 22:12:40', '5000', 'Welcome to Holo Hotel!', 1),
(2, '13-12-2008 17:22:44', '5000', 'Welcome to Holo Hotel!', 2),
(3, '13-12-2008 17:22:53', '-20', 'Club subscription (1 month(s))', 2),
(4, '13-12-2008 21:56:55', '-80', 'Club subscription (6 month(s))', 2),
(5, '13-12-2008 22:04:25', '-20', 'Group purchase', 2),
(6, '17-12-2008 07:51:39', '-20', 'Club subscription (1 month(s))', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_wardrobe`
--

CREATE TABLE IF NOT EXISTS `cms_wardrobe` (
  `userid` int(11) NOT NULL,
  `slotid` varchar(1) NOT NULL,
  `figure` text NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_wardrobe`
--

INSERT INTO `cms_wardrobe` (`userid`, `slotid`, `figure`, `gender`) VALUES
(2, '1', 'hr-891-32.hd-195-1.ch-210-77.lg-285-78.sh-906-63.ha-1022-77', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE IF NOT EXISTS `furniture` (
  `id` int(10) NOT NULL auto_increment COMMENT 'The ID of this item',
  `tid` int(10) NOT NULL COMMENT 'The template ID of this item',
  `ownerid` int(10) NOT NULL COMMENT 'The ID of the user that owns this item',
  `roomid` int(10) NOT NULL COMMENT 'The room ID the item is in. If it''s 0, then it''s in the hand of OWNERID, if it''s -1, then it''s in a present and not opened yet, if it''s -2, then it''s in the Recycler',
  `x` smallint(6) NOT NULL COMMENT 'The X of the item in a room',
  `y` smallint(6) NOT NULL COMMENT 'The Y of the item in a room',
  `z` smallint(6) NOT NULL COMMENT 'The Z [rotation] of the item in a room',
  `h` double(4,2) NOT NULL default '0.00' COMMENT 'The H [height, double] of the item in a room',
  `var` text collate latin1_general_ci COMMENT 'The variable of the item, specifying it''s turned on/off etc, :S',
  `wallpos` varchar(200) collate latin1_general_ci default NULL COMMENT 'Wallitems only. The location on the wall where the item is',
  `teleportid` int(10) default NULL COMMENT 'Teleporters only. The ID of the teleporter that links to this one',
  `soundmachine_soundset` int(2) default NULL,
  `soundmachine_machineid` int(10) default NULL,
  `soundmachine_slot` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=158 ;

--
-- Dumping data for table `furniture`
--

INSERT INTO `furniture` (`id`, `tid`, `ownerid`, `roomid`, `x`, `y`, `z`, `h`, `var`, `wallpos`, `teleportid`, `soundmachine_soundset`, `soundmachine_machineid`, `soundmachine_slot`) VALUES
(27, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=6,0 l=17,67 r', NULL, NULL, NULL, NULL),
(31, 1002, 2, 129, 0, 0, 0, 0.00, '2,1,2,#000000,217', ':w=0,7 l=29,48 l', NULL, NULL, NULL, NULL),
(19, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=9,0 l=14,65 r', NULL, NULL, NULL, NULL),
(20, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=10,0 l=16,65 r', NULL, NULL, NULL, NULL),
(21, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=11,0 l=16,67 r', NULL, NULL, NULL, NULL),
(22, 1171, 2, 0, 0, 0, 0, 0.00, '2', NULL, NULL, NULL, NULL, NULL),
(26, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=7,0 l=18,67 r', NULL, NULL, NULL, NULL),
(24, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=5,0 l=18,66 r', NULL, NULL, NULL, NULL),
(25, 1480, 2, 129, 0, 0, 0, 0.00, NULL, ':w=8,0 l=17,66 r', NULL, NULL, NULL, NULL),
(33, 1229, 2, 129, 8, 3, 0, 0.00, '2', NULL, NULL, NULL, NULL, NULL),
(34, 1226, 2, 129, 9, 1, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 1223, 2, 129, 4, 9, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 1223, 2, 129, 4, 10, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 1223, 2, 129, 4, 5, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 1223, 2, 129, 4, 7, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 1223, 2, 129, 4, 6, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 97, 2, 0, 0, 0, 0, 0.00, '16', NULL, NULL, NULL, NULL, NULL),
(40, 538, 2, 129, 5, 2, 2, 0.00, 'FALSE', NULL, 41, NULL, NULL, NULL),
(41, 538, 2, 129, 1, 10, 2, 0.10, 'FALSE', NULL, 40, NULL, NULL, NULL),
(43, 97, 2, 0, 0, 0, 0, 0.00, '20', NULL, NULL, NULL, NULL, NULL),
(44, 97, 2, 129, 0, 0, 0, 0.00, '9CCEFF', ':w=4,2 l=15,21 l', NULL, NULL, NULL, NULL),
(45, 97, 2, 129, 0, 0, 0, 0.00, '9CCEFF', ':w=0,10 l=19,23 l', NULL, NULL, NULL, NULL),
(46, 1223, 2, 129, 4, 8, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 1228, 2, 129, 1, 7, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 1230, 2, 129, 1, 8, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 1230, 2, 129, 1, 5, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 538, 2, 131, 5, 7, 2, 0.20, 'FALSE', NULL, 51, NULL, NULL, NULL),
(51, 538, 2, 129, 2, 5, 4, 0.00, 'FALSE', NULL, 50, NULL, NULL, NULL),
(52, 97, 2, 129, 0, 0, 0, 0.00, '9CCEFF', ':w=2,4 l=18,26 r', NULL, NULL, NULL, NULL),
(53, 134, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 134, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 134, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 134, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 131, 2, 131, 9, 5, 4, 0.00, 'OFF', NULL, NULL, NULL, NULL, NULL),
(58, 131, 2, 131, 8, 5, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 131, 2, 131, 5, 5, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 129, 2, 131, 5, 10, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 129, 2, 131, 5, 9, 2, 0.00, 'TRUE', NULL, NULL, NULL, NULL, NULL),
(62, 131, 2, 131, 10, 5, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 131, 2, 131, 7, 5, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 131, 2, 131, 6, 5, 4, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 1128, 2, 0, 0, 0, 0, 0.00, '1', NULL, NULL, NULL, NULL, NULL),
(154, 1123, 2, 132, 5, 13, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 324, 2, 0, 0, 0, 0, 0.00, 'C', NULL, NULL, NULL, NULL, NULL),
(65, 97, 2, 131, 0, 0, 0, 0.00, '9CCEFF', ':w=4,7 l=14,21 l', NULL, NULL, NULL, NULL),
(66, 96, 2, 129, 4, 7, 2, 1.00, 'ON', NULL, NULL, NULL, NULL, NULL),
(67, 1225, 2, 129, 5, 8, 6, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 1232, 2, 129, 11, 3, 0, 0.00, '1', NULL, NULL, NULL, NULL, NULL),
(69, 1233, 2, 129, 4, 5, 0, 1.00, '2', NULL, NULL, NULL, NULL, NULL),
(70, 1231, 2, 129, 10, 9, 0, 0.00, '1', NULL, NULL, NULL, NULL, NULL),
(71, 312, 2, 129, 11, 10, 0, 0.80, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 1268, 2, 129, 11, 1, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 1479, 2, 129, 4, 9, 6, 1.00, '1', NULL, NULL, NULL, NULL, NULL),
(74, 1227, 2, 129, 10, 10, 2, 0.80, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 1123, 2, 132, 5, 11, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 1123, 2, 132, 7, 13, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 1123, 2, 132, 9, 11, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 1110, 2, 132, 5, 13, 0, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 1110, 2, 132, 9, 13, 0, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 1246, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 1248, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 1248, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 1123, 2, 132, 9, 13, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 1126, 2, 132, 9, 9, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 1123, 2, 132, 7, 11, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 1126, 2, 132, 9, 7, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 1126, 2, 132, 9, 5, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 1126, 2, 132, 7, 9, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 1126, 2, 132, 7, 5, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 1126, 2, 132, 7, 7, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 1126, 2, 132, 5, 9, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 1126, 2, 132, 5, 7, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 1126, 2, 132, 5, 5, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 1126, 2, 132, 7, 3, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 1126, 2, 132, 9, 3, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 1126, 2, 132, 9, 1, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 1126, 2, 132, 7, 1, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 1126, 2, 132, 5, 1, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 1126, 2, 132, 5, 3, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,4 l=13,65 l', NULL, NULL, NULL, NULL),
(100, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,6 l=14,65 l', NULL, NULL, NULL, NULL),
(101, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,5 l=14,66 l', NULL, NULL, NULL, NULL),
(102, 1480, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,3 l=13,64 l', NULL, NULL, NULL, NULL),
(104, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,2 l=12,63 l', NULL, NULL, NULL, NULL),
(105, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=5,0 l=16,64 r', NULL, NULL, NULL, NULL),
(106, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,1 l=13,62 l', NULL, NULL, NULL, NULL),
(107, 1480, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=6,0 l=18,64 r', NULL, NULL, NULL, NULL),
(109, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=7,0 l=18,63 r', NULL, NULL, NULL, NULL),
(110, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=8,0 l=20,63 r', NULL, NULL, NULL, NULL),
(111, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,7 l=15,65 l', NULL, NULL, NULL, NULL),
(112, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=9,0 l=21,65 r', NULL, NULL, NULL, NULL),
(113, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=10,0 l=16,62 r', NULL, NULL, NULL, NULL),
(114, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,10 l=14,64 l', NULL, NULL, NULL, NULL),
(115, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,9 l=12,65 l', NULL, NULL, NULL, NULL),
(116, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,8 l=13,65 l', NULL, NULL, NULL, NULL),
(117, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,13 l=14,66 l', NULL, NULL, NULL, NULL),
(118, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,12 l=13,66 l', NULL, NULL, NULL, NULL),
(119, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,11 l=14,65 l', NULL, NULL, NULL, NULL),
(120, 1480, 2, 132, 0, 0, 0, 0.00, NULL, ':w=4,14 l=14,67 l', NULL, NULL, NULL, NULL),
(121, 1251, 2, 132, 8, 6, 4, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 1257, 2, 132, 7, 8, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 1254, 2, 132, 7, 7, 2, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 1261, 2, 132, 9, 6, 0, 0.00, '2', NULL, NULL, NULL, NULL, NULL),
(126, 365, 2, 132, 5, 10, 4, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 365, 2, 132, 9, 10, 4, 0.10, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 366, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 95, 2, 133, 9, 9, 0, 0.00, '1', NULL, NULL, NULL, NULL, NULL),
(133, 1202, 2, 133, 0, 0, 0, 0.00, NULL, ':w=8,2 l=29,75 r', NULL, NULL, NULL, NULL),
(132, 1209, 2, 133, 0, 0, 0, 0.00, NULL, ':w=3,2 l=24,76 r', NULL, NULL, NULL, NULL),
(134, 1207, 2, 133, 0, 0, 0, 0.00, NULL, ':w=1,7 l=10,75 l', NULL, NULL, NULL, NULL),
(136, 98, 2, 133, 2, 10, 0, 1.00, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 99, 2, 133, 2, 9, 0, 1.00, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 322, 2, 133, 7, 3, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 323, 2, 133, 7, 5, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 1223, 2, 133, 2, 10, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 1224, 2, 133, 2, 9, 6, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 444, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 838, 2, 133, 11, 9, 6, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 319, 2, 133, 11, 3, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 442, 2, 133, 6, 3, 4, 0.00, 'TRUE', NULL, NULL, NULL, NULL, NULL),
(146, 440, 2, 133, 2, 3, 2, 0.00, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 145, 2, 0, 0, 0, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `furniture_moodlight`
--

CREATE TABLE IF NOT EXISTS `furniture_moodlight` (
  `id` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `preset_cur` int(1) NOT NULL default '0',
  `preset_1` varchar(75) collate latin1_general_ci default NULL,
  `preset_2` varchar(75) collate latin1_general_ci default NULL,
  `preset_3` varchar(75) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id`,`roomid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `furniture_moodlight`
--

INSERT INTO `furniture_moodlight` (`id`, `roomid`, `preset_cur`, `preset_1`, `preset_2`, `preset_3`) VALUES
(14, 124, 1, '1,#74F5F5,155', '1,#000000,155', '1,#000000,155'),
(17, 124, 1, '2,#EA4532,155', '1,#000000,155', '1,#000000,155'),
(18, 124, 1, '1,#000000,155', '1,#000000,155', '1,#000000,155'),
(31, 129, 1, '2,#000000,217', '1,#000000,155', '1,#000000,155');

-- --------------------------------------------------------

--
-- Table structure for table `furniture_presents`
--

CREATE TABLE IF NOT EXISTS `furniture_presents` (
  `id` int(10) NOT NULL,
  `itemid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `furniture_presents`
--


-- --------------------------------------------------------

--
-- Table structure for table `furniture_stickies`
--

CREATE TABLE IF NOT EXISTS `furniture_stickies` (
  `id` int(10) NOT NULL,
  `text` text collate latin1_general_ci,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `furniture_stickies`
--

INSERT INTO `furniture_stickies` (`id`, `text`) VALUES
(44, ' Lobby'),
(45, ' Office'),
(52, ' Washroom'),
(65, ' Lobby');

-- --------------------------------------------------------

--
-- Table structure for table `games_lobbies`
--

CREATE TABLE IF NOT EXISTS `games_lobbies` (
  `id` int(10) NOT NULL,
  `type` enum('bb') collate latin1_general_ci NOT NULL default 'bb',
  `rank` varchar(50) collate latin1_general_ci NOT NULL,
  `bb_allowedpowerups` text collate latin1_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `games_lobbies`
--

INSERT INTO `games_lobbies` (`id`, `type`, `rank`, `bb_allowedpowerups`) VALUES
(113, 'bb', 'Noob', '1,2,3,4,5,6,7,8'),
(114, 'bb', 'Amateur', '1,2,3,4,5,6,7,8'),
(115, 'bb', 'Intermediate', '1,2,3,4,5,6,7,8'),
(116, 'bb', 'Expert', '1,2,3,4,5,6,7,8'),
(117, 'bb', 'Leet', '1,2,3,4,5,6,7,8'),
(118, '', 'noob', '1,2,3,4,5,6,7,8'),
(119, '', 'Amateur', '1,2,3,4,5,6,7,8'),
(120, '', 'Intermediate', '1,2,3,4,5,6,7,8'),
(121, '', 'Intermediate', '1,2,3,4,5,6,7,8'),
(122, '', 'Expert', '1,2,3,4,5,6,7,8');

-- --------------------------------------------------------

--
-- Table structure for table `games_maps`
--

CREATE TABLE IF NOT EXISTS `games_maps` (
  `type` enum('ss','bb') collate latin1_general_ci NOT NULL,
  `id` enum('6','5','4','3','2','1') collate latin1_general_ci NOT NULL default '1',
  `heightmap` text collate latin1_general_ci NOT NULL,
  `bb_tilemap` text collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `games_maps`
--

INSERT INTO `games_maps` (`type`, `id`, `heightmap`, `bb_tilemap`) VALUES
('bb', '5', 'xxxx000000000000000xxxx\rxxxx000000000000000xxxx\rxxxx000000000000000xxxx\rxxxx000000000000000xxxx\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\r00000000000000000000000\rxxxx000000000000000xxxx\rxxxx000000000000000xxxx\rxxxx000000000000000xxxx\rxxxx000000000000000xxxx\r', '00001111111111111110000\r00001111111111111110000\r00001111111111111110000\r00001111111111111110000\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r11111111111111111111111\r00001111111111111110000\r00001111111111111110000\r00001111111111111110000\r00001111111111111110000\r'),
('bb', '3', '0000000x000x0000xxxxxxxxxxxxxxxxx\r0xx00x0x0x0000000111000xxxxxxxxxx\r0xx00x0x0x00000001110000xxxxxxxxx\r0000xx000xxx0000xxxxxx000xxxxxxxx\r000xxxxxxxxxxxxxxxxxxxx000xxxxxxx\r0xxxxxxxxxxxxxxxxxxxxxxx000xxxxxx\r0000xxxxxxxxxxxxxxxxxxxxx000xxxxx\rxxx0xxx111111111111111xxx0x0xxxxx\r0000xxx111111111111111xxx0x0x0xxx\r0xxxxxx111111111111111xxx0x0x0xxx\r000xxxx1111111111111111000x00000x\rx00xxxx1111111111111111000x0x0xxx\r0000xxx111112222211111xxxxxxx0000\r0000xxx111112222211111xxx000xxxx0\r0000xxx111112222211111xxx000000x0\r0000xxx111112222211111xxx000xx0x0\rx00xxxx111112222211111xxxxxxx0000\rx11xxxx11111111111111110000000xxx\rx11xxxx11111111111111110000000xxx\rx11xxxx111111111111111xxx0xxxxxxx\rx00xxxx111111111111111xxx000xxxxx\rx00xxxx111111111111111xxxxxxxxxxx\rx000xxxxxx11xxxxx11xxxxxxxxxxxxxx\rxx000xxxxx00xxxxx00xxxxxxxxxxxxxx\rxxx000xxxx00xxxxx00xxxxxxxxxxxxxx\rxxxx00000000x000x0000xxxxxxxxxxxx\rxxxxx00xxxxxx000x00x0xxxxxxxxxxxx\rxxxxxx000000x000x00x0xxxxxxxxxxxx\rxxxxxxxxxx0xxx0xx00xxxxxxxxxxxxxx\rxxxxxxxx00000x0x000xxxxxxxxxxxxxx\rxxxxxxxxxx0x0x000xxxxxxxxxxxxxxxx\rxxxxxxxxxx0x0xxx0xxxxxxxxxxxxxxxx\rxxxxxxxxxxxx00000xxxxxxxxxxxxxxxx\r', '111100000000111100000000000000000\r100100000000111100000000000000000\r100100000000111100000000000000000\r111100000000111100000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000011110000000111100000000000\r111100011110000000111100000000000\r111100011110011100111100011100000\r111100000000011100000000011100000\r111100011110011100111100011100000\r000000011110000000111100000000000\r000000011110000000111100000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000011111110111111100000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000011100000000000000000\r000000000000011100000000000000000\r000000000000011100000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r000000000000000000000000000000000\r'),
('bb', '1', 'xxxxxxxxxxxxx444444xxxxxxxxx\rxxxxxxxxxxxxx444444xxxxxxxxx\rxxxxxxxxxxxxx444444xxxxxxxxx\rxxx22222222xx444444xxxxxxxxx\rxxx22222222xx444444xxxxxxxxx\rxxx22222222xx333333xxxxxxxxx\rxxx22222222xx222222xxxxxxxxx\rxxx222222222222222222xxxxxxx\rxxx222222222222222222xxxxxxx\rxxx2222222222222222222100000\rxxx2222222222222222222100000\rxxxxxxx222222222222222100000\rxxxxxxx222222222222222100000\r4444432222222222222222100000\r4444432222222222222222100000\r444443222222222222222xxxxxxx\r444443222222222222222xxxxxxx\r4444432222222222222222222xxx\r4444432222222222222222222xxx\rxxxxxxx222222222222222222xxx\rxxxxxxx222222222222222222xxx\rxxxxxxxxx222222xx22222222xxx\rxxxxxxxxx111111xx22222222xxx\rxxxxxxxxx000000xx22222222xxx\rxxxxxxxxx000000xx22222222xxx\rxxxxxxxxx000000xxxxxxxxxxxxx\rxxxxxxxxx000000xxxxxxxxxxxxx\rxxxxxxxxx000000xxxxxxxxxxxxx\r', '0000000000000111111000000000\r0000000000000111111000000000\r0000000000000111111000000000\r0001111111100111111000000000\r0001111111100000000000000000\r0001111111100000000000000000\r0001111111100000000000000000\r0001111111111111111110000000\r0001111111111111111110000000\r0001111111111111111110001111\r0001111111111111111110001111\r0000000111111111111110001111\r0000000111111111111110001111\r1111000111111111111110001111\r1111000111111111111110001111\r1111000111111111111110000000\r1111000111111111111110000000\r1111000111111111111111110000\r1111000111111111111111110000\r0000000111111111111111111000\r0000000111111111111111111000\r0000000000000000011111111000\r0000000000000000011111111000\r0000000000000000011111111000\r0000000001111110011111111000\r0000000001111110000000000000\r0000000001111110000000000000\r0000000001111110000000000000\r'),
('bb', '2', 'xxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\r2222xxx00000000xxx00000000xxx2222\r2222xxx00000000xxx00000000xxx2222\r222221000000000xxx000000000122222\r222221000000000xxx000000000122222\r2222xxx00000000xxx00000000xxx2222\r2222xxx00000000xxx00000000xxx2222\rxxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx0000000000000000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\rxxxxxxx00000000xxx00000000xxxxxxx\r', '000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r111100011111111000111111110001111\r111100011111111000111111110001111\r111100011111111000111111110001111\r111100011111111000111111110001111\r111100011111111000111111110001111\r111100011111111000111111110001111\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r000000011111111000111111110000000\r'),
('bb', '4', 'xxxxxxx222222222222222xxxxxxxx\rxxxxxxx222222222222222xxxxxxxx\rxxxxxxx222222222222222xxxxxxxx\rxxxxxxx222222222222222xxxxxxxx\rxxxxxxx222222222222222xxxxxxxx\r00012222222222222222222211111x\r00012222222222222222222211111x\r00012222222222222222222211111x\r00012222222222222222222211111x\r00xxxxx222222222222222xxx1111x\r000xxxx222222222222222xxx0000x\r0000xxx222222222222222x0000000\r0000xxx22222222222222210000000\r0000xxx22222222222222210000000\r0000xxx222222222222222x0000000\r0000xxx222222222222222xxxxxxxx\r00000xx222222222222222xxxxxxxx\r000000xxxx11xx11xx11xxxxxxxxxx\rx0000000000000000000000xxxxxxx\rxx000000000000000000000xxxxxxx\rxxx00000000000000000000xxxxxxx\rxxxx0000000000000000000xxxxxxx\r', '000000011111111111111100000000\r000000011111111111111100000000\r000000011111111111111100000000\r000000011111111111111100000000\r000000011111111111111100000000\r000000011111111111111100011110\r000000011111111111111100011110\r000000011111111111111100011110\r000000011111111111111100011110\r110000011111111111111100000000\r111000011111111111111100000000\r111100011111111111111101111111\r111100011111111111111101111111\r111100011111111111111101111111\r111100011111111111111101111111\r111100011111111111111100000000\r111110011111111111111100000000\r111111000000000000000000000000\r011111111111111111111110000000\r001111111111111111111110000000\r000111111111111111111110000000\r000011111111111111111110000000\r');

-- --------------------------------------------------------

--
-- Table structure for table `games_maps_playerspawns`
--

CREATE TABLE IF NOT EXISTS `games_maps_playerspawns` (
  `type` enum('ss','bb') collate latin1_general_ci NOT NULL default 'bb',
  `mapid` enum('6','5','4','3','2','1') collate latin1_general_ci NOT NULL,
  `teamid` enum('3','2','1','0') collate latin1_general_ci NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` enum('9','8','7','6','5','4','3','2','1','0') collate latin1_general_ci NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `games_maps_playerspawns`
--

INSERT INTO `games_maps_playerspawns` (`type`, `mapid`, `teamid`, `x`, `y`, `z`) VALUES
('bb', '5', '0', 22, 11, '6'),
('bb', '5', '1', 0, 11, '2'),
('bb', '5', '2', 11, 22, '0'),
('bb', '5', '3', 11, 0, '4'),
('bb', '1', '0', 0, 15, '2'),
('bb', '1', '1', 27, 12, '6'),
('bb', '1', '2', 12, 27, '0'),
('bb', '1', '3', 15, 0, '4'),
('bb', '2', '0', 0, 9, '2'),
('bb', '2', '1', 32, 10, '6'),
('bb', '2', '2', 14, 9, '6'),
('bb', '2', '3', 18, 9, '2'),
('bb', '4', '3', 21, 8, '6'),
('bb', '4', '2', 7, 8, '2'),
('bb', '4', '1', 14, 0, '4'),
('bb', '4', '0', 14, 16, '0'),
('bb', '3', '0', 21, 14, '6'),
('bb', '3', '1', 7, 14, '2'),
('bb', '3', '2', 14, 21, '0'),
('bb', '3', '3', 14, 7, '4');

-- --------------------------------------------------------

--
-- Table structure for table `games_ranks`
--

CREATE TABLE IF NOT EXISTS `games_ranks` (
  `id` int(5) NOT NULL auto_increment,
  `type` enum('ss','bb') collate latin1_general_ci NOT NULL default 'bb',
  `title` varchar(50) collate latin1_general_ci NOT NULL,
  `minpoints` int(10) NOT NULL,
  `maxpoints` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `games_ranks`
--

INSERT INTO `games_ranks` (`id`, `type`, `title`, `minpoints`, `maxpoints`) VALUES
(1, 'bb', 'Noob', 0, 10000),
(2, 'bb', 'Amateur', 10001, 100000),
(3, 'bb', 'Intermediate', 100001, 500000),
(4, 'bb', 'Expert', 500001, 10000000),
(5, 'bb', 'Leet', 10000001, 0),
(6, 'ss', 'Noob', 0, 10000),
(7, 'ss', 'Amateur', 10001, 100000),
(8, 'ss', 'Intermediate', 100001, 500000),
(9, 'ss', 'Expert', 500001, 10000000),
(10, 'ss', 'Leet', 10000001, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups_details`
--

CREATE TABLE IF NOT EXISTS `groups_details` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(45) collate latin1_general_ci NOT NULL,
  `description` varchar(200) collate latin1_general_ci NOT NULL,
  `ownerid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `created` varchar(50) collate latin1_general_ci NOT NULL,
  `badge` text collate latin1_general_ci NOT NULL,
  `type` int(1) NOT NULL default '0',
  `recommended` int(1) NOT NULL default '0',
  `views` int(15) NOT NULL,
  `pane` smallint(1) NOT NULL default '0',
  `topics` smallint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groups_details`
--

INSERT INTO `groups_details` (`id`, `name`, `description`, `ownerid`, `roomid`, `created`, `badge`, `type`, `recommended`, `views`, `pane`, `topics`) VALUES
(1, 'ReTarD GRoUp', 'We ARe ThE ReTArdS oF BuBbA. WE WiLL RulE It SOMeDAy!!!1!11!!1ONE!!!ELEVEN!', 2, 0, '13-12-2008 22:04:25', 'b0503Xs09114s05013s05015', 0, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `groups_memberships`
--

CREATE TABLE IF NOT EXISTS `groups_memberships` (
  `userid` int(10) NOT NULL,
  `groupid` int(10) NOT NULL,
  `member_rank` enum('3','2','1') collate latin1_general_ci NOT NULL default '3',
  `is_current` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  `is_pending` enum('0','1') collate latin1_general_ci NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `groups_memberships`
--

INSERT INTO `groups_memberships` (`userid`, `groupid`, `member_rank`, `is_current`, `is_pending`) VALUES
(2, 1, '2', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_friendrequests`
--

CREATE TABLE IF NOT EXISTS `messenger_friendrequests` (
  `userid_from` int(10) NOT NULL default '0',
  `userid_to` int(10) NOT NULL default '0',
  `requestid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`userid_from`,`userid_to`,`requestid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `messenger_friendrequests`
--


-- --------------------------------------------------------

--
-- Table structure for table `messenger_friendships`
--

CREATE TABLE IF NOT EXISTS `messenger_friendships` (
  `userid` bigint(20) NOT NULL,
  `friendid` bigint(20) NOT NULL,
  KEY `index extreme` (`userid`),
  KEY `extreme the 2nd` (`friendid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `messenger_friendships`
--


-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `userid` int(15) NOT NULL,
  `friendid` int(15) NOT NULL,
  `messageid` int(11) NOT NULL,
  `sent_on` text collate latin1_general_ci NOT NULL,
  `message` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`userid`,`messageid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `messenger_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE IF NOT EXISTS `poll` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `rid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thanks` varchar(255) NOT NULL,
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `pid` (`pid`,`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `poll`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll_answers`
--

CREATE TABLE IF NOT EXISTS `poll_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_answers`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll_questions`
--

CREATE TABLE IF NOT EXISTS `poll_questions` (
  `qid` int(10) unsigned NOT NULL auto_increment,
  `pid` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` enum('1','2','3') NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  UNIQUE KEY `qid` (`qid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `poll_questions`
--


-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE IF NOT EXISTS `poll_results` (
  `pid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `answers` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE IF NOT EXISTS `ranks` (
  `rankid` int(1) NOT NULL,
  `rankname` varchar(15) collate latin1_general_ci default NULL,
  `ignoreFilter` int(1) NOT NULL,
  `receiveCFH` int(1) NOT NULL,
  `enterAllRooms` int(1) NOT NULL,
  `seeAllOwners` int(1) NOT NULL,
  `adminCatalogue` int(1) NOT NULL,
  `staffFloor` int(1) NOT NULL,
  `rightsEverywhere` int(4) NOT NULL,
  PRIMARY KEY  (`rankid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ranks`
--


-- --------------------------------------------------------

--
-- Table structure for table `rank_fuserights`
--

CREATE TABLE IF NOT EXISTS `rank_fuserights` (
  `id` int(3) NOT NULL auto_increment,
  `minrank` int(1) NOT NULL,
  `fuseright` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`,`fuseright`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `rank_fuserights`
--

INSERT INTO `rank_fuserights` (`id`, `minrank`, `fuseright`) VALUES
(1, 1, 'default'),
(2, 1, 'fuse_login'),
(3, 1, 'fuse_buy_credits'),
(4, 1, 'fuse_trade'),
(5, 1, 'fuse_room_queue_default'),
(6, 2, 'fuse_extended_buddylist'),
(7, 2, 'fuse_habbo_chooser'),
(8, 2, 'fuse_furni_chooser'),
(9, 2, 'fuse_room_queue_club'),
(10, 2, 'fuse_priority_access'),
(11, 2, 'fuse_use_special_room_layouts'),
(12, 2, 'fuse_use_club_dance'),
(13, 3, 'fuse_enter_full_rooms'),
(14, 4, 'fuse_enter_locked_rooms'),
(16, 4, 'fuse_kick'),
(17, 4, 'fuse_mute'),
(18, 5, 'fuse_ban'),
(19, 5, 'fuse_room_mute'),
(20, 5, 'fuse_room_kick'),
(21, 5, 'fuse_receive_calls_for_help'),
(22, 5, 'fuse_remove_stickies'),
(23, 6, 'fuse_mod'),
(24, 6, 'fuse_superban'),
(25, 6, 'fuse_pick_up_any_furni'),
(26, 6, 'fuse_ignore_room_owner'),
(27, 6, 'fuse_any_room_controller'),
(28, 3, 'fuse_room_alert'),
(29, 6, 'fuse_moderator_access'),
(30, 7, 'fuse_administrator_access'),
(31, 7, 'fuse_see_flat_ids');

-- --------------------------------------------------------

--
-- Table structure for table `roombots`
--

CREATE TABLE IF NOT EXISTS `roombots` (
  `id` int(10) NOT NULL auto_increment,
  `roomid` int(10) NOT NULL,
  `name` varchar(50) collate latin1_general_ci NOT NULL,
  `mission` varchar(100) collate latin1_general_ci default NULL,
  `figure` text collate latin1_general_ci NOT NULL,
  `x` int(5) NOT NULL,
  `y` int(5) NOT NULL,
  `z` int(1) NOT NULL,
  `freeroam` enum('1','0') collate latin1_general_ci NOT NULL default '0',
  `message_noshouting` varchar(200) collate latin1_general_ci NOT NULL default 'Shouting is not neccessary.',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roombots`
--

INSERT INTO `roombots` (`id`, `roomid`, `name`, `mission`, `figure`, `x`, `y`, `z`, `freeroam`, `message_noshouting`) VALUES
(1, 102, 'Rosanne', 'Serving the pool since ''08', 'sd=001&sh=002/148,98,32&lg=200/120,66,21&ch=018/255,230,57&lh=001/215,175,125&rh=001/215,175,125&hd=001/215,175,125&ey=001&fc=001/215,175,125&hr=023/255,230,50&rs=003/255,230,57&ls=003/255,230,57&bd=001/215,175,125', 6, 30, 2, '0', 'Shouting is not neccessary, keep it quiet! :)'),
(2, 105, 'Dean', 'Luvving teh white gold', 'sd=001/0&hr=996/&hd=002/255,204,153&ey=003/0&fc=001/255,204,153&bd=001/255,204,153&lh=001/255,204,153&rh=001/255,204,153&ch=001/74,106,24&ls=002/74,106,24&rs=002/74,106,24&lg=001/51,51,51&sh=001/223,203,175', 22, 29, 2, '0', 'Shouting is not neccessary, pirates don''t shout!');

-- --------------------------------------------------------

--
-- Table structure for table `roombots_coords`
--

CREATE TABLE IF NOT EXISTS `roombots_coords` (
  `id` int(10) NOT NULL,
  `x` int(5) NOT NULL,
  `y` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roombots_coords`
--

INSERT INTO `roombots_coords` (`id`, `x`, `y`) VALUES
(1, 6, 31),
(1, 6, 29),
(1, 6, 30),
(2, 22, 28),
(2, 22, 27),
(2, 22, 26),
(2, 22, 25),
(2, 22, 24),
(2, 23, 29),
(2, 23, 28),
(2, 23, 27),
(2, 23, 26),
(2, 23, 25),
(2, 23, 24);

-- --------------------------------------------------------

--
-- Table structure for table `roombots_texts`
--

CREATE TABLE IF NOT EXISTS `roombots_texts` (
  `id` int(10) NOT NULL,
  `type` enum('shout','say') collate latin1_general_ci NOT NULL,
  `text` varchar(255) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roombots_texts`
--

INSERT INTO `roombots_texts` (`id`, `type`, `text`) VALUES
(1, 'shout', 'Pff why not go for a splash? :)'),
(1, 'say', 'It''s-hawt... :('),
(1, 'shout', 'Hey, who wants some fresh milk?'),
(1, 'say', 'Don''t worry, I won''t bite ya! Order something!'),
(1, 'say', 'The pool is looking blue right now. Meh, it always does, but it''s great!'),
(1, 'say', 'Lahlahlahlaah, dundundun, lalala...'),
(1, 'say', 'I work for free!'),
(1, 'say', 'I need to pee I guess, hmm, the pool. ^^'),
(1, 'say', 'Woop it''s always sunny here! :D'),
(1, 'say', 'Since when do they have sand here?!'),
(2, 'shout', 'Ugh, coke has become worser these days'),
(2, 'shout', 'Crap, where''s my basepipe?'),
(2, 'say', 'What kind of animal smokes crack? It''s ammoniac bitches!'),
(2, 'shout', 'FUCK, A CAT!'),
(2, 'shout', 'My dad was a communist and he has raped me 11 times, ugh'),
(2, 'say', 'Meeh'),
(2, 'shout', 'Doing tha dishes and smoking my basepipe = my life'),
(2, 'say', 'I used to be a smuggler in USA'),
(2, 'shout', 'Are you a cop yappie?'),
(2, 'shout', 'Wanna hop on my stick kid?'),
(2, 'say', 'Lalala, lalalala, lalaa'),
(2, 'shout', 'ANYONE GOT SOMETHING TO SMOKE FOR ME?'),
(2, 'shout', 'Anyone up for a fresh CokeJuice?'),
(2, 'shout', 'Someone wants a CokeJuice? Ask away!'),
(2, 'say', 'Who wants a CokeJuice? :o');

-- --------------------------------------------------------

--
-- Table structure for table `roombots_texts_triggers`
--

CREATE TABLE IF NOT EXISTS `roombots_texts_triggers` (
  `id` int(10) NOT NULL,
  `words` text collate latin1_general_ci NOT NULL,
  `replies` text collate latin1_general_ci NOT NULL,
  `serve_replies` text collate latin1_general_ci NOT NULL,
  `serve_item` varchar(20) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `roombots_texts_triggers`
--

INSERT INTO `roombots_texts_triggers` (`id`, `words`, `replies`, `serve_replies`, `serve_item`) VALUES
(1, 'milk}cow juice}sperm', 'Fresh from the cow, coming up to ya!}Hah sir wants some milk? I''ll ask the cow!}Cow #22, some milk please.}Cow? Cow? I need some milk for this thirsty user!}COW WTF IS U DOING!?!!11oneone', 'Enjoy it while it''s cold, when it''s hot it''ll make you sleepy. :)}Fresh from the cow, it''ll burp you away!}Hmm, fresh milk, should I keep it? Nah it''s yours! :)', '5'),
(2, 'coke}cocaine', 'WUT?! Cocaine?}You got cocaine for me?}I love cocaine, just like you I guess?}Ah I remember the day when I sniffed my first pile!}My dad learnt me to smoke/roll etc it!', '', ''),
(2, 'cokejuice}coke juice', 'Ah you want some CokeJuice? Coming up!}Okay, one CokeJuice for you coming up!}Okay I''ll bring it ya, keep hanging}One CokeJuice coming up there!', 'Don''t show it to the cops kid, enjoy!}You''ll be dead meat if I see you throwing it away! Enjoy!}Ah, here you are!}Here, enjoy & take care}Enjoy your CokeJuice!', 'CokeJuice (68%)'),
(2, 'beer}alcohol}drink', 'If you want something to drink, you should ask for CokeJuice!}Ask for CokeJuice!}Thirsty kid? CokeJuice is what ya want!}Hmm ask for some CokeJuice? It''s free cuz it''s Holo doh', '', ''),
(2, 'dean', 'Yeah that''s me!}Hey how do you know me?!}At your service d00d}Yeah, I''m Dean, I got a communist dad and he has raped me 11 times so far}Woot, you know my name?}Dean is your man dude', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(50) collate latin1_general_ci NOT NULL,
  `description` varchar(125) collate latin1_general_ci default NULL,
  `owner` varchar(15) collate latin1_general_ci default NULL,
  `category` int(3) NOT NULL default '0',
  `model` varchar(100) collate latin1_general_ci NOT NULL,
  `ccts` text collate latin1_general_ci,
  `floor` int(3) NOT NULL default '0',
  `wallpaper` int(3) NOT NULL default '0',
  `state` int(11) NOT NULL default '0' COMMENT '0 = open, 1 = closed, 2 = password, 3 = hc only, 4 = staff',
  `password` varchar(15) collate latin1_general_ci default NULL,
  `showname` enum('0','1') collate latin1_general_ci NOT NULL default '1',
  `superusers` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  `visitors_now` int(3) NOT NULL default '0',
  `visitors_max` int(3) NOT NULL default '25',
  `landscape` decimal(2,1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=134 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `owner`, `category`, `model`, `ccts`, `floor`, `wallpaper`, `state`, `password`, `showname`, `superusers`, `visitors_now`, `visitors_max`, `landscape`) VALUES
(101, 'Welcome Lounge', 'welcome_lounge', NULL, 3, 'newbie_lobby', 'hh_room_nlobby', 0, 0, 0, NULL, '1', '0', 0, 35, 0.0),
(103, 'Holoween theatre', 'theatredrome_halloween', NULL, 7, 'theater', 'hh_room_theater_halloween', 0, 0, 0, NULL, '1', '0', 0, 40, 0.0),
(102, 'Pool - A', 'habbo_lido', NULL, 5, 'pool_a', 'hh_room_pool,hh_people_pool', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(104, 'The Library', 'library', NULL, 7, 'library', 'hh_room_library_twr_trr', 0, 0, 0, NULL, '1', '0', 0, 20, 0.0),
(105, 'The Sunset Cafe', 'sunset_cafe', NULL, 9, 'sunset_cafe', 'hh_room_sunsetcafe', 0, 0, 0, NULL, '1', '0', 0, 20, 0.0),
(107, 'Pool - B', 'habbo_lido_ii', NULL, 5, 'pool_b', 'hh_room_pool,hh_people_pool', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(106, 'The Pub', 'the_dirty_duck_pub', NULL, 9, 'pub_a', 'hh_room_pub', 0, 0, 0, NULL, '1', '0', 0, 35, 0.0),
(108, 'Floatinggarden', 'floatinggarden', NULL, 5, 'floatinggarden', 'hh_room_floatinggarden', 0, 0, 0, NULL, '1', '0', 0, 30, 0.0),
(109, 'Rooftop Rumble', 'rooftop_rumble', NULL, 5, 'md_a', 'hh_room_terrace,hh_paalu,hh_people_pool,hh_people_paalu', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(110, 'Picnic Fields', 'picnic', NULL, 5, 'picnic', 'hh_room_picnic', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(111, 'The Park', 'park', NULL, 8, 'park_a', 'hh_room_park_general,hh_room_park', 0, 0, 0, NULL, '1', '0', 0, 30, 0.0),
(112, 'The Infobus', 'park', NULL, 8, 'park_b', 'hh_room_park_general,hh_room_park', 0, 0, 0, NULL, '1', '0', 0, 15, 0.0),
(113, 'BattleBall noobs', 'bb_lobby_beginner_0', '', 12, 'bb_lobby_1', 'hh_game_bb,hh_game_bb_room,hh_game_bb_ui,hh_gamesys', 0, 0, 0, '', '1', '0', 0, 20, 0.0),
(114, 'BattleBall amateurs', 'bb_lobby_amateur_0', '', 13, 'bb_lobby_1', 'hh_game_bb,hh_game_bb_room,hh_game_bb_ui,hh_gamesys', 0, 0, 0, '', '1', '0', 0, 20, 0.0),
(115, 'BattleBall Intermediate', 'bb_lobby_intermediate_0', NULL, 14, '', 'hh_game_bb,hh_game_bb_room,hh_game_bb_ui,hh_gamesys', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(116, 'BattleBall Expert', 'bb_lobby_expert_0', NULL, 15, 'bb_lobby_1', 'hh_game_bb,hh_game_bb_room,hh_game_bb_ui,hh_gamesys', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(117, 'BattleBall Leet', 'bb_lobby_expert_0', NULL, 16, 'bb_lobby_1', 'hh_game_bb,hh_game_bb_room,hh_game_bb_ui,hh_gamesys', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(118, 'Snowstorm noobs', 'sw_lobby_beginner_0', NULL, 17, 'snowwar_lobby_1', 'hh_gamesys,hh_game_snowwar,hh_game_snowwar_room,hh_game_snowwar_ui', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(119, 'Snowstorm amateurs', 'sw_lobby_amateur_0', NULL, 18, 'snowwar_lobby_1', 'hh_gamesys,hh_game_snowwar,hh_game_snowwar_room,hh_game_snowwar_ui', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(120, 'Snowstorm Intermediate', 'sw_lobby_intermediate_0', NULL, 19, 'snowwar_lobby_1', 'hh_gamesys,hh_game_snowwar,hh_game_snowwar_room,hh_game_snowwar_ui', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(121, 'Snowstorm Expert', 'sw_lobby_intermediate_0', NULL, 20, 'snowwar_lobby_1', 'hh_gamesys,hh_game_snowwar,hh_game_snowwar_room,hh_game_snowwar_ui', 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(122, 'Snowstorm Leet', 'sw_lobby_intermediate_0', NULL, 21, 'snowwar_lobby_1', NULL, 0, 0, 0, NULL, '1', '0', 0, 25, 0.0),
(129, 'REtArd CoRP.', 'JUsT BusINeSs', 'Waffles4Lunch', 0, 'b', NULL, 109, 215, 0, '', '1', '0', 0, 25, 6.1),
(124, 'asasas', '', 'aspeedy101', 0, 'i', NULL, 0, 0, 0, '', '1', '0', 0, 25, 1.1),
(132, 'Employee Picnic', '', 'Waffles4Lunch', 0, 'd', NULL, 0, 0, 2, 'rcorp', '1', '0', 0, 25, 1.2),
(131, 'Washroom', '', 'Waffles4Lunch', 0, 'c', NULL, 402, 1801, 0, '', '1', '0', 0, 25, 0.0),
(133, 'Home Sweet Home', '', 'Waffles4Lunch', 0, 'e', NULL, 207, 807, 1, '', '1', '0', 0, 25, 3.4);

-- --------------------------------------------------------

--
-- Table structure for table `room_ads`
--

CREATE TABLE IF NOT EXISTS `room_ads` (
  `roomid` int(10) NOT NULL,
  `img` text collate latin1_general_ci NOT NULL,
  `uri` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`roomid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_ads`
--


-- --------------------------------------------------------

--
-- Table structure for table `room_bans`
--

CREATE TABLE IF NOT EXISTS `room_bans` (
  `roomid` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `ban_expire` varchar(50) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_bans`
--


-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE IF NOT EXISTS `room_categories` (
  `id` int(3) NOT NULL default '0',
  `parent` int(3) NOT NULL default '0',
  `type` int(1) NOT NULL default '1',
  `name` varchar(100) collate latin1_general_ci NOT NULL default 'Non-named category',
  `access_rank_min` int(2) NOT NULL,
  `access_rank_hideforlower` enum('0','1') collate latin1_general_ci NOT NULL,
  `trading` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `parent`, `type`, `name`, `access_rank_min`, `access_rank_hideforlower`, `trading`) VALUES
(0, 1, 2, 'No category', 1, '0', '0'),
(3, 0, 0, 'Openbare ruimtes', 1, '0', '0'),
(4, 0, 2, 'Gastenkamers', 1, '0', '0'),
(6, 4, 2, 'Ruil kamers', 1, '0', '1'),
(5, 3, 0, 'Outside spaces', 1, '0', '0'),
(7, 3, 0, 'Entertainment', 1, '0', '0'),
(8, 5, 0, 'The Park & Infobus', 1, '0', '0'),
(9, 7, 0, 'Clubs & bars', 1, '0', '0'),
(10, 4, 2, 'Staff''s  Kamers', 7, '0', '1'),
(11, 3, 0, 'Battleball & Snowstorm', 1, '1', '0'),
(12, 22, 0, 'Battleball For noobs', 1, '1', '0'),
(13, 22, 0, 'Battleball For Amateurs', 1, '1', '0'),
(14, 22, 0, 'Battleball For Intermediate', 1, '1', '0'),
(15, 22, 0, 'Battleball For Experts', 1, '1', '0'),
(16, 22, 0, 'Battleball For Leets', 1, '1', '0'),
(17, 23, 0, 'Snowstorm For noobs', 1, '0', '0'),
(18, 23, 0, 'Snowstorm For Amateurs', 1, '0', '0'),
(19, 23, 0, 'Snowstorm For Intermediate', 1, '0', '0'),
(20, 23, 0, 'Snowstorm For Experts', 1, '0', '0'),
(21, 23, 0, 'Snowstorm For Leets', 1, '0', '0'),
(22, 11, 0, 'Battleball', 1, '0', '0'),
(23, 11, 0, 'Snowstorm', 1, '0', '0'),
(24, 4, 2, 'Moderators Kamers', 6, '0', '1'),
(25, 4, 2, 'Games', 1, '0', '1'),
(26, 4, 2, 'HelpDesk', 1, '0', '0'),
(27, 4, 2, 'Doneer', 1, '0', '1'),
(28, 4, 2, 'Chil Rooms', 1, '0', '0'),
(29, 4, 2, 'Theme Kamers', 1, '0', '0'),
(30, 4, 2, 'Hobba''s Kamers', 4, '0', '0'),
(31, 4, 2, 'Holox"s Kamers', 3, '0', '0'),
(32, 4, 2, 'Rustgevende kamers', 0, '0', '0'),
(33, 25, 2, 'spelletjes', 0, '0', '0'),
(34, 25, 2, 'Gokken', 0, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `room_modeldata`
--

CREATE TABLE IF NOT EXISTS `room_modeldata` (
  `model` varchar(100) collate latin1_general_ci NOT NULL,
  `roomomatic_subscr_only` int(1) NOT NULL default '0',
  `door_x` int(3) NOT NULL,
  `door_y` int(3) NOT NULL,
  `door_h` int(3) NOT NULL,
  `door_z` int(1) NOT NULL,
  `heightmap` text collate latin1_general_ci NOT NULL,
  `publicroom_items` text collate latin1_general_ci NOT NULL,
  `swimmingpool` enum('1','0') collate latin1_general_ci NOT NULL,
  `specialcast_emitter` varchar(15) collate latin1_general_ci default NULL,
  `specialcast_interval` int(10) default NULL,
  `specialcast_rnd_min` int(10) default NULL,
  `specialcast_rnd_max` int(10) default NULL,
  PRIMARY KEY  (`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_modeldata`
--

INSERT INTO `room_modeldata` (`model`, `roomomatic_subscr_only`, `door_x`, `door_y`, `door_h`, `door_z`, `heightmap`, `publicroom_items`, `swimmingpool`, `specialcast_emitter`, `specialcast_interval`, `specialcast_rnd_min`, `specialcast_rnd_max`) VALUES
('a', 0, 3, 5, 0, 0, 'xxxxxxxxxxxx\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxx00000000\rxxxxxxxxxxxx\rxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('b', 0, 0, 5, 0, 0, 'xxxxxxxxxxxx\rxxxxx0000000\rxxxxx0000000\rxxxxx0000000\rxxxxx0000000\rx00000000000\rx00000000000\rx00000000000\rx00000000000\rx00000000000\rx00000000000\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('c', 0, 4, 7, 0, 0, 'xxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('d', 0, 4, 7, 0, 0, 'xxxxxxxxxxxx\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxx000000x\rxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('e', 0, 1, 5, 0, 0, 'xxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxx0000000000\rxx0000000000\rxx0000000000\rxx0000000000\rxx0000000000\rxx0000000000\rxx0000000000\rxx0000000000\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('f', 0, 2, 5, 0, 0, 'xxxxxxxxxxxx\rxxxxxxx0000x\rxxxxxxx0000x\rxxx00000000x\rxxx00000000x\rxxx00000000x\rxxx00000000x\rx0000000000x\rx0000000000x\rx0000000000x\rx0000000000x\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('g', 0, 1, 7, 1, 0, 'xxxxxxxxxxxxx\rxxxxxxxxxxxxx\rxxxxxxx00000x\rxxxxxxx00000x\rxxxxxxx00000x\rxx1111000000x\rxx1111000000x\rxx1111000000x\rxx1111000000x\rxx1111000000x\rxxxxxxx00000x\rxxxxxxx00000x\rxxxxxxx00000x\rxxxxxxxxxxxxx\rxxxxxxxxxxxxx\rxxxxxxxxxxxxx\rxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('h', 0, 4, 4, 1, 0, 'xxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxx111111x\rxxxxx111111x\rxxxxx111111x\rxxxxx111111x\rxxxxx111111x\rxxxxx000000x\rxxxxx000000x\rxxx00000000x\rxxx00000000x\rxxx00000000x\rxxx00000000x\rxxxxxxxxxxxx\rxxxxxxxxxxxx\rxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('i', 0, 0, 10, 0, 0, 'xxxxxxxxxxxxxxxxx\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rx0000000000000000\rxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('j', 0, 0, 10, 0, 0, 'xxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxx0000000000\rxxxxxxxxxxx0000000000\rxxxxxxxxxxx0000000000\rxxxxxxxxxxx0000000000\rxxxxxxxxxxx0000000000\rxxxxxxxxxxx0000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx0000000000xxxxxxxxxx\rx0000000000xxxxxxxxxx\rx0000000000xxxxxxxxxx\rx0000000000xxxxxxxxxx\rx0000000000xxxxxxxxxx\rx0000000000xxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('k', 0, 0, 13, 0, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx00000000x\r\nxxxxxxxxxxxxxxxx00000000x\r\nxxxxxxxxxxxxxxxx00000000x\r\nxxxxxxxxxxxxxxxx00000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\n000000000000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxx0000000000000000x\r\nxxxxxxxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('l', 0, 0, 16, 0, 0, 'xxxxxxxxxxxxxxxxxxxxx\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rx00000000xxxx00000000\rxxxxxxxxxxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('r', 0, 10, 4, 3, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxrnxxxxxxxxxx33333333333333rnxxxxxxxxxx33333333333333rnxxxxxxxxxx33333333333333rnxxxxxxxxx333333333333333rnxxxxxxxxxx33333333333333rnxxxxxxxxxx33333333333333rnxxxxxx333333333333333333rnxxxxxx333333333333333333rnxxxxxx333333333333333333rnxxxxxx333333333333333333rnxxxxxx333333333333333333rnxxxxxx333333333333333333rn4444433333xxxxxxxxxxxxxxrn4444433333xxxxxxxxxxxxxxrn44444333333222xx000000xxrn44444333333222xx000000xxrnxxx44xxxxxxxx22x000000xxrnxxx33xxxxxxxx11x000000xxrnxxx33322222211110000000xxrnxxx33322222211110000000xxrnxxxxxxxxxxxxxxxx000000xxrnxxxxxxxxxxxxxxxx000000xxrnxxxxxxxxxxxxxxxx000000xxrnxxxxxxxxxxxxxxxx000000xxrnxxxxxxxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('n', 0, 0, 16, 0, 0, 'xxxxxxxxxxxxxxxxxxxxx\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx000000xxxxxxxx000000\rx000000x000000x000000\rx000000x000000x000000\rx000000x000000x000000\rx000000x000000x000000\rx000000x000000x000000\rx000000x000000x000000\rx000000xxxxxxxx000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rx00000000000000000000\rxxxxxxxxxxxxxxxxxxxxx\r', '', '', '0', 1, NULL, NULL),
('o', 0, 0, 18, 1, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx11111111xxxx\rxxxxxxxxxxxxx00000000xxxx\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rx111111100000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxx0000000000000000\rxxxxxxxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('p', 0, 0, 23, 2, 0, 'xxxxxxxxxxxxxxxxxxx\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx222222222222\r\nxxxxxxx22222222xxxx\r\nxxxxxxx11111111xxxx\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx222221111111111111\r\nx2222xx11111111xxxx\r\nx2222xx00000000xxxx\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nx2222xx000000000000\r\nxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('q', 0, 10, 4, 2, 0, 'xxxxxxxxxxxxxxxxxxxrnxxxxxxxxxx22222222rnxxxxxxxxxx22222222rnxxxxxxxxxx22222222rnxxxxxxxxx222222222rnxxxxxxxxxx22222222rnxxxxxxxxxx22222222rn222222222222222222rn222222222222222222rn222222222222222222rn222222222222222222rn222222222222222222rn222222222222222222rn2222xxxxxxxxxxxxxxrn2222xxxxxxxxxxxxxxrn2222211111xx000000rn222221111110000000rn222221111110000000rn2222211111xx000000rnx22xxx1111xxxxxxxxrnx11xxx1111xxxxxxxxrn1111xx1111xx000000rn1111xx111110000000rn1111xx111110000000rn1111xx1111xx000000rnxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('m', 0, 0, 15, 1, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rx0000000000000000000000000000\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxx00000000xxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '', '0', 1, NULL, NULL),
('newbie_lobby', 0, 2, 11, 0, 2, 'xxxxxxxxxxxxxxxx000000\rxxxxx0xxxxxxxxxx000000\rxxxxx00000000xxx000000\rxxxxx000000000xx000000\r0000000000000000000000\r0000000000000000000000\r0000000000000000000000\r0000000000000000000000\r0000000000000000000000\rxxxxx000000000000000xx\rxxxxx000000000000000xx\rx0000000000000000000xx\rx0000000000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxxxx0000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxxxx000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxxx00000000000xxxxx\rxxxxx000000000000xxxxx\rxxxxx000000000000xxxxx\r', 'a160 crl_lamp 16 0 0 0 1\r\ny170 crl_sofa2c 17 0 0 4 2\r\nw180 crl_sofa2b 18 0 0 4 2\r\nv190 crl_sofa2a 19 0 0 4 2\r\na200 crl_lamp 20 0 0 0 1\r\nb161 crl_chair 16 1 0 2 2\r\na72 crl_lamp 7 2 0 0 1\r\na112 crl_lamp 11 2 0 0 1\r\nb162 crl_chair 16 2 0 2 2\r\nc53 crl_pillar 5 3 0 0 1\r\nb73 crl_chair 7 3 0 2 2\r\nu93 crl_table1b 9 3 0 0 1\r\ns113 crl_sofa1c 11 3 0 6 2\r\nb163 crl_chair 16 3 0 2 2\r\nA193 crl_table2b 19 3 0 0 1\r\nz203 crl_table2a 20 3 0 0 1\r\na04 crl_lamp 0 4 0 0 1\r\ny14 crl_sofa2c 1 4 0 4 2\r\nw24 crl_sofa2b 2 4 0 4 2\r\nv34 crl_sofa2a 3 4 0 4 2\r\na44 crl_lamp 4 4 0 0 1\r\nt94 crl_table1a 9 4 0 0 1\r\nr114 crl_sofa1b 11 4 0 6 2\r\nh154 crl_wall2a 15 4 0 0 1\r\na164 crl_lamp 16 4 0 0 1\r\nb05 crl_chair 0 5 0 2 2\r\nb75 crl_chair 7 5 0 2 2\r\nq115 crl_sofa1a 11 5 0 6 2\r\nA26 crl_table2b 2 6 0 0 1\r\nz36 crl_table2a 3 6 0 0 1\r\na116 crl_lamp 11 6 0 0 1\r\nb07 crl_chair 0 7 0 2 2\r\na08 crl_lamp 0 8 0 0 1\r\nD18 crl_sofa3c 1 8 0 0 2\r\nC28 crl_sofa3b 2 8 0 0 2\r\nB38 crl_sofa3a 3 8 0 0 2\r\na48 crl_lamp 4 8 0 0 1\r\no198 crl_barchair2 19 8 0 0 2\r\np208 crl_tablebar 20 8 0 0 1\r\no218 crl_barchair2 21 8 0 0 2\r\nE59 crl_pillar2 5 9 0 0 1\r\nc99 crl_pillar 9 9 0 0 1\r\nP815 crl_desk1a 8 15 0 0 1\r\nO915 crl_deski 9 15 0 0 1\r\nN1015 crl_deskh 10 15 0 0 1\r\nM1016 crl_deskg 10 16 0 0 1\r\nL1017 crl_deskf 10 17 0 0 1\r\nK1018 crl_deske 10 18 0 0 1\r\nK1019 crl_deske 10 19 0 0 1\r\nK1020 crl_deske 10 20 0 0 1\r\nK1021 crl_deske 10 21 0 0 1\r\nK1022 crl_deske 10 22 0 0 1\r\nK1023 crl_deske 10 23 0 0 1\r\nG724 crl_wallb 7 24 0 0 1\r\nK1024 crl_deske 10 24 0 0 1\r\nF725 crl_walla 7 25 0 0 1\r\nH825 crl_desk1b 8 25 0 0 1\r\nI925 crl_desk1c 9 25 0 0 1\r\nJ1025 crl_desk1d 10 25 0 0 1\r\nd1227 crl_lamp2 12 27 0 0 1\r\nf1327 crl_cabinet2 13 27 0 0 1\r\ne1427 crl_cabinet1 14 27 0 0 1\r\nd1527 crl_lamp2 15 27 0 0 1', '', 'sf', 5000, 1, 6),
('theater', 0, 20, 27, 0, 0, 'XXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXXXXXXXXXXXXXXXXXX\rXXXXXXX111111111XXXXXXX\rXXXXXXX11111111100000XX\rXXXX00X11111111100000XX\rXXXX00x11111111100000XX\r4XXX00X11111111100000XX\r4440000XXXXXXXXX00000XX\r444000000000000000000XX\r4XX000000000000000000XX\r4XX0000000000000000000X\r44400000000000000000000\r44400000000000000000000\r44X0000000000000000O000\r44X11111111111111111000\r44X11111111111111111000\r33X11111111111111111000\r22X11111111111111111000\r22X11111111111111111000\r22X11111111111111111000\r22X11111111111111111000\r22X11111111111111111000\r22211111111111111111000\r22211111111111111111000\rXXXXXXXXXXXXXXXXXXXX00X\rXXXXXXXXXXXXXXXXXXXX00X\r', 'm1110 mic 11 10 1 0 1\r\nd211 thchair2 2 11 4 2 2\r\nd212 thchair2 2 12 4 2 2\r\nd215 thchair2 2 15 4 2 2\r\nc615 thchair1 6 15 0 0 2\r\nc715 thchair1 7 15 0 0 2\r\nc815 thchair1 8 15 0 0 2\r\nc915 thchair1 9 15 0 0 2\r\nc1015 thchair1 10 15 0 0 2\r\nc1215 thchair1 12 15 0 0 2\r\nc1315 thchair1 13 15 0 0 2\r\nc1415 thchair1 14 15 0 0 2\r\nc1515 thchair1 15 15 0 0 2\r\nc1615 thchair1 16 15 0 0 2\r\nd216 thchair2 2 16 4 2 2\r\nc620 thchair1 6 20 1 0 2\r\nc720 thchair1 7 20 1 0 2\r\nc820 thchair1 8 20 1 0 2\r\nc920 thchair1 9 20 1 0 2\r\nc1020 thchair1 10 20 1 0 2\r\nc1220 thchair1 12 20 1 0 2\r\nc1320 thchair1 13 20 1 0 2\r\nc1420 thchair1 14 20 1 0 2\r\nc1520 thchair1 15 20 1 0 2\r\nc1620 thchair1 16 20 1 0 2\r\nc623 thchair1 6 23 1 0 2\r\nc723 thchair1 7 23 1 0 2\r\nc823 thchair1 8 23 1 0 2\r\nc923 thchair1 9 23 1 0 2\r\nc1023 thchair1 10 23 1 0 2\r\nc1223 thchair1 12 23 1 0 2\r\nc1323 thchair1 13 23 1 0 2\r\nc1423 thchair1 14 23 1 0 2\r\nc1523 thchair1 15 23 1 0 2\r\nc1623 thchair1 16 23 1 0 2\r\nc626 thchair1 6 26 1 0 2\r\nc726 thchair1 7 26 1 0 2\r\nc826 thchair1 8 26 1 0 2\r\nc926 thchair1 9 26 1 0 2\r\nc1026 thchair1 10 26 1 0 2\r\nc1226 thchair1 12 26 1 0 2\r\nc1326 thchair1 13 26 1 0 2\r\nc1426 thchair1 14 26 1 0 2\r\nc1526 thchair1 15 26 1 0 2\r\nc1626 thchair1 16 26 1 0 2', '', 'sf', 5000, 1, 6),
('library', 0, 20, 3, 1, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxx11111xx1xx1x111111x\rxxxxxxxxxxxx111111xx1xx11111111x\rxx111xxxxxxx111111xx1xx11111111x\rxx111xxxxxxx1111111111111111111x\rxx111xxxxxxx1111111111111111111x\rxx111xxxxxxx1111111111111111111x\rxx111xxxxxxx1111111111111xxxxxxx\rxx111xxxxxx11111111111111111111x\rxx111xxxxxx11111111111111111111x\rxx111xxxxxx11111111111111111111x\rxx111xxxxxx11111111111111xxxxxxx\rxx111xxxxxxxx111111111111111111x\rxx111xx11111x111111111111111111x\rxx111xx11111x111111111111111111x\rxx111xxxxx11x11111111x111xxxxxxx\rxx111xxxxxxxx11111111xx11111111x\rxx111xxx1111111111111xxx1111111x\rxx111xxx1111111111111xxxx111111x\rxxx111xx1111111111x11xxxx000000x\rxxxxx1111xx1111111x11xxxx000000x\rxxxxxxxxxxxx111111x11xxxx000000x\rxxxxxxxxxxxx11xx11x11xxxx000000x\rxxxxxxxxxxxx11xx11x11xxxx000000x\rxxxxxxxxxxxx11xx11x11xxxx000000x\rxxxxxxxxxxxx11xx11x11xxxx000000x\rxxxxxxxxxxxx11xx11x11xxxx000000x\rxxxxxxxxxxxx11xx11x111xxx000000x\rxxxxxxxxxxxxxxxxxxxx11xxx000000x\rxxxxxxxxxxxxxxxxxxxx11xxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxx22222xxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r', 'a142 libchair 14 2 1 4 2\r\na162 libchair 16 2 1 4 2\r\na262 libchair 26 2 1 4 2\r\na243 libchair 24 3 1 2 2\r\na124 libchair 12 4 1 2 2\r\na126 libchair 12 6 1 2 2\r\nb1314 libstool 13 14 1 6 2\r\nb1315 libstool 13 15 1 6 2\r\nb1316 libstool 13 16 1 6 2\r\na2827 libchair 28 27 0 4 2\r\na2729 libchair 27 29 0 2 2\r\nb2433 libstool 24 33 2 6 2\r\nb2434 libstool 24 34 2 6 2\r\nb2435 libstool 24 35 2 6 2\r\nb2136 libstool 21 36 2 0 2\r\nb2236 libstool 22 36 2 0 2\r\nb2336 libstool 23 36 2 0 2', '', 'sf', 5000, 1, 6),
('floatinggarden', 0, 2, 21, 5, 0, 'xxxxxxxxxxxxxxxx333333xxxxxxxxx\rxxxxxxxxxxxxxxxx3xxxx3xxxxxxxxx\rxxxxxxxxxxxxxxxx3xxxx3xxxxxxxxx\rxxxxxxxxxxxxxxxx3xxxx3xxxxxxxxx\rxxxxxxxxxxxxxxx223xxx33xxxxxxxx\rxxxxxxxxxxxxxxx11xxx33333xxxxxx\rxxxxxxxxxxxxxxxx11xx3333333xxxx\rxxxxxxxxxxxxxxxx11xx33333333xxx\rxxxxxxxxxxxxxxxxx11xxxxxxxx3xxx\rxxxxxxxxxxxxxxxxxx11xxxx3333xxx\rxxxxxxxxxxxxxxxxxxx1xxxx33333xx\rxxxxxxxxxxxxxxxxxxx1xxx3333333x\r555xxxxxxxxxxx1111111x333333333\r555xxxxxxxxxxx21111111xxxxxx333\r555xxxxxxxxxxx22111111111xxxxxx\r555xxxxxxxxxxx222xxxxxxx111xxxx\r555xxxxxxxxxxx22xxxxxxxxxx1xxxx\r555xxxxxxxxxxx23333333333x111xx\r555xxxxxxxx33333333333333x111xx\r555xxxxxxxx333333x3333333x111xx\r555xxxxxxxx33333333333333x111xx\r555xxxxxxxx33x33333333333x111xx\r555xxxxxxxx33x33x33333333x111xx\r555xxxxxxxx33x33x33333333x111xx\r5554333333333x333x3333333x111xx\rx554333333xxxx33xxxxxxxxxx111xx\rxxxxxxxxx3xxxx333221111111111xx\rxxxxxxxxx3xxxx333221111111111xx\rxxxxxxxxx33333333xx1111x11x11xx\rxxxxxxxxx33333333111xxx11xxxxxx\rxxxxxxxxxxxxxx33311xxxx11xxxxxx\rxxxxxxxxxxxxxx33311xxxx11xxxxxx\rxxxxxxxxxxxxxx333x1xxxx11xxxxxx\rxxxxxxxxxxxxxx333x1xx111111xxxx\rxxxxxxxxxxxxxx33311xx111111xxxx\rxxxxxxxxxx333333311xx111111xxxx\rxxxxxxxxxxx33333311xx111111xxxx\rxxxxxxxxxxxxxxxx111xxxxxxxxxxxx\rxxxxxxxxxxxxxxx111xxxxxxxxxxxxx\r', 'a249 float_dummychair 24 9 3 4 2\r\na259 float_dummychair 25 9 3 4 2\r\nb2813 float_dummychair2 28 13 3 4 2\r\nb2913 float_dummychair2 29 13 3 4 2\r\ne1717 floatbench2 17 17 3 2 2\r\ne1917 floatbench2 19 17 3 6 2\r\ne2117 floatbench2 21 17 3 2 2\r\ne2317 floatbench2 23 17 3 6 2\r\ne2717 floatbench2 27 17 1 4 2\r\nd2817 floatbench1 28 17 1 4 2\r\nd1718 floatbench1 17 18 3 2 2\r\nd1918 floatbench1 19 18 3 6 2\r\nd2118 floatbench1 21 18 3 2 2\r\nd2318 floatbench1 23 18 3 6 2\r\ne2719 floatbench2 27 19 1 0 2\r\nd2819 floatbench1 28 19 1 0 2\r\ne1723 floatbench2 17 23 3 2 2\r\ne1923 floatbench2 19 23 3 6 2\r\ne2123 floatbench2 21 23 3 2 2\r\ne2323 floatbench2 23 23 3 6 2\r\ne2723 floatbench2 27 23 1 4 2\r\nd2823 floatbench1 28 23 1 4 2\r\nd1724 floatbench1 17 24 100000 2 2\r\nd1924 floatbench1 19 24 3 6 2\r\nd2124 floatbench1 21 24 3 2 2\r\nd2324 floatbench1 23 24 3 6 2\r\ne2725 floatbench2 27 25 1 0 2\r\nd2825 floatbench1 28 25 1 0 2\r\na1729 float_dummychair 17 29 1 2 2\r\na1730 float_dummychair 17 30 1 2 2\r\na1731 float_dummychair 17 31 1 2 2\r\na2133 float_dummychair 21 33 1 2 2\r\na2633 float_dummychair 26 33 1 6 2\r\na2134 float_dummychair 21 34 1 2 2\r\na2634 float_dummychair 26 34 1 6 2\r\na1735 float_dummychair 17 35 1 2 2\r\na2135 float_dummychair 21 35 1 2 2\r\na2635 float_dummychair 26 35 1 6 2\r\na1736 float_dummychair 17 36 1 2 2\r\na2136 float_dummychair 21 36 1 2 2\r\na2636 float_dummychair 26 36 1 6 2\r\na1537 float_dummychair 15 37 100000 4 2\r\na1637 float_dummychair 16 37 1 4 2', '', 'sf', 5000, 1, 6),
('sunset_cafe', 0, 34, 40, 0, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000000xxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxx00000xx00000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxx0000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxxx000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx0000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n', 'd3221 chairup4 32 21 0 3 2\r\nf3321 chairup6 33 21 0 4 2\r\nf3421 chairup6 34 21 0 4 2\r\nf3521 chairup6 35 21 0 4 2\r\nf3621 chairup6 36 21 0 4 2\r\ng3721 chairup7 37 21 0 4 2\r\nb3222 chairup2 32 22 0 2 2\r\ne2523 chairup5 25 23 0 4 2\r\nf2623 chairup6 26 23 0 4 2\r\nf2723 chairup6 27 23 0 4 2\r\nf2823 chairup6 28 23 0 4 2\r\ng2923 chairup7 29 23 0 4 2\r\na3223 chairup1 32 23 0 2 2\r\nA2424 counter5 24 24 0 7 1\r\nr2524 table2 25 24 0 7 1\r\nq2624 table1 26 24 0 7 1\r\np2425 counter3 24 25 0 7 1\r\nz2426 counter4 24 26 0 7 1\r\np2427 counter3 24 27 0 7 1\r\np2428 counter3 24 28 0 7 1\r\ny2928 palms4 29 28 0 7 1\r\np2429 counter3 24 29 0 7 1\r\nx2929 palms3 29 29 0 7 1\r\np2430 counter3 24 30 0 7 1\r\nw2930 palms2 29 30 0 7 1\r\nn2231 counter1 22 31 0 7 1\r\nn2331 counter1 23 31 0 7 1\r\no2431 counter2 24 31 0 7 1\r\nv2931 palms1 29 31 0 7 1\r\ne3031 chairup5 30 31 0 4 2\r\nf3131 chairup6 31 31 0 4 2\r\nf3231 chairup6 32 31 0 4 2\r\nf3331 chairup6 33 31 0 4 2\r\nf3431 chairup6 34 31 0 4 2\r\nf3531 chairup6 35 31 0 4 2\r\nf3631 chairup6 36 31 0 4 2\r\nj3731 chairright3 37 31 0 5 2\r\nc2132 chairup3 21 32 0 2 2\r\nt2232 table4 22 32 0 7 1\r\nr3032 table2 30 32 0 7 1\r\nq3132 table1 31 32 0 7 1\r\nr3332 table2 33 32 0 7 1\r\nq3432 table1 34 32 0 7 1\r\ni3732 chairright2 37 32 0 6 2\r\nb2133 chairup2 21 33 0 2 2\r\ns2233 table3 22 33 0 7 1\r\ni3733 chairright2 37 33 0 6 2\r\nb2134 chairup2 21 34 0 2 2\r\nt3634 table4 36 34 0 7 1\r\ni3734 chairright2 37 34 0 6 2\r\nb2135 chairup2 21 35 0 2 2\r\nr2435 table2 24 35 0 7 1\r\nq2535 table1 25 35 0 7 1\r\nr2735 table2 27 35 0 7 1\r\nq2835 table1 28 35 0 7 1\r\nu3335 palm 33 35 0 7 1\r\ns3635 table3 36 35 0 7 1\r\ni3735 chairright2 37 35 0 6 2\r\nm2136 chairleft3 21 36 0 1 2\r\nl2236 chairleft2 22 36 0 0 2\r\nl2336 chairleft2 23 36 0 0 2\r\nl2436 chairleft2 24 36 0 0 2\r\nl2536 chairleft2 25 36 0 0 2\r\nl2636 chairleft2 26 36 0 0 2\r\nl2736 chairleft2 27 36 0 0 2\r\nk2836 chairleft1 28 36 0 0 2\r\ni3736 chairright2 37 36 0 6 2\r\nt3637 table4 36 37 0 7 1\r\ni3737 chairright2 37 37 0 6 2\r\ns3638 table3 36 38 0 7 1\r\nh3738 chairright1 37 38 0 6 2', '', 'sf', 5000, 1, 6),
('pool_a', 0, 2, 25, 7, 2, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx7xxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx777xxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxx7777777xxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxx77777777xxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx77777777xxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx777777777xxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx7xxx777777xxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx7x777777777xxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx7xxx77777777xxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx7x777777777x7xxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx7xxx7777777777xxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx777777777777xxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx77777777777x2111xxxxxxxxxxxx\rxxxxxxxxxxxxxxx7777777777x221111xxxxxxxxxxx\rxxxxxxxxx7777777777777777x2211111xxxxxxxxxx\rxxxxxxxxx7777777777777777x22211111xxxxxxxxx\rxxxxxxxxx7777777777777777x222211111xxxxxxxx\rxxxxxx77777777777777777777x222211111xxxxxxx\rxxxxxx7777777xx777777777777x222211111xxxxxx\rxxxxxx7777777xx77777777777772222111111xxxxx\rxxxxxx777777777777777777777x22221111111xxxx\rxx7777777777777777777777x322222211111111xxx\r77777777777777777777777x33222222111111111xx\r7777777777777777777777x333222222211111111xx\rxx7777777777777777777x333322222222111111xxx\rxx7777777777777777777333332222222221111xxxx\rxx777xxx777777777777733333222222222211xxxxx\rxx777x7x77777777777773333322222222222xxxxxx\rxx777x7x7777777777777x33332222222222xxxxxxx\rxxx77x7x7777777777777xx333222222222xxxxxxxx\rxxxx77777777777777777xxx3222222222xxxxxxxxx\rxxxxx777777777777777777xx22222222xxxxxxxxxx\rxxxxxx777777777777777777x2222222xxxxxxxxxxx\rxxxxxxx777777777777777777222222xxxxxxxxxxxx\rxxxxxxxx7777777777777777722222xxxxxxxxxxxxx\rxxxxxxxxx77777777777777772222xxxxxxxxxxxxxx\rxxxxxxxxxx777777777777777222xxxxxxxxxxxxxxx\rxxxxxxxxxxx77777777777777x2xxxxxxxxxxxxxxxx\rxxxxxxxxxxxx77777777777777xxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxx777777777777xxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxx7777777777xxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx77777777xxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxx777777xxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx7777xxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxx77xxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r', 'u184 umbrella2 18 4 7 0 1\r\nb185 pool_2sofa2 18 5 7 2 2\r\nB186 pool_2sofa1 18 6 7 2 2\r\nu720 umbrella2 7 20 7 0 1\r\nc820 pool_chair2 8 20 7 4 2\r\nu2420 umbrella2 24 20 7 0 1\r\nc2520 pool_chair2 25 20 7 4 2\r\nc721 pool_chair2 7 21 7 2 2\r\nt821 pool_table2 8 21 7 0 2\r\nc921 pool_chair2 9 21 7 6 2\r\nc2421 pool_chair2 24 21 7 2 2\r\nt2521 pool_table2 25 21 7 0 1\r\nc822 pool_chair2 8 22 7 0 2\r\nR228 flower2b 2 28 7 0 1\r\nr229 flower2a 2 29 7 0 1\r\nL632 box 6 32 7 0 1\r\nf1333 flower1 13 33 7 0 1\r\ny1034 pool_chairy 10 34 7 4 2\r\n8835 umbrellay 8 35 7 0 1\r\ny935 pool_chairy 9 35 7 2 2 2\r\nQ1035 pool_tabley 10 35 7 0 1\r\ny1135 pool_chairy 11 35 7 6 2\r\n91535 umbrellap 15 35 7 0 1\r\n72135 umbrellao 21 35 7 0 1\r\ny1036 pool_chairy 10 36 7 0 2\r\nP1536 pool_chairp 15 36 7 4 2\r\no2136 pool_chairo 21 36 7 4 2\r\no2236 pool_chairo 22 36 7 4 2\r\nP1437 pool_chairp 14 37 7 2 2\r\nZ1537 pool_tablep 15 37 7 0 1\r\nP1637 pool_chairp 16 37 7 6 2\r\nK2137 pool_tabo 21 37 7 6 1\r\nk2237 pool_tabo2 22 37 7 6 1\r\nP1438 pool_chairp 14 38 7 2 2\r\nz1538 pool_tablep2 15 38 7 0 1\r\nP1638 pool_chairp 16 38 7 6 2\r\no2138 pool_chairo 21 38 7 0 2\r\no2238 pool_chairo 22 38 7 0 2\r\nP1539 pool_chairp 15 39 7 0 2\r\ng2041 pool_chairg 20 41 7 4 2\r\ng2141 pool_chairg 21 41 7 4 2\r\nW2042 pool_tablg 20 42 7 6 1\r\nw2142 pool_tablg2 21 42 7 6 1\r\nG1943 umbrellag 19 43 7 0 1\r\ng2043 pool_chairg 20 43 7 0 2\r\ng2143 pool_chairg 21 43 7 0 2', '1', 'sf', 5000, 1, 6),
('pub_a', 0, 15, 25, 0, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxx2222222211111xxx\rxxxxxxxxx2222222211111xxx\rxxxxxxxxx2222222211111xxx\rxxxxxxxxx2222222211111xxx\rxxxxxxxxx2222222222111xxx\rxxxxxxxxx2222222222111xxx\rxxxxxxxxx2222222222000xxx\rxxxxxxxxx2222222222000xxx\rxxxxxxxxx2222222222000xxx\rxxxxxxxxx2222222222000xxx\rx333333332222222222000xxx\rx333333332222222222000xxx\rx333333332222222222000xxx\rx333333332222222222000xxx\rx333333332222222222000xxx\rx333332222222222222000xxx\rx333332222222222222000xxx\rx333332222222222222000xxx\rx333332222222222222000xxx\rx333333332222222222000xxx\rxxxxx31111112222222000xxx\rxxxxx31111111000000000xxx\rxxxxx31111111000000000xxx\rxxxxx31111111000000000xxx\rxxxxx31111111000000000xxx\rxxxxxxxxxxxxxxx00xxxxxxxx\rxxxxxxxxxxxxxxx00xxxxxxxx\rxxxxxxxxxxxxxxx00xxxxxxxx\rxxxxxxxxxxxxxxx00xxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxx\r', 'S191 pub_sofa2 19 1 1 4 1\r\ns201 pub_sofa 20 1 1 4 2\r\ns211 pub_sofa 21 1 1 4 2\r\nq112 bardesk1 11 2 2 0 1\r\nc122 pub_chair 12 2 2 6 2\r\nQ113 bardesk2 11 3 2 0 1\r\nq114 bardesk1 11 4 2 0 1\r\nc124 pub_chair 12 4 2 6 2\r\nQ115 bardesk2 11 5 2 0 1\r\nf185 pub_fence 18 5 2 1 1\r\nq116 bardesk1 11 6 2 0 1\r\nc126 pub_chair 12 6 2 6 2\r\nf186 pub_fence 18 6 2 0 1\r\nQ117 bardesk2 11 7 2 0 1\r\nf187 pub_fence 18 7 2 0 1\r\nq118 bardesk1 11 8 2 0 1\r\nc128 pub_chair 12 8 2 6 2\r\nf188 pub_fence 18 8 2 0 1\r\nw109 bardesk4 10 9 2 0 1\r\nW119 bardesk3 11 9 2 0 1\r\nf189 pub_fence 18 9 2 0 1\r\nf1810 pub_fence 18 10 2 0 1\r\nC211 pub_chair2 2 11 3 4 2\r\nC311 pub_chair2 3 11 3 4 2\r\nC511 pub_chair2 5 11 3 4 2\r\nC611 pub_chair2 6 11 3 4 2\r\nf811 pub_fence 8 11 3 1 1\r\nf1811 pub_fence 18 11 2 0 1\r\nf812 pub_fence 8 12 3 0 1\r\nf1812 pub_fence 18 12 2 0 1\r\nf813 pub_fence 8 13 3 0 1\r\nC913 pub_chair2 9 13 2 2 2\r\nk1413 pub_chair3 14 13 2 2 2\r\nT1513 pub_table2 15 13 2 1 1\r\nk1613 pub_chair3 16 13 2 6 2\r\nf1813 pub_fence 18 13 2 0 1\r\nf814 pub_fence 8 14 3 2 1\r\nC914 pub_chair2 9 14 2 2 2\r\nk1414 pub_chair3 14 14 2 2 2\r\nT1514 pub_table2 15 14 2 2 1\r\nk1614 pub_chair3 16 14 2 6 2\r\nf1814 pub_fence 18 14 2 0 1\r\nt115 pub_table 1 15 3 0 1\r\nf515 pub_fence 5 15 3 1 1\r\nf1815 pub_fence 18 15 2 0 1\r\nS116 pub_sofa2 1 16 3 2 2\r\nf516 pub_fence 5 16 3 0 1\r\nf1816 pub_fence 18 16 2 0 1\r\ns117 pub_sofa 1 17 3 2 2\r\nf517 pub_fence 5 17 3 0 1\r\nk1317 pub_chair3 13 17 2 4 2\r\nk1417 pub_chair3 14 17 2 4 2\r\nk1517 pub_chair3 15 17 2 4 2\r\nk1617 pub_chair3 16 17 2 4 2\r\nf1817 pub_fence 18 17 2 0 1\r\ns118 pub_sofa 1 18 3 2 2\r\nf518 pub_fence 5 18 3 0 1\r\nT1318 pub_table2 13 18 2 5 1\r\nT1418 pub_table2 14 18 2 6 1\r\nT1518 pub_table2 15 18 2 6 1\r\nT1618 pub_table2 16 18 2 4 1\r\nf1818 pub_fence 18 18 2 0 1\r\ns219 pub_sofa 2 19 3 0 2\r\nS319 pub_sofa2 3 19 3 0 2\r\nf519 pub_fence 5 19 3 0 1\r\nk1319 pub_chair3 13 19 2 0 2\r\nk1419 pub_chair3 14 19 2 0 2\r\nk1519 pub_chair3 15 19 2 0 2\r\nk1619 pub_chair3 16 19 2 0 2\r\nf1819 pub_fence 18 19 2 0 1\r\nf120 pub_fence 1 20 3 5 1\r\nf220 pub_fence 2 20 3 6 1\r\nf320 pub_fence 3 20 3 6 1\r\nf420 pub_fence 4 20 3 6 1\r\nf520 pub_fence 5 20 3 3 1\r\nf1820 pub_fence 18 20 2 0 1\r\nS721 pub_sofa2 7 21 1 4 2\r\ns821 pub_sofa 8 21 1 4 2\r\nf1221 pub_fence 12 21 2 5 1\r\nf1321 pub_fence 13 21 2 6 1\r\nf1421 pub_fence 14 21 2 6 1\r\nf1521 pub_fence 15 21 2 6 1\r\nf1621 pub_fence 16 21 2 6 1\r\nf1721 pub_fence 17 21 2 6 1\r\nf1821 pub_fence 18 21 2 3 1\r\nS622 pub_sofa2 6 22 1 2 2\r\nt1522 pub_table 15 22 0 0 1\r\nC1622 pub_chair2 16 22 0 4 2\r\nC1722 pub_chair2 17 22 0 4 2\r\ns623 pub_sofa 6 23 1 2 2\r\nT823 pub_table2 8 23 1 1 1\r\ns624 pub_sofa 6 24 1 2 2\r\nT824 pub_table2 8 24 1 0 1\r\ns625 pub_sofa 6 25 1 2 2\r\nT825 pub_table2 8 25 1 2 1', '', 'sf', 5000, 1, 6),
('md_a', 0, 1, 5, 7, 2, 'xxxxxxxx77xxxxxxxxxxxxxxxx\rxxxxxxxx77xxxxxxxxxxxxxxxx\rxxxxxx77777x77xxxxxxxxxxxx\rxxx77777777777xxx44xxxxxxx\r77777777777777xx444444444x\r777777777777777xx44444444x\rxxx777777777777xx44444444x\rxxxx7777777777xxx44444444x\r7777777777777777744448444x\r7777777777777x4x744448444x\r777777777777x444444448444x\r7777777777774444444448444x\r7777777777774444444448444x\r777777777777x444444448444x\r7777777777777x44444448444x\rxxx777777777777x444448444x\rxxx7777777777777444448444x\rxxx7777777777777444448444x\rxxx777777777777x444448444x\rxxx77777777777x4444444444x\rxxxx777777777444444444444x\rxxxxxxxxxxxxxxxxxxxxxxxxxx\r', 'A43 mntdwchair 4 3 7 4 2\r\nA53 mntdwchair 5 3 7 4 2\r\nM28 barmask 2 8 7 0 1\r\ns78 mntdwsofa2 7 8 7 2 2\r\nt88 mntdwtable2 8 8 7 0 2\r\ns98 mntdwsofa2 9 8 7 6 2\r\ny218 paalu5 21 8 8 0 1\r\nM29 barmask 2 9 7 0 1\r\nS79 mntdwsofa1 7 9 7 2 2\r\nT89 mntdwtable1 8 9 7 0 2\r\nS99 mntdwsofa1 9 9 7 6 2\r\ny219 paalu5 21 9 8 0 1\r\nM210 barmask 2 10 7 0 1\r\ny2110 paalu5 21 10 8 0 1\r\nM211 barmask 2 11 7 0 1\r\ny2111 paalu5 21 11 8 0 1\r\nM212 barmask 2 12 7 0 1\r\ns712 mntdwsofa2 7 12 7 4 2\r\nS812 mntdwsofa1 8 12 7 4 2\r\ne2112 paalu3 21 12 8 0 1\r\nM213 barmask 2 13 7 0 1\r\nt713 mntdwtable2 7 13 7 2 1\r\nT813 mntdwtable1 8 13 7 2 1\r\ne2113 paalu3 21 13 8 0 1\r\nM214 barmask 2 14 7 0 1\r\ns714 mntdwsofa2 7 14 7 0 2\r\nS814 mntdwsofa1 8 14 7 0 2\r\ne2114 paalu3 21 14 8 0 1\r\nM215 barmask 2 15 100000 0 1\r\nq2115 paalu1 21 15 8 0 1\r\nM216 barmask 2 16 100000 0 1\r\ns1216 mntdwsofa2 12 16 7 4 2\r\nS1316 mntdwsofa1 13 16 7 4 2\r\nq2116 paalu1 21 16 8 0 1\r\nA317 mntdwchair 3 17 7 2 2\r\ns617 mntdwsofa2 6 17 7 2 2\r\nt717 mntdwtable2 7 17 7 0 1\r\ns817 mntdwsofa2 8 17 7 6 2\r\nt1217 mntdwtable2 12 17 7 2 1\r\nT1317 mntdwtable1 13 17 7 2 1\r\nq2117 paalu1 21 17 8 0 1\r\nA318 mntdwchair 3 18 7 2 2\r\nS618 mntdwsofa1 6 18 7 2 2\r\nT718 mntdwtable1 7 18 7 0 1\r\nS818 mntdwsofa1 8 18 7 6 2\r\ns1218 mntdwsofa2 12 18 7 0 2\r\nS1318 mntdwsofa1 13 18 7 0 2\r\nq2118 paalu1 21 18 8 0 1', '1', 'cam1', 4500, 1, 4),
('picnic', 0, 16, 5, 2, 4, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxx22222xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r22xxxxxxxxxxxxx22xxxxxxxxxxxxxxxxxxxxx\r2222222222222222222x222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222xxx222222222222222222222222\r2222222222xx33x22222222222222222222222\r222222222xx3333x2222222222222222222222\r222222222x333333x222222222222222222222\r222222222x333333x222222222222222222222\r2222222222x3332x2222222222222222222222\r22222222222x33x22222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222x22222xxxx22222222222222222222\r22222222222222xxxx22222222222222222222\r22222222222222xxx222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r22222222222222222222222222222222222222\r', 'h107 hedge7 10 7 2 4 1\r\nh117 hedge7 11 7 2 4 1\r\nh127 hedge7 12 7 2 4 1\r\nh137 hedge7 13 7 2 4 1\r\ny147 hedge8 14 7 2 4 1\r\ns187 hedge2 18 7 2 4 1\r\nh197 hedge7 19 7 2 4 1\r\nh207 hedge7 20 7 2 4 1\r\nh217 hedge7 21 7 2 4 1\r\nz148 hedge9 14 8 2 4 1\r\nz188 hedge9 18 8 2 4 1\r\nv39 hedge5 3 9 2 4 1\r\nz310 hedge9 3 10 2 4 1\r\nc1211 picnic_dummychair1 12 11 3 4 2\r\nc1311 picnic_dummychair1 13 11 3 4 2\r\nc1411 picnic_dummychair1 14 11 100000 4 2\r\nc1013 picnic_dummychair1 10 13 3 2 2\r\nc1513 picnic_dummychair1 15 13 3 6 2\r\nb2113 picnic_ground 21 13 2 4 2\r\nb714 picnic_ground 7 14 2 4 2\r\nc1014 picnic_dummychair1 10 14 3 2 2\r\nc1514 picnic_dummychair1 15 14 3 6 2\r\nb1915 picnic_ground 19 15 2 2 2\r\nb2315 picnic_ground 23 15 2 6 2\r\nb516 picnic_ground 5 16 2 2 2\r\nb916 picnic_ground 9 16 2 6 2\r\nL2016 picnic_cloth1 20 16 2 2 1\r\nL617 picnic_cloth1 6 17 2 2 1\r\nb2117 picnic_ground 21 17 2 0 2\r\nb718 picnic_ground 7 18 2 0 2\r\na019 picnic_redbench2 0 19 2 2 2\r\nA020 picnic_redbench1 0 20 2 2 2\r\nw1120 hedge6 11 20 2 4 1\r\nh1220 hedge7 12 20 2 4 1\r\nh1320 hedge7 13 20 2 4 1\r\nt1420 hedge3 14 20 2 4 1\r\nu1720 hedge4 17 20 2 4 1\r\nh1820 hedge7 18 20 2 4 1\r\nh1920 hedge7 19 20 2 4 1\r\ny2020 hedge8 20 20 2 4 1\r\nv1121 hedge5 11 21 2 4 1\r\nM1221 picnic_bench1 12 21 2 4 2\r\nN1321 picnic_bench2 13 21 2 4 2\r\nO1421 picnic_bench3 14 21 2 4 2\r\nM1721 picnic_bench1 17 21 2 4 2\r\nN1821 picnic_bench2 18 21 2 4 2\r\nO1921 picnic_bench3 19 21 2 4 2\r\nv2021 hedge5 20 21 2 4 1\r\na022 picnic_redbench2 0 22 2 2 2\r\nv1122 hedge5 11 22 2 4 1\r\nv2022 hedge5 20 22 2 4 1\r\nb2522 picnic_ground 25 22 2 4 1\r\nA023 picnic_redbench1 0 23 2 2 2\r\nv1123 hedge5 11 23 2 4 1\r\nM1223 picnic_bench1 12 23 2 2 2\r\nM1923 picnic_bench1 19 23 2 6 2\r\nv2023 hedge5 20 23 2 4 1\r\nc624 picnic_dummychair1 6 24 2 4 2\r\nd724 picnic_dummychair4 7 24 2 4 2\r\ne824 picnic_dummychair6 8 24 2 4 2\r\nv1124 hedge5 11 24 2 4 1\r\nN1224 picnic_bench2 12 24 2 2 2\r\nN1924 picnic_bench2 19 24 2 6 2\r\nv2024 hedge5 20 24 2 4 1\r\nb2324 picnic_ground 23 24 2 2 2\r\nb2724 picnic_ground 27 24 2 6 2\r\nK525 picnic_stump 5 25 2 2 2\r\nv1125 hedge5 11 25 2 4 1\r\nN1225 picnic_bench2 12 25 2 2 2\r\nN1925 picnic_bench2 19 25 2 6 2\r\nv2025 hedge5 20 25 2 4 1\r\nG2425 picnic_cloth2 24 25 2 2 1\r\nK726 picnic_stump 7 26 2 0 2\r\nv1126 hedge5 11 26 2 4 1\r\nO1226 picnic_bench3 12 26 2 2 2\r\nH1426 picnic_fireplace1 14 26 2 0 1\r\nI1626 picnic_fireplace2 16 26 2 2 1\r\nO1926 picnic_bench3 19 26 2 6 2\r\nv2026 hedge5 20 26 2 4 1\r\nb2526 picnic_ground 25 26 2 0 1\r\nz1127 hedge9 11 27 2 4 1\r\nQ1227 picnic_lemonade 12 27 2 4 1\r\nz2027 hedge9 20 27 2 4 1\r\nE829 picnic_firewood2 8 29 2 0 1\r\na030 picnic_redbench2 0 30 2 2 2\r\nD830 picnic_firewood1 8 30 2 0 1\r\nA031 picnic_redbench1 0 31 2 2 2\r\nD831 picnic_firewood1 8 31 2 0 1\r\nM1231 picnic_bench1 12 31 2 4 2\r\nN1331 picnic_bench2 13 31 2 4 2\r\nO1431 picnic_bench3 14 31 2 4 2\r\nM1831 picnic_bench1 18 31 2 4 2\r\nN1931 picnic_bench2 19 31 2 4 2\r\nO2031 picnic_bench3 20 31 2 4 2\r\nf2731 picnic_carrot 27 31 2 0 1\r\nf2831 picnic_carrot 28 31 2 0 1\r\nf2931 picnic_carrot 29 31 2 0 1\r\nf3031 picnic_carrot 30 31 2 0 1\r\nf3131 picnic_carrot 31 31 2 0 1\r\nD832 picnic_firewood1 8 32 2 0 1\r\nF1232 picnic_table2 12 32 2 2 1\r\nP1432 picnic_table 14 32 2 2 1\r\nF1832 picnic_table2 18 32 2 2 1\r\nP2032 picnic_table 20 32 2 2 1\r\nr333 hedge1 3 33 2 4 1\r\nD833 picnic_firewood1 8 33 2 0 1\r\nM1233 picnic_bench1 12 33 2 0 2\r\nN1333 picnic_bench2 13 33 2 0 2\r\nO1433 picnic_bench3 14 33 2 0 2\r\nM1833 picnic_bench1 18 33 2 0 2\r\nN1933 picnic_bench2 19 33 2 0 2\r\nO2033 picnic_bench3 20 33 2 0 2\r\ng2733 picnic_cabbage 27 33 2 0 1\r\ng2833 picnic_cabbage 28 33 2 0 1\r\ng2933 picnic_cabbage 29 33 2 0 1\r\nv334 hedge5 3 34 2 4 1\r\nD834 picnic_firewood1 8 34 2 0 1\r\nv335 hedge5 3 35 2 4 1\r\nD835 picnic_firewood1 8 35 2 0 1\r\nv336 hedge5 3 36 2 4 1\r\nD836 picnic_firewood1 8 36 2 0 1\r\nD837 picnic_firewood1 8 37 2 0 1\r\nM1237 picnic_bench1 12 37 2 4 2\r\nN1337 picnic_bench2 13 37 2 4 2\r\nO1437 picnic_bench3 14 37 2 4 2\r\nM1837 picnic_bench1 18 37 2 4 2\r\nN1937 picnic_bench2 19 37 2 4 2\r\nO2037 picnic_bench3 20 37 2 4 2\r\nD838 picnic_firewood1 8 38 2 0 1\r\nF1238 picnic_table2 12 38 2 2 1\r\nP1438 picnic_table 14 38 2 2 1\r\nF1838 picnic_table2 18 38 2 2 1\r\nP2038 picnic_table 20 38 2 2 1\r\nJ839 picnic_firewood3 8 39 2 0 1\r\nM1239 picnic_bench1 12 39 2 0 2\r\nN1339 picnic_bench2 13 39 2 0 2\r\nO1439 picnic_bench3 14 39 2 0 2\r\nM1839 picnic_bench1 18 39 2 0 2\r\nN1939 picnic_bench2 19 39 2 0 2\r\nO2039 picnic_bench3 20 39 2 0 2', '', 'sf', 5000, 1, 6),
('park_a', 0, 2, 15, 0, 6, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0xxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00xxxxxxxxxxxx\rxxxxxxxxxxxxx0x00xxxxxxxxxxx0x000xxxxxxxxxxx\rxxxxxxxxxxxx0000000000000000000000xxxxxxxxxx\rxxxxxxxxxxx000000000000000000000000xxxxxxxxx\rxxxxxxxxxxx0000000000000000000000000xxxxxxxx\rxxxxxxxxxxx00000000000000000000000000xxxxxxx\rxxxxxxxx000000000000000000000000000000xxxxxx\rxxxxxxx00000000000000000000000000000000xxxxx\rxxxxxxx000000000000000000000000000000000xxxx\rxxxxxxx0000000000000000000000000000000000xxx\rxxxxxxxxx000000000000000000000000000000000xx\r00000000000000000000xx00000000000000000000xx\r0000000000000000000xxxx00000000000xxxxxxx0xx\r0000000000000000000xxxx00000000000x00000xxxx\rxxxxx00x0000000000xxxxx0xxxxxx0000x0000000xx\rxxxxx0000000000000xxxxx0xx000x0000x000000xxx\rxxxxx0000000000000xxxxx0x000000000x00000xxxx\rxxxxx000000x0000000xxxx0x000000000xxx00xxxxx\rxxxxxxxx000x0000000xxx00xxx000000x0000xxxxxx\rxxxxxxxx000x000000xxxx0x0000000000000xxxxxxx\rxxxxxxxx000x000000011100000000000000xxxxxxxx\rxxxxxxxx000x00000001110000000000000xxxxxxxxx\rxxxxxxxxx00x0000000111x00000000x00xxxxxxxxxx\rxxxxxxxxxx0x0000000xxx0000000xxxxxxxxxxxxxxx\rxxxxxxxxxxxx000000xxxx0000000xxxxxxxxxxxxxxx\rxxxxxxxxxxxx000000xxx00xxxxx00xxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx0xxx0xx000x00xxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx0xxx0x000000xxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx0xxx0x00000xxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx0xxxxx00xxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx0xxxxx0xxxxxxxxxxxxxxxxxxxx\r', 'L89 bench2 8 9 0 4 2\r\nK99 bench 9 9 0 4 2\r\nL711 bench2 7 11 0 2 2\r\nK712 bench 7 12 0 2 2\r\nL3516 bench2 35 16 0 2 2\r\nL3716 bench2 37 16 0 4 2\r\nK3816 bench 38 16 0 4 2\r\nK3517 bench 35 17 0 2 2\r\nL2718 bench2 27 18 0 4 2\r\nK2818 bench 28 18 0 4 2\r\nL3518 bench2 35 18 0 2 2\r\nL2519 bench2 25 19 0 2 2\r\nK3519 bench 35 19 0 2 2\r\nK2520 bench 25 20 0 2 2\r\nL2529 bench2 25 29 0 4 2\r\nK2629 bench 26 29 0 4 2\r\nL2330 bench2 23 30 0 2 2\r\nK2331 bench 23 31 0 2 2', '', 'sf', 5000, 1, 6),
('park_b', 0, 11, 2, 0, 6, '0000x0000000\r0000xx000000\r000000000000\r00000000000x\r000000000000\r00x0000x0000\r', 'C00 cornerchair2 0 0 0 4 2\r\nB10 cornerchair1 1 0 0 4 2\r\nA20 chair1 2 0 0 4 2\r\nA30 chair1 3 0 0 4 2\r\nH50 table1 5 0 0 4 1\r\nE60 chair1line 6 0 0 4 2\r\nA70 chair1 7 0 0 4 2\r\nF80 chair1frontend 8 0 0 4 2\r\nJ100 hububar 10 0 0 4 1\r\nB01 cornerchair1 0 1 0 2 2\r\nA02 chair1 0 2 0 2 2\r\nA03 chair1 0 3 0 2 2\r\nA04 chair1 0 4 0 2 2\r\nF05 chair1frontend 0 5 0 2 2\r\nI35 table2 3 5 0 4 1\r\nD55 modchair 5 5 0 0 2\r\nI85 table2 8 5 0 4 1', '', 'sf', 5000, 1, 6),
('pool_b', 0, 9, 21, 7, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx7xxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx777xxxxxxxxxxx\rxxxxxxxxxxxxxxxxxx8888888x7xxx77777xxxxxxxxxx\rxxxxxxxxxxxxxxxxxx8888888x7xxx777777xxxxxxxxx\rxxxxxxxxxxxxxxxx88xxxxx77x7x777777777xxxxxxxx\rxxxxxxxxxxxxxxxx88x7777777777777777777xxxxxxx\rxxxxxxxxxxxxxxxx88x77777777777777777777xxxxxx\rxxxxxxxxxxxxxx9988x77777777777777777777xxxxxx\rxxxxxxxxxxxxxx9988x7777777777777777777x00xxxx\rxxxxxxxxxxxxxx9988x777777777777777777x0000xxx\rxxxxxxxxxxxxxx9988x7777777x0000000000000000xx\rxxxxxxxxxxxxxx9988x777777x000000000000000000x\r7777777777xxxx9988777777x0x0000000000000000xx\rx7777777777xxx998877777x000x00000000000000xxx\rxx7777777777xx99887777x00000x000000000000xxxx\rxxx7777777777x9988777x0000000x0000000000xxxxx\rxxxx777777777x777777x00000000x000000000xxxxxx\rxxxxx777777777777777000000000x00000000xxxxxxx\rxxxxxx77777777777777000000000x0000000xxxxxxxx\rxxxxxxx777777x7777770000000000xxxx00xxxxxxxxx\rxxxxxxxx77777777777xx0000000000000xxxxxxxxxxx\rxxxxxxxxx777777110000x000000000000xxxxxxxxxxx\rxxxxxxxxxx7x77x1100000x0000000000xxxxxxxxxxxx\rxxxxxxxxxxx777x11000000x00000000xxxxxxxxxxxxx\rxxxxxxxxxxxx771110000000x000000xxxxxxxxxxxxxx\rxxxxxxxxxxxxx111100000000x0000xxxxxxxxxxxxxxx\rxxxxxxxxxxxxxx11100000000x000xxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxx1100000000x00xxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxx110000000x0xxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxx110000000xxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxx1100000xxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxx11000xxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxx110xxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxx1xxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\rxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'u332 umbrella2 33 2 7 0 1\r\nb183 pool_2sofa2 18 3 8 4 2\r\nB193 pool_2sofa1 19 3 8 4 2\r\nb203 pool_2sofa2 20 3 8 4 2\r\nB213 pool_2sofa1 21 3 8 4 2\r\nb223 pool_2sofa2 22 3 8 4 2\r\nB233 pool_2sofa1 23 3 8 4 2\r\nc333 pool_chair2 33 3 7 4 2\r\nc324 pool_chair2 32 4 7 2 2\r\nt334 pool_table2 33 4 7 0 1\r\nc344 pool_chair2 34 4 7 6 2\r\nb165 pool_2sofa2 16 5 8 2 2\r\nc335 pool_chair2 33 5 7 0 2\r\nB166 pool_2sofa1 16 6 8 2 2\r\nb167 pool_2sofa2 16 7 8 2 2\r\nc357 pool_chair2 35 7 7 4 2\r\nf148 flower1 14 8 9 0 1\r\nB168 pool_2sofa1 16 8 8 2 2\r\nu338 umbrella2 33 8 7 0 1\r\nc348 pool_chair2 34 8 7 2 2\r\nt358 pool_table2 35 8 7 0 1\r\nc368 pool_chair2 36 8 7 6 2\r\nb149 pool_2sofa2 14 9 9 2 2\r\nb169 pool_2sofa2 16 9 8 2 2\r\nc359 pool_chair2 35 9 7 0 2\r\nB1410 pool_2sofa1 14 10 9 2 2\r\nB1610 pool_2sofa1 16 10 8 2 2\r\nb1411 pool_2sofa2 14 11 9 2 2\r\nb1611 pool_2sofa2 16 11 8 2 2\r\nB1412 pool_2sofa1 14 12 9 2 2\r\nB1612 pool_2sofa1 16 12 8 2 2\r\nR313 flower2b 3 13 7 2 1\r\nr413 flower2a 4 13 7 2 1\r\nb1413 pool_2sofa2 14 13 9 2 2\r\nb1613 pool_2sofa2 16 13 8 2 2\r\nB1414 pool_2sofa1 14 14 9 2 2\r\nB1614 pool_2sofa1 16 14 8 2 2', '1', 'cam1', 4500, 1, 4),
('bb_lobby_1', 0, 14, 19, 0, 0, 'xxx2222222222222222x\r\nxxx2222222222222222x\r\nxxx2222222222222222x\r\nxxx2222222222222222x\r\nxxx11111111111111111\r\n11x11111111111111111\r\n11x11111111111111111\r\n11x11111111111111111\r\nx1x11111111111111111\r\nxxx11111111111111111\r\nxxx11111111111111111\r\nxxx11111111111111111\r\nxxx11111111111111111\r\nxxx11111111111111111\r\nxxxxxxxxx00000000000\r\nxxxxxxxxx00000000000\r\nxxxxxxxxx00000000000\r\nxxxxxxxxx00000000000\r\nxxxxxxxxx00000000000\r\nxxxxxxxxx00000000000\r\nxxxxxxxxxxxxx000xxxx\r\nxxxxxxxxxxxxx000xxxx\r\nxxxxxxxxxxxxx000xxxx', 'n30 bb_crossrd 3 0 2 2 1\r\nb40 bb_bench1 4 0 2 4 2\r\nc50 bb_bench2 5 0 2 4 2\r\nh80 bb_plant1 8 0 2 0 1\r\nd90 bb_sofa1 9 0 2 4 2\r\ne100 bb_sofa2 10 0 2 4 2\r\nh110 bb_plant1 11 0 2 0 1\r\nd120 bb_sofa1 12 0 2 4 2\r\ne130 bb_sofa2 13 0 2 4 2\r\nh140 bb_plant1 14 0 2 0 1\r\nb160 bb_bench1 16 0 2 4 2\r\nc170 bb_bench2 17 0 2 4 2\r\nk180 bb_corner1out 18 0 2 0 1\r\nb31 bb_bench1 3 1 2 2 2\r\no181 bb_wallend1in 18 1 2 2 1\r\nc32 bb_bench2 3 2 2 2 2\r\no182 bb_wallend1in 18 2 2 2 1\r\nj33 bb_plant3 3 3 2 0 1\r\nt73 bb_special 7 3 2 6 1\r\no83 bb_wallend1in 8 3 2 6 1\r\no93 bb_wallend1in 9 3 2 6 1\r\no103 bb_wallend1in 10 3 2 6 1\r\no113 bb_wallend1in 11 3 2 6 1\r\nn123 bb_crossrd 12 3 2 2 1\r\nn163 bb_crossrd 16 3 2 0 1\r\no173 bb_wallend1in 17 3 2 6 1\r\nn183 bb_crossrd 18 3 2 2 1\r\np34 bb_wallend2in 3 4 1 4 1\r\no74 bb_wallend1in 7 4 1 4 1\r\nb84 bb_bench1 8 4 1 4 2\r\nc94 bb_bench2 9 4 1 4 2\r\nb104 bb_bench1 10 4 1 4 2\r\nc114 bb_bench2 11 4 1 4 2\r\np124 bb_wallend2in 12 4 1 4 1\r\no164 bb_wallend1in 16 4 1 4 1\r\nb174 bb_bench1 17 4 1 4 2\r\nc184 bb_bench2 18 4 1 4 2\r\nm194 bb_wallendout 19 4 1 4 1\r\na75 bb_stool 7 5 1 2 2\r\na125 bb_stool 12 5 1 6 2\r\nb195 bb_bench1 19 5 1 6 2\r\na36 bb_stool 3 6 1 6 2\r\nc196 bb_bench2 19 6 1 6 2\r\nf97 bb_chair 9 7 1 4 2\r\nf107 bb_chair 10 7 1 4 2\r\nb177 bb_bench1 17 7 1 0 2\r\nc187 bb_bench2 18 7 1 0 2\r\nm197 bb_wallendout 19 7 1 0 1\r\na38 bb_stool 3 8 1 6 2\r\nu178 bb_extra 17 8 1 4 1\r\nu188 bb_extra 18 8 1 2 1\r\nn198 bb_crossrd 19 8 1 6 1\r\na39 bb_stool 3 9 1 6 2\r\nf99 bb_chair 9 9 1 0 2\r\nf109 bb_chair 10 9 1 0 2\r\nb179 bb_bench1 17 9 1 4 2\r\nc189 bb_bench2 18 9 1 4 2\r\nm199 bb_wallendout 19 9 1 4 1\r\nb1910 bb_bench1 19 10 1 6 2\r\na711 bb_stool 7 11 1 2 2\r\na1211 bb_stool 12 11 1 6 2\r\nc1911 bb_bench2 19 11 1 6 2\r\no712 bb_wallend1in 7 12 1 0 1\r\nb812 bb_bench1 8 12 1 0 2\r\nc912 bb_bench2 9 12 1 0 2\r\nb1012 bb_bench1 10 12 1 0 2\r\nc1112 bb_bench2 11 12 1 0 2\r\np1212 bb_wallend2in 12 12 1 0 1\r\nb1712 bb_bench1 17 12 1 0 2\r\nc1812 bb_bench2 18 12 1 0 2\r\nm1912 bb_wallendout 19 12 1 0 1\r\nk713 bb_corner1out 7 13 1 4 1\r\nl813 bb_wallout 8 13 1 6 1\r\nl913 bb_wallout 9 13 1 6 1\r\nl1013 bb_wallout 10 13 1 6 1\r\nl1113 bb_wallout 11 13 1 6 1\r\nt1213 bb_special 12 13 1 2 1\r\nm1613 bb_wallendout 16 13 1 6 1\r\nl1713 bb_wallout 17 13 1 6 1\r\nl1813 bb_wallout 18 13 1 6 1\r\nk1913 bb_corner1out 19 13 1 2 1\r\ng914 bb_plant0 9 14 0 6 1\r\nd1014 bb_sofa1 10 14 0 4 2\r\ne1114 bb_sofa2 11 14 0 4 2\r\ni1214 bb_plant2 12 14 0 0 1\r\ni1614 bb_plant2 16 14 0 6 1\r\nd1714 bb_sofa1 17 14 0 4 2\r\ne1814 bb_sofa2 18 14 0 4 2\r\ng1914 bb_plant0 19 14 0 0 1\r\nd915 bb_sofa1 9 15 0 2 2\r\nd1915 bb_sofa1 19 15 0 6 2\r\ne916 bb_sofa2 9 16 0 2 2\r\ne1916 bb_sofa2 19 16 0 6 2\r\nd917 bb_sofa1 9 17 0 2 2\r\nd1917 bb_sofa1 19 17 0 6 2\r\ne918 bb_sofa2 9 18 0 2 2\r\ne1918 bb_sofa2 19 18 0 6 2\r\ng919 bb_plant0 9 19 0 4 1\r\nd1019 bb_sofa1 10 19 0 0 2\r\ne1119 bb_sofa2 11 19 0 0 2\r\nj1219 bb_plant3 12 19 0 2 1\r\nj1619 bb_plant3 16 19 0 4 1\r\nd1719 bb_sofa1 17 19 0 0 2\r\ne1819 bb_sofa2 18 19 0 0 2\r\ng1919 bb_plant0 19 19 0 2 1', '0', NULL, NULL, NULL, NULL);
INSERT INTO `room_modeldata` (`model`, `roomomatic_subscr_only`, `door_x`, `door_y`, `door_h`, `door_z`, `heightmap`, `publicroom_items`, `swimmingpool`, `specialcast_emitter`, `specialcast_interval`, `specialcast_rnd_min`, `specialcast_rnd_max`) VALUES
('snowwar_lobby_1', 0, 41, 36, 1, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx11111xx1xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx11111xx1111xxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx111111xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxx111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxx1111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxx111111111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxx1111x1111111111xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'a3118 sw_barrellchair 31 18 1 6 2\r\na3119 sw_barrellchair 31 19 1 6 2\r\na3020 sw_barrellchair 30 20 1 0 2\r\na3720 sw_barrellchair 37 20 1 0 2\r\na3920 sw_barrellchair 39 20 1 0 2\r\na4120 sw_barrellchair 41 20 1 0 2\r\nd3024 sw_chair1 30 24 1 4 2\r\nc3124 sw_chair2 31 24 1 4 2\r\nc3224 sw_chair2 32 24 1 4 2\r\nc3324 sw_chair2 33 24 1 4 2\r\nb3424 sw_chair3 34 24 1 4 2\r\ni3025 sw_table1 30 25 1 0 1\r\nh3125 sw_table2 31 25 1 0 1\r\ng3225 sw_table3 32 25 1 0 1\r\nf3325 sw_table4 33 25 1 0 1\r\ne3425 sw_table5 34 25 1 0 1\r\nd3026 sw_chair1 30 26 1 0 2\r\nc3126 sw_chair2 31 26 1 0 2\r\nc3226 sw_chair2 32 26 1 0 2\r\nc3326 sw_chair2 33 26 1 0 2\r\nb3426 sw_chair3 34 26 1 0 2\r\nd3029 sw_chair1 30 29 1 4 2\r\nc3129 sw_chair2 31 29 1 4 2\r\nc3229 sw_chair2 32 29 1 4 2\r\nc3329 sw_chair2 33 29 1 4 2\r\nb3429 sw_chair3 34 29 1 4 2\r\ni3030 sw_table1 30 30 1 0 1\r\nh3130 sw_table2 31 30 1 0 1\r\ng3230 sw_table3 32 30 1 0 1\r\nf3330 sw_table4 33 30 1 0 1\r\ne3430 sw_table5 34 30 1 0 1\r\nd3031 sw_chair1 30 31 1 0 2\r\nc3131 sw_chair2 31 31 1 0 2\r\nc3231 sw_chair2 32 31 1 0 2\r\nc3331 sw_chair2 33 31 1 0 2\r\nb3431 sw_chair3 34 31 1 0 2\r\nx2732 invisichair 27 32 1 2 2\r\nx2733 invisichair 27 33 1 2 2\r\nx2734 invisichair 27 34 1 2 2\r\nx2836 invisichair 28 36 1 0 2\r\nx2936 invisichair 29 36 1 0 2\r\nx3036 invisichair 30 36 1 0 2\r\nx3136 invisichair 31 36 1 0 2', '0', NULL, NULL, NULL, NULL),
('cafe_gold0', 0, 9, 29, 0, 0, 'xxxxxxxxxx1111xxxxxxx\r\nxxxxxxxxxx11111xxxxxx\r\nxxxxxxxxxx111111xxxxx\r\nxx111111111111111xxxx\r\nx11111111111111111xxx\r\n1111111111111111111xx\r\n11111111111111111111x\r\n111111111111111111111\r\n111111111111111111111\r\n1111111111111x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000x1111111\r\n1111111000000xxx00000\r\n111111100000000000000\r\n111111100000000000000\r\n111111100000000000000\r\n111111100000000xxxxx0\r\n11111110000000xxxxxx0\r\n11111110000000xxxxxx0\r\n11111110000000xxxxxxx\r\nx1111110000000xxxxxxx\r\nxxxxxxxx0000000000xxx\r\nxxxxxxxx000xxxxxxxxxx\r\nxxxxxxxx000xxxxxxxxxx\r\nxxxxxxxx000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx', 'c53 gold_chair 5 3 1 2 2\r\nt63 gold_table_small1 6 3 1 6 1\r\nc73 gold_chair 7 3 1 6 2\r\n5103 gold_bardesk5 10 3 1 0 1\r\n4113 gold_bardesk4 11 3 1 0 1\r\n3123 gold_bardesk3 12 3 1 0 1\r\n2133 gold_bardesk2 13 3 1 0 1\r\n1143 gold_bardesk1 14 3 1 0 1\r\nc54 gold_chair 5 4 1 2 2\r\ny64 gold_table_small2 6 4 1 6 1\r\nc74 gold_chair 7 4 1 6 2\r\nc05 gold_chair 0 5 1 2 2\r\nt15 gold_table_small1 1 5 1 6 1\r\nc25 gold_chair 2 5 1 6 2\r\nc06 gold_chair 0 6 1 2 2\r\ny16 gold_table_small2 1 6 1 6 1\r\nc26 gold_chair 2 6 1 6 2\r\nc56 gold_chair 5 6 1 2 2\r\nt66 gold_table_small1 6 6 1 6 1\r\nc76 gold_chair 7 6 1 6 2\r\nc57 gold_chair 5 7 1 2 2\r\ny67 gold_table_small2 6 7 1 6 1\r\nc77 gold_chair 7 7 1 6 2\r\nc08 gold_chair 0 8 1 2 2\r\nt18 gold_table_small1 1 8 1 6 1\r\nc28 gold_chair 2 8 1 6 2\r\nc198 gold_chair 19 8 1 4 2\r\nc208 gold_chair 20 8 1 4 2\r\nc09 gold_chair 0 9 1 2 2\r\ny19 gold_table_small2 1 9 1 6 1\r\nc29 gold_chair 2 9 1 6 2\r\nc149 gold_chair 14 9 1 4 2\r\nc159 gold_chair 15 9 1 4 2\r\nt1910 gold_table_small1 19 10 1 0 1\r\ny2010 gold_table_small2 20 10 1 0 1\r\nt1411 gold_table_small1 14 11 1 0 1\r\ny1511 gold_table_small2 15 11 1 0 1\r\np012 gold_plant 0 12 1 0 2\r\nc112 gold_chair 1 12 1 0 2\r\nc212 gold_chair 2 12 1 0 2\r\nc312 gold_chair 3 12 1 0 2\r\nc1912 gold_chair 19 12 1 0 2\r\nc2012 gold_chair 20 12 1 0 2\r\np013 gold_plant 0 13 1 0 1\r\nc113 gold_chair 1 13 1 4 2\r\nc213 gold_chair 2 13 1 4 2\r\nc313 gold_chair 3 13 1 4 2\r\nc1413 gold_chair 14 13 1 0 2\r\nc1513 gold_chair 15 13 1 0 2\r\nc014 gold_chair 0 14 1 2 2\r\nc1414 gold_chair 14 14 1 4 2\r\nc1514 gold_chair 15 14 1 4 2\r\nc015 gold_chair 0 15 1 2 2\r\nt215 gold_table_small1 2 15 1 0 1\r\ny315 gold_table_small2 3 15 1 0 1\r\nc016 gold_chair 0 16 1 2 2\r\nt1416 gold_table_small1 14 16 1 0 1\r\ny1516 gold_table_small2 15 16 1 0 1\r\np017 gold_plant 0 17 1 0 1\r\nc117 gold_chair 1 17 1 0 2\r\nc217 gold_chair 2 17 1 0 2\r\nc317 gold_chair 3 17 1 0 2\r\np018 gold_plant 0 18 1 0 1\r\nc118 gold_chair 1 18 1 4 2\r\nc218 gold_chair 2 18 1 4 2\r\nc318 gold_chair 3 18 1 4 2\r\nc1418 gold_chair 14 18 1 0 2\r\nc1518 gold_chair 15 18 1 0 2\r\nc019 gold_chair 0 19 1 2 2\r\nc020 gold_chair 0 20 1 2 2\r\nt220 gold_table_small1 2 20 1 0 1\r\ny320 gold_table_small2 3 20 1 0 1\r\nc021 gold_chair 0 21 1 2 2\r\np022 gold_plant 0 22 1 0 1\r\nc122 gold_chair 1 22 1 0 2\r\nc222 gold_chair 2 22 1 0 2\r\nc322 gold_chair 3 22 1 0 2\r\np023 gold_plant 0 23 1 0 1\r\nc123 gold_chair 1 23 1 4 2\r\nc223 gold_chair 2 23 1 4 2\r\nc323 gold_chair 3 23 1 4 2\r\nc024 gold_chair 0 24 1 2 2\r\nc025 gold_chair 0 25 1 2 2\r\nt225 gold_table_small1 2 25 1 0 1\r\ny325 gold_table_small2 3 25 1 0 1\r\nc026 gold_chair 0 26 1 2 2\r\nc127 gold_chair 1 27 1 0 2\r\nc227 gold_chair 2 27 1 0 2\r\nc327 gold_chair 3 27 1 0 2', '1', '0', 1, NULL, NULL),
('cafe', 0, 30, 40, 0, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000000xxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxx00000xx00000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxx0000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxxx000000xxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000000xxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx0000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxx00000000000000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000000xxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0000xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'd3221 chairup4 32 21 0 3\r\nf3321 chairup6 33 21 0 4\r\nf3421 chairup6 34 21 0 4\r\nf3521 chairup6 35 21 0 4\r\nf3621 chairup6 36 21 0 4\r\ng3721 chairup7 37 21 0 4\r\nb3222 chairup2 32 22 0 2\r\ne2523 chairup5 25 23 0 4\r\nf2623 chairup6 26 23 0 4\r\nf2723 chairup6 27 23 0 4\r\nf2823 chairup6 28 23 0 4\r\ng2923 chairup7 29 23 0 4\r\na3223 chairup1 32 23 0 2\r\nA2424 counter5 24 24 0 7\r\nr2524 table2 25 24 0 7\r\nq2624 table1 26 24 0 7\r\np2425 counter3 24 25 0 7\r\nz2426 counter4 24 26 0 7\r\np2427 counter3 24 27 0 7\r\np2428 counter3 24 28 0 7\r\ny2928 palms4 29 28 0 7\r\np2429 counter3 24 29 0 7\r\nx2929 palms3 29 29 0 7\r\np2430 counter3 24 30 0 7\r\nw2930 palms2 29 30 0 7\r\nn2231 counter1 22 31 0 7\r\nn2331 counter1 23 31 0 7\r\no2431 counter2 24 31 0 7\r\nv2931 palms1 29 31 0 7\r\ne3031 chairup5 30 31 0 4\r\nf3131 chairup6 31 31 0 4\r\nf3231 chairup6 32 31 0 4\r\nf3331 chairup6 33 31 0 4\r\nf3431 chairup6 34 31 0 4\r\nf3531 chairup6 35 31 0 4\r\nf3631 chairup6 36 31 0 4\r\nj3731 chairright3 37 31 0 5\r\nc2132 chairup3 21 32 0 2\r\nt2232 table4 22 32 0 7\r\nr3032 table2 30 32 0 7\r\nq3132 table1 31 32 0 7\r\nr3332 table2 33 32 0 7\r\nq3432 table1 34 32 0 7\r\ni3732 chairright2 37 32 0 6\r\nb2133 chairup2 21 33 0 2\r\ns2233 table3 22 33 0 7\r\ni3733 chairright2 37 33 0 6\r\nb2134 chairup2 21 34 0 2\r\nt3634 table4 36 34 0 7\r\ni3734 chairright2 37 34 0 6\r\nb2135 chairup2 21 35 0 2\r\nr2435 table2 24 35 0 7\r\nq2535 table1 25 35 0 7\r\nr2735 table2 27 35 0 7\r\nq2835 table1 28 35 0 7\r\nu3335 palm 33 35 0 7\r\ns3635 table3 36 35 0 7\r\ni3735 chairright2 37 35 0 6\r\nm2136 chairleft3 21 36 0 1\r\nl2236 chairleft2 22 36 0 0\r\nl2336 chairleft2 23 36 0 0\r\nl2436 chairleft2 24 36 0 0\r\nl2536 chairleft2 25 36 0 0\r\nl2636 chairleft2 26 36 0 0\r\nl2736 chairleft2 27 36 0 0\r\nk2836 chairleft1 28 36 0 0\r\ni3736 chairright2 37 36 0 6\r\nt3637 table4 36 37 0 7\r\ni3737 chairright2 37 37 0 6\r\ns3638 table3 36 38 0 7\r\nh3738 chairright1 37 38 0 6', '0', '0', 1, NULL, NULL),
('cinema', 0, 20, 27, 1, 0, 'xxxxxxx1xx11111111xxxxxx\r\nxxx1111111111111111xxxxx\r\nxxx111xxxx1111111111xxxx\r\nxxxx2xxxxxxxxxxxxxxxxxxx\r\nxx3x3x333311xxxxxxxxxx11\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111111122111\r\nxx3333333311x22222222111\r\nxx3333333311x22222222111\r\nxx3333333311xxxxxxxxx111\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111111111111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\nxx3333333311111xxxx11111\r\n333333332111111xxxx11111\r\n333333332111111111111111\r\n333333332111111111111111\r\n333333332111111111111111\r\nxx3333332111111111111111\r\nxxxxxxxxxxxxxxxxxxx11111\r\nxxxxxxxxxxxxxxxxxxx11111\r\nxxxxxxxxxxxxxxxxxxx11111', 'C24 orange 2 4 3 0\r\nA74 loungey_chair 7 4 3 2\r\nV84 loungey_tablebigb 8 4 3 0\r\nA94 loungey_chair 9 4 3 6\r\nA25 loungey_chair 2 5 3 4\r\nA75 loungey_chair 7 5 3 2\r\nU85 loungey_tablebiga 8 5 3 0\r\nA95 loungey_chair 9 5 3 6\r\nB26 loungey_table 2 6 3 0\r\nA27 loungey_chair 2 7 3 0\r\nh137 theater_chair 13 7 1 0\r\nh147 theater_chair 14 7 1 0\r\nh157 theater_chair 15 7 1 0\r\nh167 theater_chair 16 7 1 0\r\nh177 theater_chair 17 7 1 0\r\nh187 theater_chair 18 7 1 0\r\nz217 stair 21 7 1 0\r\nL98 lightpole 9 8 3 0\r\nq138 pomomaski 13 8 2 2\r\nq148 pomomaski 14 8 2 0\r\nq158 pomomaski 15 8 2 0\r\nq168 pomomaski 16 8 2 0\r\nq178 pomomaski 17 8 2 0\r\nq188 pomomaski 18 8 2 0\r\nq198 pomomaski 19 8 2 1\r\nz218 stair 21 8 1 0\r\nC29 orange 2 9 3 0\r\nh139 theater_chair 13 9 2 0\r\nh149 theater_chair 14 9 2 0\r\nh159 theater_chair 15 9 2 0\r\nh169 theater_chair 16 9 2 0\r\nh179 theater_chair 17 9 2 0\r\nh189 theater_chair 18 9 2 0\r\nh199 theater_chair 19 9 2 0\r\nh209 theater_chair 20 9 2 0\r\nz219 stair 21 9 1 0\r\nA210 loungey_chair 2 10 3 4\r\nA910 loungey_chair 9 10 3 4\r\nB211 loungey_table 2 11 3 0\r\nB911 loungey_table 9 11 3 0\r\nA212 loungey_chair 2 12 3 0\r\nA912 loungey_chair 9 12 3 0\r\nd1712 cubicb_chair 17 12 1 6\r\nc1912 cubico_chair 19 12 1 2\r\nd1513 cubicb_chair 15 13 1 2\r\nL1913 lightpole 19 13 1 0\r\nd2013 cubicb_chair 20 13 1 6\r\nL914 lightpole 9 14 3 0\r\nA215 loungey_chair 2 15 3 4\r\nd1415 cubicb_chair 14 15 1 4\r\nc1915 cubico_chair 19 15 1 4\r\nB216 loungey_table 2 16 3 0\r\nA716 loungey_chair 7 16 3 2\r\nB816 loungey_table 8 16 3 2\r\nA916 loungey_chair 9 16 3 6\r\nd1316 cubicb_chair 13 16 1 2\r\nd1416 cubicb_chair 14 16 1 6\r\nC1916 orange 19 16 1 0\r\nA217 loungey_chair 2 17 3 0\r\nA717 loungey_chair 7 17 3 2\r\nB817 loungey_table 8 17 3 2\r\nA917 loungey_chair 9 17 3 6\r\nd1917 cubicb_chair 19 17 1 2\r\nC218 orange 2 18 3 0\r\nd1418 cubicb_chair 14 18 1 4\r\nK219 bardesque 2 19 3 0\r\nK220 bardesque 2 20 3 1\r\nb320 bar_chair 3 20 3 6\r\nL920 lightpole 9 20 3 0\r\nd1420 cubicb_chair 14 20 1 0\r\nd1920 cubicb_chair 19 20 1 2\r\nc2020 cubico_chair 20 20 1 6\r\nK221 bardesque 2 21 3 1\r\nb321 bar_chair 3 21 3 6\r\nd1921 cubicb_chair 19 21 1 0\r\nK222 bardesque 2 22 3 1\r\nb322 bar_chair 3 22 3 6\r\nL1622 lightpole 16 22 1 0\r\nc1822 cubico_chair 18 22 1 0\r\nK223 bardesque 2 23 3 1\r\nb323 bar_chair 3 23 3 6\r\nK224 bardesque 2 24 3 1\r\nb324 bar_chair 3 24 3 6\r\nK225 bardesque 2 25 3 2', '0', '0', 1, NULL, NULL),
('den', 0, 3, 22, 0, 0, '00000000xxxxxxxx\r\n0000000000000000\r\n0000000000000000\r\n000000000000xx00\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\n0000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nx000000000000000\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx\r\nxxx00xxxxxxxxxxx', 'l70 crs_lamptable 7 0 0 0\r\ng141 tvtable 14 1 0 2\r\nt02 crs_trash 0 2 0 0\r\ns22 crs_sofag_start 2 2 0 4\r\nm32 crs_sofag_mid 3 2 0 4\r\nm42 crs_sofag_mid 4 2 0 4\r\nS52 crs_sofag_end 5 2 0 4\r\nR124 crs_roundwoodtable 12 4 0 2 2\r\nW154 crs_woodchair 15 4 0 6\r\nW105 crs_woodchair 10 5 0 2\r\nW156 crs_woodchair 15 6 0 6\r\nW77 crs_woodchair 7 7 0 4\r\nW138 crs_woodchair 13 8 0 4\r\nW158 crs_woodchair 15 8 0 4\r\nW59 crs_woodchair 5 9 0 2\r\nF010 crs_fridge 0 10 0 0\r\nV710 ctable2 7 10 0 2\r\nY1310 crs_woodtable_end 13 10 0 1 2\r\ny1410 crs_woodtable_start 14 10 0 2 2\r\nW511 crs_woodchair 5 11 0 2\r\nB112 crs_box 1 12 0 2\r\nB113 crs_box 1 13 0 2\r\nv713 ctable1 7 13 0 2\r\nW1313 crs_woodchair 13 13 0 0\r\nW1513 crs_woodchair 15 13 0 0\r\nB115 crs_box 1 15 0 2\r\nP117 crs_boxopen 1 17 0 2\r\ni1517 crs_stomp 15 17 0 0\r\nB118 crs_box 1 18 0 2\r\ni1518 crs_stomp 15 18 0 0\r\nb119 crs_boxtwo 1 19 0 2', '0', '0', 1, NULL, NULL),
('gardens', 0, 2, 15, 0, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx0xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx00xxxxxxxxxxxx\r\nxxxxxxxxxxxxx0x00xxxxxxxxxxx0x000xxxxxxxxxxx\r\nxxxxxxxxxxxx0000000000000000000000xxxxxxxxxx\r\nxxxxxxxxxxx000000000000000000000000xxxxxxxxx\r\nxxxxxxxxxxx0000000000000000000000000xxxxxxxx\r\nxxxxxxxxxxx00000000000000000000000000xxxxxxx\r\nxxxxxxxx000000000000000000000000000000xxxxxx\r\nxxxxxxx00000000000000000000000000000000xxxxx\r\nxxxxxxx000000000000000000000000000000000xxxx\r\nxxxxxxx0000000000000000000000000000000000xxx\r\nxxxxxxxxx000000000000000000000000000000000xx\r\n00000000000000000000xx00000000000000000000xx\r\n0000000000000000000xxxx00000000000xxxxxxx0xx\r\n0000000000000000000xxxx00000000000x00000xxxx\r\nxxxxx00x0000000000xxxxx0xxxxxx0000x0000000xx\r\nxxxxx0000000000000xxxxx0xx000x0000x000000xxx\r\nxxxxx0000000000000xxxxx0x000000000x00000xxxx\r\nxxxxx000000x0000000xxxx0x000000000xxx00xxxxx\r\nxxxxxxxx000x0000000xxx00xxx000000x0000xxxxxx\r\nxxxxxxxx000x000000xxxx0x0000000000000xxxxxxx\r\nxxxxxxxx000x000000011100000000000000xxxxxxxx\r\nxxxxxxxx000x00000001110000000000000xxxxxxxxx\r\nxxxxxxxxx00x0000000111x00000000x00xxxxxxxxxx\r\nxxxxxxxxxx0x0000000xxx0000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx000000xxxx0000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxx000000xxx00xxxxx00xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxx0xx000x00xxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxx0x000000xxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxx0x00000xxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxxxx00xxxxxxxxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxxx0xxxxx0xxxxxxxxxxxxxxxxxxxx', 'L89 bench2 8 9 0 4\r\nK99 bench 9 9 0 4\r\nL711 bench2 7 11 0 2\r\nK712 bench 7 12 0 2\r\nL3516 bench2 35 16 0 2\r\nL3716 bench2 37 16 0 4\r\nK3816 bench 38 16 0 4\r\nK3517 bench 35 17 0 2\r\nL2718 bench2 27 18 0 4\r\nK2818 bench 28 18 0 4\r\nL3518 bench2 35 18 0 2\r\nL2519 bench2 25 19 0 2\r\nK3519 bench 35 19 0 2\r\nK2520 bench 25 20 0 2\r\nL2529 bench2 25 29 0 4\r\nK2629 bench 26 29 0 4\r\nL2330 bench2 23 30 0 2\r\nK2331 bench 23 31 0 2', '0', '0', 1, NULL, NULL),
('square_1', 0, 17, 26, 0, 0, 'xxxxxxxxx222xx222222xxx222xxxxxx\r\nxxxxxxxxx222xx2222222xx222xxxxxx\r\nxxxxxxxxx22222222222222222xxxxxx\r\nxxxxxxxxx22222222222222222xxxxxx\r\nxxxxxxxxx22222222222222222xxxxxx\r\nxxxxxxxxx22222x22222x22222xxxxxx\r\nxxxxxxxxx11111x22222x11111xxxxxx\r\n0000000xx00000x22222x00000xxxxxx\r\n0000000xx00000000000000000xxxxxx\r\n000000000000000000000000000xx00x\r\n000000000000xxx00000xxx00000000x\r\n000000000000xxx00000xxx00000000x\r\n000000000000xxx00000xxx000000000\r\n00000000000000000000000000000000\r\nx0000000000000000000000000000000\r\nxxx00000000000000000000000000000\r\nxxxxx000000000000000000000000000\r\nxxxxx000000000000000000000000000\r\nxxxxx000000000000000000000000xxx\r\nxxxxxx00000000000000000000000xxx\r\nxxxxxxx000000000000000000000xxxx\r\nxxxxxxxxxx00000000000000000xxxxx\r\nxxxxxxxxxx0000000000000000xxxxxx\r\nxxxxxxxxxx000000000000000xxxxxxx\r\nxxxxxxxxxxxxx00000000000xxxxxxxx\r\nxxxxxxxxxxxxxx000000000xxxxxxxxx\r\nxxxxxxxxxxxxxxxx000xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx000xxxxxxxxxxxxx\r\nxxxxxxxxxxxxxxxx000xxxxxxxxxxxxx', 'd155 gate_table1 15 5 2 2\r\nd195 gate_table1 19 5 2 6\r\ne156 gate_table2 15 6 2 2\r\ne196 gate_table2 19 6 2 6\r\nd27 gate_table1 2 7 0 4\r\ne37 gate_table2 3 7 0 4\r\nf47 gate_table3 4 7 0 4\r\nf157 gate_table3 15 7 2 2\r\nf197 gate_table3 19 7 2 6\r\nd210 gate_table1 2 10 0 0\r\ne310 gate_table2 3 10 0 0\r\nf410 gate_table3 4 10 0 0\r\nd211 gate_table1 2 11 0 4\r\ne311 gate_table2 3 11 0 4\r\nf411 gate_table3 4 11 0 4\r\nb2913 gate_drumchair 29 13 0 4\r\nb3013 gate_drumchair 30 13 0 4\r\nd214 gate_table1 2 14 0 0\r\ne314 gate_table2 3 14 0 0\r\nf414 gate_table3 4 14 0 0\r\nb1214 gate_drumchair 12 14 0 4\r\nb1714 gate_drumchair 17 14 0 4\r\nb2214 gate_drumchair 22 14 0 4\r\nh815 gate_lantern 8 15 0 0\r\nb1115 gate_drumchair 11 15 0 2\r\nc1215 gate_table 12 15 0 0\r\nb1315 gate_drumchair 13 15 0 6\r\nb1615 gate_drumchair 16 15 0 2\r\nc1715 gate_table 17 15 0 0\r\nb1815 gate_drumchair 18 15 0 6\r\nb2115 gate_drumchair 21 15 0 2\r\nc2215 gate_table 22 15 0 0\r\nb2315 gate_drumchair 23 15 0 6\r\nh2615 gate_lantern 26 15 0 0\r\nb1216 gate_drumchair 12 16 0 0\r\nb1716 gate_drumchair 17 16 0 0\r\nb2216 gate_drumchair 22 16 0 0\r\nb2917 gate_drumchair 29 17 0 0\r\nb3017 gate_drumchair 30 17 0 0\r\ni1018 gate_rockchair1 10 18 0 2\r\ni1418 gate_rockchair1 14 18 0 6\r\na2018 gate_trashcan 20 18 0 0\r\nk2118 gate_rockchair3 21 18 0 4\r\nj2218 gate_rockchair2 22 18 0 4\r\ni2318 gate_rockchair1 23 18 0 4\r\nj1019 gate_rockchair2 10 19 0 2\r\nk1419 gate_rockchair3 14 19 0 6\r\nj2019 gate_rockchair2 20 19 0 2\r\nk1020 gate_rockchair3 10 20 0 2\r\nj1420 gate_rockchair2 14 20 0 6\r\nk2020 gate_rockchair3 20 20 0 2\r\ni1021 gate_rockchair1 10 21 0 2\r\ni2021 gate_rockchair1 20 21 0 2\r\ng1022 gate_talltree 10 22 0 0\r\ng1023 gate_talltree 10 23 0 0', '0', '0', 1, NULL, NULL),
('square_2', 0, 17, 23, 0, 0, 'xxxxxxxxxxx111111111111xxxxxxxxxxxx\r\nxxxxxxxxxx11111111111111xxxxxxxxxxx\r\nxxxxxxxxxx11111111111111xxxxxxxxxxx\r\nxxxxxxxxxx11xxxx11xxxx11xxxxxxxxxxx\r\nxxxxxxxxxx00xxxx00xxxx00xxxxxxxxxxx\r\nxxxxxxx0000000000000000000xxxxxxxxx\r\nxxxxxx000000000000000000000xxxxxxxx\r\nxxxxx0000000000000000000x000xxxxxxx\r\nxxxx00000000000000000000xx000xxxxxx\r\nxxxx00000000000000000000xxx000xxxxx\r\nxxxx00000000000000000000xxxx00xxxxx\r\n000000000000000000000000000000xxxxx\r\n0000000000000000000000000000000xxxx\r\n000000000000000000000000000000xxxxx\r\n000000000000000000000000000000xxxxx\r\n000000000000000000000000000000xxxxx\r\nxx00000000000000000000000000000000x\r\nxxx000xxxx00000000000000xxxx0000000\r\nxxx0000xxx00000000000000xxx00000000\r\nxxxx0000xx00000000000000xx000000000\r\nxxxxx0000x00000000000000x00000000xx\r\nxxxxxx00000000000000000000000xxxxxx\r\nxxxxxxx00000x000000000000000x0xxxxx\r\nxxxxxxxx0000xxx0000xxx000000xxxxxxx\r\nxxxxxxxxx000xxx0000xxx000000xxxxxxx\r\nxxxxxxxxxxxxxxx0000xxx000000xxxxxxx\r\nxxxxxxxxxxxxxxxx000xxx000000xxxxxxx\r\nxxxxxxxxxxxxxxxxxxxxxx00000xxxxxxxx', 'd120 gate_table1 12 0 1 4\r\ne130 gate_table2 13 0 1 4\r\nf140 gate_table3 14 0 1 4\r\nd160 gate_table1 16 0 1 4\r\nf170 gate_table3 17 0 1 4\r\nd190 gate_table1 19 0 1 4\r\ne200 gate_table2 20 0 1 4\r\nf210 gate_table3 21 0 1 4\r\ng97 gate_talltree 9 7 0 0\r\nb148 gate_drumchair 14 8 0 4\r\nb198 gate_drumchair 19 8 0 4\r\ng99 gate_talltree 9 9 0 0\r\nb139 gate_drumchair 13 9 0 2\r\nc149 gate_table 14 9 0 0\r\nb159 gate_drumchair 15 9 0 6\r\nb189 gate_drumchair 18 9 0 2\r\nc199 gate_table 19 9 0 0\r\nb209 gate_drumchair 20 9 0 6\r\ng610 gate_talltree 6 10 0 0\r\ng810 gate_talltree 8 10 0 0\r\nb1410 gate_drumchair 14 10 0 0\r\nb1910 gate_drumchair 19 10 0 0\r\nk611 gate_rockchair3 6 11 0 2\r\nj811 gate_rockchair2 8 11 0 6\r\nb112 gate_drumchair 1 12 0 4\r\nb212 gate_drumchair 2 12 0 4\r\ni612 gate_rockchair1 6 12 0 2\r\ng2712 gate_talltree 27 12 0 0\r\ng3012 gate_talltree 30 12 0 0\r\nb114 gate_drumchair 1 14 0 0\r\nb214 gate_drumchair 2 14 0 0\r\ni615 gate_rockchair1 6 15 0 2\r\na2715 gate_trashcan 27 15 0 0\r\nj616 gate_rockchair2 6 16 0 2\r\nk816 gate_rockchair3 8 16 0 6\r\nd3116 gate_table1 31 16 0 4\r\nf3216 gate_table3 32 16 0 4\r\nb1417 gate_drumchair 14 17 0 4\r\nb1917 gate_drumchair 19 17 0 4\r\nb1318 gate_drumchair 13 18 0 2\r\nc1418 gate_table 14 18 0 0\r\nb1518 gate_drumchair 15 18 0 6\r\nb1818 gate_drumchair 18 18 0 2\r\nc1918 gate_table 19 18 0 0\r\nb2018 gate_drumchair 20 18 0 6\r\nb1419 gate_drumchair 14 19 0 0\r\nb1919 gate_drumchair 19 19 0 0\r\nd3119 gate_table1 31 19 0 0\r\nf3219 gate_table3 32 19 0 0\r\nh2922 gate_lantern 29 22 0 0\r\na823 gate_trashcan 8 23 0 0\r\nd2324 gate_table1 23 24 0 2\r\nd2624 gate_table1 26 24 0 6\r\nf2325 gate_table3 23 25 0 2\r\nf2625 gate_table3 26 25 0 6', '', '0', 1, NULL, NULL),
('rumble', 0, 1, 5, 7, 0, 'xxxxxxxx77xxxxxxxxxxxxxxxx\r\nxxxxxxxx77xxxxxxxxxxxxxxxx\r\nxxxxxx77777x77xxxxxxxxxxxx\r\nxxx77777777777xxx44xxxxxxx\r\n77777777777777xx444444444x\r\n777777777777777xx44444444x\r\nxxx777777777777xx44444444x\r\nxxxx7777777777xxx44444444x\r\n7777777777777777744448444x\r\n7777777777777x4x744448444x\r\n777777777777x444444448444x\r\n7777777777774444444448444x\r\n7777777777774444444448444x\r\n777777777777x444444448444x\r\n7777777777777x44444448444x\r\nxxx777777777777x444448444x\r\nxxx7777777777777444448444x\r\nxxx7777777777777444448444x\r\nxxx777777777777x444448444x\r\nxxx77777777777x4444444444x\r\nxxxx777777777444444444444x\r\nxxxxxxxxxxxxxxxxxxxxxxxxxx', 'A43 mntdwchair 4 3 7 4\r\nA53 mntdwchair 5 3 7 4\r\nM28 barmask 2 8 7 0\r\ns78 mntdwsofa2 7 8 7 2\r\nt88 mntdwtable2 8 8 7 0\r\ns98 mntdwsofa2 9 8 7 6\r\ny218 paalu5 21 8 8 0\r\nM29 barmask 2 9 7 0\r\nS79 mntdwsofa1 7 9 7 2\r\nT89 mntdwtable1 8 9 7 0\r\nS99 mntdwsofa1 9 9 7 6\r\ny219 paalu5 21 9 8 0\r\nM210 barmask 2 10 7 0\r\ny2110 paalu5 21 10 8 0\r\nM211 barmask 2 11 7 0\r\ny2111 paalu5 21 11 8 0\r\nM212 barmask 2 12 7 0\r\ns712 mntdwsofa2 7 12 7 4\r\nS812 mntdwsofa1 8 12 7 4\r\ne2112 paalu3 21 12 8 0\r\nM213 barmask 2 13 7 0\r\nt713 mntdwtable2 7 13 7 2\r\nT813 mntdwtable1 8 13 7 2\r\ne2113 paalu3 21 13 8 0\r\nM214 barmask 2 14 7 0\r\ns714 mntdwsofa2 7 14 7 0\r\nS814 mntdwsofa1 8 14 7 0\r\ne2114 paalu3 21 14 8 0\r\nM215 barmask 2 15 100000 0\r\nq2115 paalu1 21 15 8 0\r\nM216 barmask 2 16 100000 0\r\ns1216 mntdwsofa2 12 16 7 4\r\nS1316 mntdwsofa1 13 16 7 4\r\nq2116 paalu1 21 16 8 0\r\nA317 mntdwchair 3 17 7 2\r\ns617 mntdwsofa2 6 17 7 2\r\nt717 mntdwtable2 7 17 7 0\r\ns817 mntdwsofa2 8 17 7 6\r\nt1217 mntdwtable2 12 17 7 2\r\nT1317 mntdwtable1 13 17 7 2\r\nq2117 paalu1 21 17 8 0\r\nA318 mntdwchair 3 18 7 2\r\nS618 mntdwsofa1 6 18 7 2\r\nT718 mntdwtable1 7 18 7 0\r\nS818 mntdwsofa1 8 18 7 6\r\ns1218 mntdwsofa2 12 18 7 0\r\nS1318 mntdwsofa1 13 18 7 0\r\nq2118 paalu1 21 18 8 0', '0', '0', 1, NULL, NULL),
('terace', 0, 9, 17, 0, 0, 'xxxxxx21000000000xxxxxxxx\r\nxxxxxx3xxx000xx000xxxxxxx\r\nxxxxxx4xxx000xxx000xxxxxx\r\nxxxxxx44xx000x00x000xxxxx\r\nxxxxxx44xx0000xx00000xxxx\r\nxxxxxx44xx000000000000xxx\r\nxxxxxx44xx0000000000000xx\r\nxxxxxxx4xxxxxxx00000000xx\r\nxxxxxxx4xxxxxxx0000000xxx\r\nxxxxxx444432222xxx00xxxxx\r\nxxxxxx444432222x0000000xx\r\nxxxxxx444432222x0000000xx\r\nxxxxxx44400x222x0000000xx\r\nxxxxxx444000x11x0000000xx\r\nxxxxxx444000000x0000000xx\r\nxxxxxx444000000x0000000xx\r\nxxxxxx440000000000000000x\r\nxxxxxx4400000000000000000\r\nx8876x444000000x000000000\r\nx8xx6x444000000x000000000\r\nx9xx6x444000000x000000000\r\n999x65444000000x000000000\r\n999xxx444xxxxxxxxxx000000\r\n999xxx444xxxxxxxxxxx00000\r\n999xxx333xxxxxxxxxxxx0000\r\n999xxx222222222222222x000\r\nxxxxxx222222222222222xx00\r\nxxxxxx222222222222222xxx0\r\nxxxxxx222222222222222xxxx\r\nxxxxxxx22222222222222xxxx\r\nxxxxxxxx2222222222222xxxx', 'a1611 sun_chair 16 11 0 2\r\na2011 sun_chair 20 11 0 2\r\na1612 sun_chair 16 12 0 2\r\na2012 sun_chair 20 12 0 2\r\nb1013 blusun_chair 10 13 0 4\r\na1613 sun_chair 16 13 0 2\r\na2013 sun_chair 20 13 0 2\r\nc1014 sun_table 10 14 0 0\r\na2014 sun_chair 20 14 0 2\r\nb1015 blusun_chair 10 15 0 0\r\na118 sun_chair 1 18 8 2\r\na418 sun_chair 4 18 6 2\r\nb1118 blusun_chair 11 18 0 4\r\nb1019 blusun_chair 10 19 0 2\r\nc1119 sun_table 11 19 0 0\r\nb1219 blusun_chair 12 19 0 6\r\na1819 sun_chair 18 19 0 2\r\na2219 sun_chair 22 19 0 2\r\nb1120 blusun_chair 11 20 0 0\r\na1820 sun_chair 18 20 0 2\r\na2220 sun_chair 22 20 0 2\r\na421 sun_chair 4 21 6 2\r\na621 sun_chair 6 21 4 2\r\na1821 sun_chair 18 21 0 2\r\na2221 sun_chair 22 21 0 2\r\nb222 blusun_chair 2 22 9 4\r\na2222 sun_chair 22 22 0 2\r\nb123 blusun_chair 1 23 9 2\r\nd223 sun_table2 2 23 9 0\r\nb224 blusun_chair 2 24 9 0\r\na1125 sun_chair 11 25 2 4\r\na1225 sun_chair 12 25 2 4\r\na1325 sun_chair 13 25 2 4\r\nc1425 sun_table 14 25 2 0\r\na1525 sun_chair 15 25 2 4\r\na1625 sun_chair 16 25 2 4\r\na1725 sun_chair 17 25 2 4\r\na1329 sun_chair 13 29 2 2\r\na1529 sun_chair 15 29 2 2\r\na1729 sun_chair 17 29 2 2\r\na1330 sun_chair 13 30 2 2\r\na1530 sun_chair 15 30 2 2\r\na1730 sun_chair 17 30 2 2', '0', '0', 1, NULL, NULL),
('s', 0, 0, 3, 0, 2, 'xxxxxxxxx\r\n000000xx\r\n000000xx\r\n0000A0xx\r\n000000xx\r\n000000xx\r\n000A00xx\r\n000000xx\r\nxxxxxxxx', '', '1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_modeldata_triggers`
--

CREATE TABLE IF NOT EXISTS `room_modeldata_triggers` (
  `id` int(5) NOT NULL auto_increment,
  `model` varchar(100) collate latin1_general_ci NOT NULL,
  `object` varchar(100) collate latin1_general_ci NOT NULL,
  `x` int(5) NOT NULL default '0',
  `y` int(5) NOT NULL default '0',
  `stepx` int(5) NOT NULL,
  `stepy` int(5) NOT NULL,
  `goalx` int(5) NOT NULL,
  `goaly` int(5) NOT NULL,
  `roomid` int(10) NOT NULL default '0',
  `state` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `room_modeldata_triggers`
--

INSERT INTO `room_modeldata_triggers` (`id`, `model`, `object`, `x`, `y`, `stepx`, `stepy`, `goalx`, `goaly`, `roomid`, `state`) VALUES
(1, 'pool_a', 'curtains1', 17, 11, 0, 0, 19, 11, 0, '0'),
(2, 'pool_a', 'curtains2', 17, 9, 0, 0, 19, 9, 0, '0'),
(5, 'md_a', 'curtains1', 8, 0, 0, 0, 8, 2, 0, '0'),
(6, 'md_a', 'curtains2', 9, 0, 0, 0, 9, 2, 0, '0'),
(3, 'pool_a', 'Splash0 enter', 20, 28, 21, 28, 22, 28, 0, '0'),
(4, 'pool_a', 'Splash0 exit', 21, 28, 20, 28, 19, 28, 0, '0'),
(7, 'md_a', 'Splash0 enter', 11, 11, 12, 12, 13, 12, 0, '0'),
(8, 'md_a', 'Splash0 exit', 12, 12, 11, 11, 10, 11, 0, '0'),
(9, 'pool_b', 'door', 0, 0, 0, 0, 0, 0, 0, '0'),
(10, 'pool_b', 'Splash0 enter', 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 'pool_b', 'Splash0 enter', 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `room_rights`
--

CREATE TABLE IF NOT EXISTS `room_rights` (
  `roomid` int(11) NOT NULL,
  `userid` int(10) NOT NULL,
  KEY `index` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_rights`
--


-- --------------------------------------------------------

--
-- Table structure for table `room_votes`
--

CREATE TABLE IF NOT EXISTS `room_votes` (
  `roomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `vote` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `room_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `soundmachine_playlists`
--

CREATE TABLE IF NOT EXISTS `soundmachine_playlists` (
  `machineid` int(10) NOT NULL,
  `songid` int(10) NOT NULL,
  `pos` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `soundmachine_playlists`
--


-- --------------------------------------------------------

--
-- Table structure for table `soundmachine_songs`
--

CREATE TABLE IF NOT EXISTS `soundmachine_songs` (
  `id` int(10) NOT NULL auto_increment,
  `userid` int(10) NOT NULL,
  `title` varchar(100) collate latin1_general_ci NOT NULL,
  `machineid` int(10) NOT NULL,
  `length` int(3) NOT NULL,
  `data` text collate latin1_general_ci NOT NULL,
  `burnt` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `soundmachine_songs`
--


-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `onlinecount` int(3) NOT NULL default '0',
  `onlinecount_peak` int(10) NOT NULL,
  `connections_accepted` int(10) NOT NULL,
  `activerooms` int(10) NOT NULL,
  `activerooms_peak` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`onlinecount`, `onlinecount_peak`, `connections_accepted`, `activerooms`, `activerooms_peak`) VALUES
(0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_chatlog`
--

CREATE TABLE IF NOT EXISTS `system_chatlog` (
  `username` varchar(15) collate latin1_general_ci NOT NULL,
  `roomid` int(10) NOT NULL,
  `mtime` time NOT NULL default '00:00:00',
  `message` varchar(200) collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system_chatlog`
--

INSERT INTO `system_chatlog` (`username`, `roomid`, `mtime`, `message`) VALUES
('Waffles4Lunch', 132, '13:27:19', ':grill'),
('aspeedy101', 0, '17:10:41', 'crasg'),
('aspeedy101', 0, '17:10:47', 'sadad'),
('aspeedy101', 0, '17:19:45', 'YAYA!!!!!'),
('aspeedy101', 0, '17:19:59', 'WOOT'),
('aspeedy101', 0, '17:20:03', 'HEEH'),
('aspeedy101', 0, '17:20:17', 'HJH'),
('aspeedy101', 124, '17:20:33', 'FGFGFG'),
('aspeedy101', 124, '17:21:48', 'SADSAD'),
('aspeedy101', 124, '17:21:50', 'FGHFG'),
('aspeedy101', 124, '17:25:30', 'aDASFS'),
('aspeedy101', 124, '17:43:15', 'FAFASF'),
('aspeedy101', 124, '17:43:19', 'FSAFA'),
('aspeedy101', 124, '17:43:22', 'SDAD'),
('aspeedy101', 124, '17:43:25', 'SADDAS'),
('aspeedy101', 124, '17:49:01', 'dadas'),
('aspeedy101', 124, '21:30:32', 'dsda'),
('aspeedy101', 124, '21:30:36', 'dssadas'),
('aspeedy101', 124, '21:30:40', 'sdasdaa'),
('aspeedy101', 0, '21:31:03', 'sddas'),
('aspeedy101', 0, '21:31:06', 'sdadsd'),
('aspeedy101', 124, '21:41:52', 'sadas'),
('aspeedy101', 124, '21:41:55', 'dsadsa'),
('aspeedy101', 124, '21:41:58', 'aspeedy101 dsasd'),
('aspeedy101', 124, '21:42:00', 'aspeedy101 sdasda'),
('aspeedy101', 124, '21:42:03', 'aspeedy101 sddsdsads'),
('aspeedy101', 124, '21:47:23', 'fafsa'),
('aspeedy101', 124, '21:47:26', 'aspeedy101 safsaf'),
('aspeedy101', 124, '21:47:34', 'aspeedy101 zzomg'),
('aspeedy101', 124, '21:47:42', 'dasdas'),
('aspeedy101', 124, '21:47:44', 'dsada'),
('aspeedy101', 0, '21:48:33', 'dsada'),
('aspeedy101', 0, '21:48:35', ' dsasad'),
('aspeedy101', 0, '21:48:39', 'daaw'),
('aspeedy101', 0, '21:48:44', 'sdasdasda'),
('aspeedy101', 124, '08:13:29', 'fgsd'),
('aspeedy101', 124, '08:13:33', 'agsaf'),
('aspeedy101', 124, '08:13:41', 'ASpeedy101 sadsad'),
('aspeedy101', 124, '08:13:50', 'aspeedy101 hi?'),
('aspeedy101', 124, '08:14:17', 'fdgfdg'),
('aspeedy101', 124, '08:14:20', 'fdfggffgfgfggdggg'),
('aspeedy101', 124, '08:28:56', 'dsdas'),
('aspeedy101', 124, '08:28:59', 'dsaasdsad'),
('aspeedy101', 124, '08:29:04', 'sdasd'),
('aspeedy101', 124, '08:29:08', 'dsasdsdds'),
('aspeedy101', 124, '08:29:15', 'OMG!!!'),
('aspeedy101', 124, '08:29:38', 'shit!'),
('aspeedy101', 124, '08:29:41', 'sgfsfsdfdsf'),
('aspeedy101', 124, '08:29:44', 'dsfdsf'),
('aspeedy101', 124, '08:29:53', 'dwadwadd'),
('aspeedy101', 124, '08:29:57', 'dwdaw'),
('aspeedy101', 124, '08:42:54', 'dadasds'),
('aspeedy101', 124, '08:42:57', 'ddasdsa'),
('aspeedy101', 124, '08:42:59', 'dsadsa'),
('aspeedy101', 124, '08:43:04', 'fcasd'),
('aspeedy101', 124, '08:45:04', 'sasdsd'),
('aspeedy101', 124, '08:45:09', 'sdasd'),
('aspeedy101', 124, '08:45:13', 'dssda'),
('aspeedy101', 124, '08:45:16', 'dsadsad'),
('aspeedy101', 124, '08:45:19', 'sdadsds'),
('aspeedy101', 0, '08:45:42', 'sddsadsa'),
('aspeedy101', 0, '08:45:45', 'dsdsadsa'),
('aspeedy101', 0, '08:46:33', 'dsada'),
('aspeedy101', 0, '08:46:38', 'dasdsad'),
('aspeedy101', 124, '08:50:14', 'sfasfafsas'),
('aspeedy101', 124, '08:50:16', 'asfasf'),
('aspeedy101', 0, '08:50:33', 'sffs'),
('aspeedy101', 124, '11:59:30', 'sfaasffsa'),
('aspeedy101', 124, '11:59:33', 'sfasaf'),
('aspeedy101', 124, '11:59:35', 'sfasaf'),
('aspeedy101', 124, '12:06:30', 'OMG'),
('aspeedy101', 124, '12:06:34', 'YYY'),
('aspeedy101', 124, '12:06:38', 'FFFFFUCK'),
('aspeedy101', 124, '12:06:41', 'Hai'),
('aspeedy101', 124, '12:09:38', 'wasfsaf'),
('aspeedy101', 124, '12:09:42', 'dsasds'),
('aspeedy101', 124, '12:09:46', 'sdasdds'),
('aspeedy101', 124, '12:09:53', 'ZOMG'),
('aspeedy101', 124, '12:11:29', 'omg'),
('aspeedy101', 124, '12:12:55', 'OMG!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'),
('aspeedy101', 124, '12:31:47', 'BLAH BLAH BLAH!!!'),
('aspeedy101', 124, '15:51:37', 'gfnnnnnnnnnn'),
('aspeedy101', 124, '15:51:39', 'g'),
('aspeedy101', 124, '15:51:43', 'mgjdj'),
('aspeedy101', 124, '15:51:43', 'ddj'),
('aspeedy101', 124, '15:51:47', 'fddsffdsf');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE IF NOT EXISTS `system_config` (
  `id` int(10) NOT NULL auto_increment,
  `skey` varchar(100) collate latin1_general_ci NOT NULL,
  `sval` text collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `skey`, `sval`) VALUES
(1, 'server_game_port', '1232'),
(2, 'server_game_maxconnections', '400'),
(4, 'server_mus_port', '22'),
(5, 'server_mus_maxconnections', '500'),
(6, 'server_mus_host', '24.72.31.99'),
(3, 'server_game_backlog', '25000'),
(7, 'server_mus_backlog', '5000'),
(8, 'lang', 'en'),
(9, 'welcomemessage_enable', '0'),
(10, 'wordfilter_enable', '1'),
(11, 'wordfilter_censor', 'bobba'),
(12, 'chatanims_enable', '1'),
(13, 'trading_enable', '1'),
(14, 'recycler_enable', '1'),
(15, 'recycler_minownertime', '43200'),
(16, 'recycler_session_length', '60'),
(17, 'recycler_session_expirelength', '10080'),
(18, 'rooms_loadadvertisement_img', 'http://ads.habbohotel.co.uk/max/adview.php?zoneid=325&n=hhuk'),
(19, 'rooms_loadadvertisement_uri', 'http://www.holographemulator.com/'),
(20, 'statuses_wave_duration', '1500'),
(21, 'statuses_carryitem_sipamount', '10'),
(22, 'statuses_carryitem_sipinterval', '9000'),
(23, 'statuses_carryitem_sipduration', '1000'),
(24, 'rooms_roomban_duration', '15'),
(25, 'items_stacking_maxstackheight', '20'),
(28, 'navigator_roomsearch_maxresults', '30'),
(27, 'navigator_createroom_maxrooms', '50'),
(26, 'events_categorycount', '11'),
(29, 'navigator_opencategory_maxresults', '30'),
(30, 'navigator_favourites_maxrooms', '30'),
(31, 'events_deadevents_removeinterval', '120'),
(32, 'soundmachine_burntodisk_disktid', '1355'),
(35, 'game_bb_gamelength_seconds', '180'),
(34, 'game_scorewindow_restartgame_seconds', '1200'),
(33, 'game_countdown_seconds', '15'),
(36, 'spectator_bar_enabled', '0');

-- --------------------------------------------------------

--
-- Table structure for table `system_fuserights`
--

CREATE TABLE IF NOT EXISTS `system_fuserights` (
  `id` int(3) NOT NULL auto_increment,
  `minrank` int(1) NOT NULL,
  `fuseright` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`id`,`fuseright`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `system_fuserights`
--

INSERT INTO `system_fuserights` (`id`, `minrank`, `fuseright`) VALUES
(1, 1, 'default'),
(2, 1, 'fuse_login'),
(3, 1, 'fuse_buy_credits'),
(4, 1, 'fuse_trade'),
(5, 1, 'fuse_room_queue_default'),
(6, 2, 'fuse_extended_buddylist'),
(7, 2, 'fuse_habbo_chooser'),
(8, 2, 'fuse_furni_chooser'),
(9, 2, 'fuse_room_queue_club'),
(10, 2, 'fuse_priority_access'),
(11, 2, 'fuse_use_special_room_layouts'),
(12, 2, 'fuse_use_club_dance'),
(13, 3, 'fuse_enter_full_rooms'),
(14, 4, 'fuse_enter_locked_rooms'),
(16, 4, 'fuse_kick'),
(17, 4, 'fuse_mute'),
(18, 5, 'fuse_ban'),
(19, 5, 'fuse_room_mute'),
(20, 5, 'fuse_room_kick'),
(21, 5, 'fuse_receive_calls_for_help'),
(22, 5, 'fuse_remove_stickies'),
(23, 6, 'fuse_mod'),
(24, 6, 'fuse_superban'),
(25, 6, 'fuse_pick_up_any_furni'),
(26, 6, 'fuse_ignore_room_owner'),
(27, 6, 'fuse_any_room_controller'),
(28, 3, 'fuse_room_alert'),
(29, 6, 'fuse_moderator_access'),
(30, 7, 'fuse_administrator_access'),
(31, 7, 'fuse_see_flat_ids'),
(35, 5, 'fuse_chat_log'),
(33, 6, 'fuse_performance_panel'),
(34, 4, 'fuse_alert'),
(36, 5, 'fuse_see_all_roomowners'),
(37, 6, 'fuse_hotelalert'),
(38, 6, 'fuse_teleport'),
(39, 7, 'fuse_guide'),
(40, 7, 'fuse_freeze'),
(41, 6, 'fuse_chat_log');

-- --------------------------------------------------------

--
-- Table structure for table `system_recycler`
--

CREATE TABLE IF NOT EXISTS `system_recycler` (
  `rclr_cost` int(5) NOT NULL,
  `rclr_reward` int(10) NOT NULL,
  PRIMARY KEY  (`rclr_cost`,`rclr_reward`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system_recycler`
--


-- --------------------------------------------------------

--
-- Table structure for table `system_stafflog`
--

CREATE TABLE IF NOT EXISTS `system_stafflog` (
  `id` int(5) NOT NULL auto_increment,
  `action` varchar(12) collate latin1_general_ci NOT NULL,
  `message` text collate latin1_general_ci,
  `note` text collate latin1_general_ci,
  `userid` int(11) NOT NULL,
  `targetid` int(11) default NULL,
  `timestamp` varchar(50) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `system_stafflog`
--

INSERT INTO `system_stafflog` (`id`, `action`, `message`, `note`, `userid`, `targetid`, `timestamp`) VALUES
(1, 'Housekeeping', 'aspeedy101 authenticated from 127.0.0.1', 'login.php', 1, 0, '12-12-2008 22:13:05'),
(2, 'Housekeeping', 'Updated CMS Settings (Loader Configuration)', 'loader.php', 1, 0, '12-12-2008 22:25:19'),
(3, 'Housekeeping', 'Updated Server Settings (General Configuration)', 'server.php', 1, 0, '12-12-2008 22:25:35'),
(4, 'Housekeeping', 'aspeedy101 authenticated from 127.0.0.1', 'login.php', 1, 0, '13-12-2008 17:24:32'),
(5, 'Housekeeping', 'Waffles4Lunch authenticated from 127.0.0.1', 'login.php', 2, 0, '14-12-2008 13:19:42'),
(6, 'ralert', 'assmunches', '', 2, 132, '12/14/2008 1:29:40 PM'),
(7, 'alert', 'Hai Clavin SHUT THE FAK UP!!!', '', 2, 2, '12/14/2008 1:30:03 PM'),
(8, 'Housekeeping', 'Updated CMS Settings (Loader Configuration)', 'loader.php', 2, 0, '14-12-2008 14:17:23'),
(9, 'Housekeeping', 'aspeedy101 authenticated from 127.0.0.1', 'login.php', 1, 0, '15-12-2008 17:08:12'),
(10, 'Housekeeping', 'Updated Server Settings (General Configuration)', 'server.php', 1, 0, '15-12-2008 17:08:39'),
(11, 'Housekeeping', 'Updated CMS Settings (Loader Configuration)', 'loader.php', 1, 0, '15-12-2008 17:09:02'),
(12, 'Housekeeping', 'aspeedy101 authenticated from 127.0.0.1', 'login.php', 1, 0, '16-12-2008 12:07:41'),
(13, 'Housekeeping', 'Updated CMS Settings (Loader Configuration)', 'loader.php', 1, 0, '16-12-2008 12:08:30'),
(14, 'Housekeeping', 'aspeedy101 authenticated from 127.0.0.1', 'login.php', 1, 0, '16-12-2008 15:52:06'),
(15, 'Housekeeping', 'Updated CMS Settings (Loader Configuration)', 'loader.php', 1, 0, '16-12-2008 15:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `system_strings`
--

CREATE TABLE IF NOT EXISTS `system_strings` (
  `id` int(5) NOT NULL auto_increment,
  `stringid` varchar(100) collate latin1_general_ci NOT NULL default 'null',
  `var_en` text collate latin1_general_ci,
  `var_de` text collate latin1_general_ci,
  `var_nl` text collate latin1_general_ci,
  PRIMARY KEY  (`id`,`stringid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `system_strings`
--

INSERT INTO `system_strings` (`id`, `stringid`, `var_en`, `var_de`, `var_nl`) VALUES
(1, 'console_onhotelview', 'On Hotel View', 'auf Hotelansicht', 'In hoteloverzicht'),
(2, 'modtool_accesserror', 'Sorry, but you do not have access to this feature of the MOD-Tool.\\rIf you think you should have access to this feature, then please contact the Hotel staff.\\rIf not, gtfo.', NULL, 'Sorry, but you do not have access to this feature of the MOD-Tool.\\rIf you think you should have access to this feature, then please contact the Hotel staff.\\rIf not, gtfo.'),
(3, 'modtool_actionfail', 'Action failed.', NULL, 'Command mislukt'),
(4, 'modtool_rankerror', 'You do not have the rights for this action on this user!', NULL, 'You do not have the rights for this action on this user!'),
(5, 'modtool_usernotfound', 'Probably the user is offline or does not exist.', NULL, 'Probably the user is offline or does not exist.'),
(6, 'room_rightsreset', 'The roomowner has reset all the roomrights.<br>Please re-enter the room.', NULL, 'The roomowner has reset all the roomrights.<br>Please re-enter the room.'),
(7, 'trading_disabled', 'Sorry, but the Hotel staff has disabled trading.\\rPlease try later!', NULL, 'Sorry, de hotel staff heeft ruilen uitgezet'),
(8, 'trading_nottradeable', 'Sorry, but you can''t trade this item!', NULL, 'Sorry, je kan dit niet ruilen'),
(9, 'welcomemessage_text', 'Welcome to JeesticLive, enjoy V25!', NULL, 'Koop nog geen landscape (error) (console werkt buggy) KIjk op het nieuws voor de album'),
(10, 'console_inpublicroom', 'In Public Room', NULL, 'In openbare ruimte'),
(11, 'room_stafflocked', 'Sorry, but only Staff is allowed to enter this room.', NULL, 'Sorry, but only Staff is allowed to enter this room.'),
(12, 'room_full', 'Sorry, but this publicroom is full.', NULL, 'Sorry, but this publicroom is full.'),
(13, 'room_infobus_closed', 'Sorry, but the Infobus is closed at the moment.', NULL, 'Sorry, but the Infobus is closed at the moment.'),
(14, 'scommand_hotelalert', 'Message from the Hotel management:', NULL, 'Bericht van het beheer van het Hotel:'),
(15, 'scommand_failed', 'Unable to process speech command.\r\nCheck your parameters and/or make sure that the target user is in room. (if any)', NULL, 'Unable to process speech command.\r\nCheck your parameters and/or make sure that the target user is in room. (if any)'),
(16, 'scommand_success', 'Speech command processed, action performed.', NULL, 'Verwerkte het bevel van de toespraak, uitgevoerde actie.'),
(17, 'scommand_muted', 'You have been muted for the following reason:', '', 'U bent gedempt om de volgende reden:'),
(18, 'scommand_unmuted', 'You have been unmuted.', '', 'U bent unmuted geweest.'),
(19, 'scommand_rankalert', 'Message from a staffmember with same rank:', NULL, 'Bericht van een staffmember met zelfde rang:'),
(20, 'banreport_header', 'Ban report for', NULL, 'Ban rapport voor'),
(21, 'common_userrank', 'Rank', NULL, 'Rang'),
(22, 'common_ip', 'IP address', NULL, 'Ip adres'),
(23, 'banreport_banner', 'Banned by', NULL, 'Verbannen bij'),
(24, 'banreport_posted', 'Date of ban posting', NULL, 'Datum van ban lengte'),
(25, 'banreport_expires', 'Date of ban expire', NULL, 'De datum van verbod verloopt'),
(29, 'banreport_affectedusernames', 'Usernames affected by this ban', NULL, 'Deze mensen zijn ook verbannen'),
(26, 'banreport_reason', 'Reason', NULL, 'Reden'),
(27, 'banreport_ipbanflag', 'IP ban applied', NULL, 'IP ban applied'),
(28, 'banreport_staffnote', 'Staff note from banner', NULL, 'Staff bericht van banner'),
(29, 'userinfo_header', 'Virtual user information', NULL, 'Gebruiksinfomatie'),
(30, 'userinfo_accesserror', 'Sorry, but you haven''t got access to this user''s details.\r\n- It can be possible that the user doesn''t exist\r\n- It can be possible that the user has got a higher rank than you', NULL, 'Sorry, but you haven''t got access to this user''s details.\r\n- It can be possible that the user doesn''t exist\r\n- It can be possible that the user has got a higher rank than you'),
(31, 'common_usernotfound', 'The user was not found.', NULL, 'Deze gebruiker is niet gevonden'),
(32, 'common_userid', 'User ID', NULL, 'GebruikersID'),
(33, 'common_username', 'Username', NULL, 'Gebruikersnaam'),
(34, 'common_usermission', 'Mission', NULL, 'Missie'),
(35, 'common_email', 'Email address', NULL, 'Emailadres'),
(36, 'common_credits', 'Credits', NULL, 'Credits'),
(37, 'common_tickets', 'Tickets', NULL, 'Tickets'),
(38, 'common_birth', 'Birth date', NULL, 'Geboortedatum'),
(39, 'common_hbirth', 'Registered at', NULL, 'Registeerd bij'),
(40, 'common_online', 'Online', NULL, 'Online'),
(41, 'common_yes', 'Yes', NULL, 'Ja'),
(42, 'common_no', 'No', NULL, 'Nee'),
(43, 'common_location', 'Location', NULL, 'Locatie'),
(44, 'common_owner', 'Owner', NULL, 'Eigenaar'),
(45, 'common_room', 'Room', NULL, 'Kamer'),
(46, 'common_hotelview', 'Hotel View', NULL, 'Hotel overzicht'),
(47, 'common_lastaccess', 'Last access', NULL, 'Laaste inlog'),
(48, 'cfh_picked_up', 'Picked up', NULL, 'Opgepakt');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(15) NOT NULL auto_increment,
  `name` varchar(50) collate latin1_general_ci NOT NULL,
  `password` varchar(100) collate latin1_general_ci NOT NULL,
  `rank` int(1) NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `birth` varchar(100) collate latin1_general_ci NOT NULL,
  `hbirth` varchar(100) collate latin1_general_ci NOT NULL,
  `figure` varchar(150) collate latin1_general_ci NOT NULL,
  `sex` varchar(5) collate latin1_general_ci NOT NULL,
  `mission` varchar(50) collate latin1_general_ci default NULL,
  `consolemission` varchar(50) collate latin1_general_ci default NULL,
  `credits` int(7) NOT NULL default '0',
  `tickets` int(5) NOT NULL default '0',
  `badge_status` enum('0','1') collate latin1_general_ci NOT NULL default '1',
  `lastvisit` varchar(50) collate latin1_general_ci default NULL,
  `figure_swim` varchar(100) collate latin1_general_ci default NULL,
  `user` text collate latin1_general_ci,
  `postcount` bigint(20) NOT NULL default '0',
  `ticket_sso` varchar(39) collate latin1_general_ci default NULL,
  `ipaddress_last` varchar(100) collate latin1_general_ci default NULL,
  `noob` int(1) NOT NULL default '0',
  `online` mediumint(30) NOT NULL default '1',
  `bb_totalpoints` int(30) default '0',
  `bb_playedgames` int(30) default '0',
  `screen` varchar(100) collate latin1_general_ci default NULL,
  `rea` varchar(100) collate latin1_general_ci default NULL,
  `gift` smallint(2) default NULL,
  `sort` smallint(1) default NULL,
  `roomid` int(15) default NULL,
  `lastgift` smallint(2) default NULL,
  `visibility` int(1) default '1',
  `hc_before` int(1) default NULL,
  `guideavailable` int(1) NOT NULL,
  `shockwaveid` text collate latin1_general_ci NOT NULL,
  `guide` int(1) NOT NULL,
  `guide-allowed` int(1) NOT NULL,
  `window` int(3) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE IF NOT EXISTS `users_badges` (
  `userid` int(15) NOT NULL,
  `badgeid` varchar(5) collate latin1_general_ci NOT NULL default '',
  `iscurrent` enum('0','1') collate latin1_general_ci NOT NULL default '0',
  `slotid` varchar(255) collate latin1_general_ci NOT NULL default '0',
  `badge` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`userid`,`badgeid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users_badges`
--

INSERT INTO `users_badges` (`userid`, `badgeid`, `iscurrent`, `slotid`, `badge`) VALUES
(2, 'HC1', '1', '0', NULL),
(1, 'HC1', '1', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badgescur`
--

CREATE TABLE IF NOT EXISTS `users_badgescur` (
  `userid` int(15) NOT NULL,
  `badge1` varchar(5) character set latin1 collate latin1_general_ci NOT NULL,
  `badge2` varchar(5) character set latin1 collate latin1_general_ci NOT NULL,
  `badge3` varchar(5) character set latin1 collate latin1_general_ci NOT NULL,
  `badge4` varchar(5) character set latin1 collate latin1_general_ci NOT NULL,
  `badge5` varchar(5) character set latin1 collate latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_badgescur`
--

INSERT INTO `users_badgescur` (`userid`, `badge1`, `badge2`, `badge3`, `badge4`, `badge5`) VALUES
(1, '', '', '', '', ''),
(2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_bans`
--

CREATE TABLE IF NOT EXISTS `users_bans` (
  `userid` varchar(30) collate latin1_general_ci NOT NULL default '',
  `ipaddress` varchar(100) collate latin1_general_ci default NULL,
  `date_expire` varchar(50) collate latin1_general_ci default NULL,
  `descr` text collate latin1_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users_bans`
--


-- --------------------------------------------------------

--
-- Table structure for table `users_club`
--

CREATE TABLE IF NOT EXISTS `users_club` (
  `userid` bigint(6) NOT NULL,
  `months_expired` int(4) default NULL,
  `months_left` int(4) default NULL,
  `date_monthstarted` varchar(25) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users_club`
--


-- --------------------------------------------------------

--
-- Table structure for table `users_favouriterooms`
--

CREATE TABLE IF NOT EXISTS `users_favouriterooms` (
  `userid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users_favouriterooms`
--


-- --------------------------------------------------------

--
-- Table structure for table `users_recycler`
--

CREATE TABLE IF NOT EXISTS `users_recycler` (
  `userid` int(10) NOT NULL,
  `session_started` varchar(100) collate latin1_general_ci NOT NULL,
  `session_reward` int(10) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users_recycler`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_ignores`
--

CREATE TABLE IF NOT EXISTS `user_ignores` (
  `userid` int(10) NOT NULL,
  `targetid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ignores`
--


-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE IF NOT EXISTS `vouchers` (
  `voucher` varchar(20) collate latin1_general_ci NOT NULL,
  `type` enum('item','credits') collate latin1_general_ci NOT NULL default 'credits',
  `credits` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`voucher`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `vouchers`
--


-- --------------------------------------------------------

--
-- Table structure for table `wordfilter`
--

CREATE TABLE IF NOT EXISTS `wordfilter` (
  `word` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `wordfilter`
--

/*
HoloShop Database
*/

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE `catalogue_items` ADD `picture` VARCHAR( 20 ) NULL DEFAULT 'placeholder.gif' AFTER `recycleable`;

-- ----------------------------
-- Table structure for cms_badge_shop
-- ----------------------------
CREATE TABLE `cms_badge_shop` (
  `id` int(11) NOT NULL auto_increment,
  `image` varchar(255) NOT NULL,
  `cost` int(11) default '1',
  `minrank` int(11) default '1',
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `enabled` varchar(1) default '1',
  `category` varchar(255) default NULL,
  `null1` varchar(255) default NULL,
  `null2` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=651 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `cms_badge_shop` VALUES ('11', 'ADM', '1', '1', 'ADM', 'ADM - (Admin) Habbo staff badge (all hotels) - now also in Badges directory. &#8216;S01&#8217; in China hotel.', '1', 'General', 'ADM', null);
INSERT INTO `cms_badge_shop` VALUES ('12', 'HBA', '1', '1', 'HBA', 'HBA - Hobba badge (in the past, all hotels). Hobba\'s were like HabboX, but with some moderating powers. Removed from most hotels, only Japan still had them for a while.', '1', 'General', 'HBA', null);
INSERT INTO `cms_badge_shop` VALUES ('13', 'NWB', '1', '1', 'NWB', 'NWB - (Newbie) Starting/silver hobba (in the past, all hotels).', '1', 'General', 'NWB', null);
INSERT INTO `cms_badge_shop` VALUES ('14', 'EXH', '1', '1', 'EXH', 'EXH - (EX Hobba) After elimination of hobba&#8217;s, for a year theirs (not all hotels).', '1', 'General', 'EXH', null);
INSERT INTO `cms_badge_shop` VALUES ('15', 'VIP', '1', '1', 'VIP', 'VIP - Very Important Person, for visiting celebreties and other emergencies (all hotels). Singapore uses it for infobus staff.', '1', 'General', 'VIP', null);
INSERT INTO `cms_badge_shop` VALUES ('16', 'PRE', '1', '1', 'PRE', 'PRE - &#8216;Press&#8217; badge (all hotels). For temporarily occasions.', '1', 'General', 'PRE', null);
INSERT INTO `cms_badge_shop` VALUES ('17', 'FAN', '1', '1', 'FAN', 'FAN - (UK, FI, more) Badge for max 2 &#8216;owners&#8217; (Singapore: 5) of official fansites. &#8216;FS1&#8217; in China hotel.', '1', 'General', 'FAN', null);
INSERT INTO `cms_badge_shop` VALUES ('18', 'HH1', '1', '1', 'HH1', 'HH1 - Habbo Homes badge. In Finland for most popular Habbo homepage of last week.', '1', 'General', 'HH1', null);
INSERT INTO `cms_badge_shop` VALUES ('19', 'HC1', '1', '1', 'HC1', 'HC1 - Habbo Club badge (all hotels - now also in directory).', '1', 'General', 'HC1', null);
INSERT INTO `cms_badge_shop` VALUES ('20', 'HC1_new', '1', '1', 'HC1', 'HC1 - new version, to replace old (only in album1584 for now)?', '1', 'General', 'HC1_new', null);
INSERT INTO `cms_badge_shop` VALUES ('21', 'HC2', '1', '1', 'HC2', 'HC2 - 12 Months Habbo Club badge (all hotels - now also in directory).', '1', 'General', 'HC2', null);
INSERT INTO `cms_badge_shop` VALUES ('22', 'HC2_new', '1', '1', 'HC2', 'HC2 - new version, to replace old (only in album1584 for now)?', '1', 'General', 'HC2_new', null);
INSERT INTO `cms_badge_shop` VALUES ('23', 'HC3', '1', '1', 'HC3', 'HC3 - New Habbo Club badge. For being member for three years.', '1', 'General', 'HC3', null);
INSERT INTO `cms_badge_shop` VALUES ('24', 'HC4', '1', '1', 'HC4', 'HC4 - New Habbo Club badge. For being member for four years.', '1', 'General', 'HC4', null);
INSERT INTO `cms_badge_shop` VALUES ('25', 'HC5', '1', '1', 'HC5', 'HC5 - New Habbo Club badge. For being member for five years.', '1', 'General', 'HC5', null);
INSERT INTO `cms_badge_shop` VALUES ('26', 'XXX', '1', '1', 'XXX', 'XXX - HabboX (all hotels, except Spain (LLL there)). Voluntary hotelguides.', '1', 'General', 'XXX', null);
INSERT INTO `cms_badge_shop` VALUES ('27', 'HX1', '1', '1', 'HX1', 'HX1 - HabboX new style, &#8216;Host HabboX&#8217; (most like old style HabboX, welcome and guide new players).', '1', 'General', 'HX1', null);
INSERT INTO `cms_badge_shop` VALUES ('28', 'HX2', '1', '1', 'HX2', 'HX2 - HabboX new style, &#8216;Safety HabboX&#8217;.', '1', 'General', 'HX2', null);
INSERT INTO `cms_badge_shop` VALUES ('29', 'HX3', '1', '1', 'HX3', 'HX3 - HabboX new style, &#8216;Tech HabboX&#8217; (also fansites (in what way ?)).', '1', 'General', 'HX3', null);
INSERT INTO `cms_badge_shop` VALUES ('30', 'HX4', '1', '1', 'HX4', 'HX4 - HabboX new style, &#8216;Game HabboX&#8217; - for habboX&#8217;s that host a game, or, some hotels, for &#8216;Game HabboX&#8217;.', '1', 'General', 'HX4', null);
INSERT INTO `cms_badge_shop` VALUES ('31', 'HX5', '1', '1', 'HX5', 'HX5 - (Optional) badge for subteam leader(s) of the Host habboX group.', '1', 'General', 'HX5', null);
INSERT INTO `cms_badge_shop` VALUES ('32', 'HX6', '1', '1', 'HX6', 'HX6 - (Optional) badge for subteam leader(s) of the Safety habboX group.', '1', 'General', 'HX6', null);
INSERT INTO `cms_badge_shop` VALUES ('33', 'HX7', '1', '1', 'HX7', 'HX7 - (Optional) badge for subteam leader(s) of the Tech habboX group.', '1', 'General', 'HX7', null);
INSERT INTO `cms_badge_shop` VALUES ('34', 'HX8', '1', '1', 'HX8', 'HX8 - (Optional) badge for subteam leader(s) of the Game habboX group.', '1', 'General', 'HX8', null);
INSERT INTO `cms_badge_shop` VALUES ('35', 'HX9', '1', '1', 'HX9', 'HX9 - (Optional) badge for team leader(s) of the whole habboX group. Assisting community manager in managing Habbo X&#8217;s.', '1', 'General', 'HX9', null);
INSERT INTO `cms_badge_shop` VALUES ('36', 'HG1', '1', '1', 'HG1', 'HG1 - Japanese habboX&#8217;s are called &#8216;Habbo Guide&#8217;. Also, in Singapore for Habbo X&#8217;s who are hosting an official game or event.', '1', 'General', 'HG1', null);
INSERT INTO `cms_badge_shop` VALUES ('37', 'JP1', '1', '1', 'JP1', 'JP1 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP1', null);
INSERT INTO `cms_badge_shop` VALUES ('38', 'JP2', '1', '1', 'JP2', 'JP2 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP2', null);
INSERT INTO `cms_badge_shop` VALUES ('39', 'JP3', '1', '1', 'JP3', 'JP3 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP3', null);
INSERT INTO `cms_badge_shop` VALUES ('40', 'JP4', '1', '1', 'JP4', 'JP4 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP4', null);
INSERT INTO `cms_badge_shop` VALUES ('41', 'JP5', '1', '1', 'JP5', 'JP5 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP5', null);
INSERT INTO `cms_badge_shop` VALUES ('42', 'JP6', '1', '1', 'JP6', 'JP6 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP6', null);
INSERT INTO `cms_badge_shop` VALUES ('43', 'JP7', '1', '1', 'JP7', 'JP7 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP7', null);
INSERT INTO `cms_badge_shop` VALUES ('44', 'JP8', '1', '1', 'JP8', 'JP8 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP8', null);
INSERT INTO `cms_badge_shop` VALUES ('45', 'JP9', '1', '1', 'JP9', 'JP9 - Japanese hotel has its own version of the new X&#8217;s setup.', '1', 'General', 'JP9', null);
INSERT INTO `cms_badge_shop` VALUES ('46', 'LLL', '1', '1', 'LLL', 'LLL - Spanish habboX&#8217;s are called &#8216;HabboL&#8217;.', '1', 'General', 'LLL', null);
INSERT INTO `cms_badge_shop` VALUES ('47', 'Z05', '1', '1', 'Z05', 'Z05 - Causing quite a stir online, people assuming - rightfully - this would be the end of the eXperts. It was.', '1', 'General', 'Z05', null);
INSERT INTO `cms_badge_shop` VALUES ('48', 'TC1', '1', '1', 'TC1', 'TC1 - &#8216;The Challenge&#8217;. Battle ball winners badge (all hotels). The China &#8216;BB1&#8217; badge (below) is a little different.', '1', 'General', 'TC1', null);
INSERT INTO `cms_badge_shop` VALUES ('49', 'TC2', '1', '1', 'TC2', 'TC2 - Wobble Squabble winners badge (all).', '1', 'General', 'TC2', null);
INSERT INTO `cms_badge_shop` VALUES ('50', 'TC3', '1', '1', 'TC3', 'TC3 - Snowstorm winners badge (all).', '1', 'General', 'TC3', null);
INSERT INTO `cms_badge_shop` VALUES ('51', 'BTB', '1', '1', 'BTB', 'BTB - Final Battleball ranking badge (when making game free).', '1', 'General', 'BTB', null);
INSERT INTO `cms_badge_shop` VALUES ('52', 'SNW', '1', '1', 'SNW', 'SNW - Final Snowstorm ranking badge (when making game free).', '1', 'General', 'SNW', null);
INSERT INTO `cms_badge_shop` VALUES ('53', 'WBL', '1', '1', 'WBL', 'WBL - Final Wobble Squabble ranking badge (but game isn&#8217;t made free ?).', '1', 'General', 'WBL', null);
INSERT INTO `cms_badge_shop` VALUES ('54', 'GLA', '1', '1', 'GLA', 'GLA - Guide level 1, Bunny.', '1', 'General', 'GLA', null);
INSERT INTO `cms_badge_shop` VALUES ('55', 'GLB', '1', '1', 'GLB', 'GLB - Guide level 2, Bambi.', '1', 'General', 'GLB', null);
INSERT INTO `cms_badge_shop` VALUES ('56', 'GLC', '1', '1', 'GLC', 'GLC - Guide level 3, Otter.', '1', 'General', 'GLC', null);
INSERT INTO `cms_badge_shop` VALUES ('57', 'GLD', '1', '1', 'GLD', 'GLD - Guide level 4, Badger.', '1', 'General', 'GLD', null);
INSERT INTO `cms_badge_shop` VALUES ('58', 'GLE', '1', '1', 'GLE', 'GLE - Guide level 5, Fox.', '1', 'General', 'GLE', null);
INSERT INTO `cms_badge_shop` VALUES ('59', 'GLF', '1', '1', 'GLF', 'GLF - Guide level 6, Lynx.', '1', 'General', 'GLF', null);
INSERT INTO `cms_badge_shop` VALUES ('60', 'GLG', '1', '1', 'GLG', 'GLG - Guide level 7, Buffalo.', '1', 'General', 'GLG', null);
INSERT INTO `cms_badge_shop` VALUES ('61', 'GLH', '1', '1', 'GLH', 'GLH - Guide level 8, Bear.', '1', 'General', 'GLH', null);
INSERT INTO `cms_badge_shop` VALUES ('62', 'GLI', '1', '1', 'GLI', 'GLI - Guide level 9, Eagle.', '1', 'General', 'GLI', null);
INSERT INTO `cms_badge_shop` VALUES ('63', 'GLJ', '1', '1', 'GLJ', 'GLJ - Guide level 10, Owl.', '1', 'General', 'GLJ', null);
INSERT INTO `cms_badge_shop` VALUES ('64', 'GLK', '1', '1', 'GLK', 'GLK - Guide level X, Wolf.', '1', 'General', 'GLK', null);
INSERT INTO `cms_badge_shop` VALUES ('65', 'DU1', '1', '1', 'DU1', 'DU1 - (Duck 1) Habbolympics and other sports influenced events around the world, gold medal.', '1', 'General', 'DU1', null);
INSERT INTO `cms_badge_shop` VALUES ('66', 'DU2', '1', '1', 'DU2', 'DU2 - (Duck 2) Habbolympics and other sports influenced events around the world, silver medal.', '1', 'General', 'DU2', null);
INSERT INTO `cms_badge_shop` VALUES ('67', 'DU3', '1', '1', 'DU3', 'DU3 - (Duck 3) Habbolympics and other sports influenced events around the world, bronze medal.', '1', 'General', 'DU3', null);
INSERT INTO `cms_badge_shop` VALUES ('68', 'GM1', '1', '1', 'GM1', 'GM1 - Diamond badge; for users that verified their email and followed link in newsletter (US, CA).', '1', 'General', 'GM1', null);
INSERT INTO `cms_badge_shop` VALUES ('69', 'GM2', '1', '1', 'GM2', 'GM2 - Emerald badge; for users that verified their email and followed link in newsletter (US, CA).', '1', 'General', 'GM2', null);
INSERT INTO `cms_badge_shop` VALUES ('70', 'GM3', '1', '1', 'GM3', 'GM3 - Sapphire badge. In Canada for users of habbos.net competition who signed in.', '1', 'General', 'GM3', null);
INSERT INTO `cms_badge_shop` VALUES ('71', 'GM4', '1', '1', 'GM4', 'GM4 - To be earned when entering &#8216;secret email submission&#8217; (when receiving newsletter), Canada only for now.', '1', 'General', 'GM4', null);
INSERT INTO `cms_badge_shop` VALUES ('72', 'GL1', '1', '1', 'GL1', 'GL1 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL1', null);
INSERT INTO `cms_badge_shop` VALUES ('73', 'GL2', '1', '1', 'GL2', 'GL2 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL2', null);
INSERT INTO `cms_badge_shop` VALUES ('74', 'GL3', '1', '1', 'GL3', 'GL3 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL3', null);
INSERT INTO `cms_badge_shop` VALUES ('75', 'GL4', '1', '1', 'GL4', 'GL4 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL4', null);
INSERT INTO `cms_badge_shop` VALUES ('76', 'GL5', '1', '1', 'GL5', 'GL5 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL5', null);
INSERT INTO `cms_badge_shop` VALUES ('77', 'GL6', '1', '1', 'GL6', 'GL6 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL6', null);
INSERT INTO `cms_badge_shop` VALUES ('78', 'GL7', '1', '1', 'GL7', 'GL7 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL7', null);
INSERT INTO `cms_badge_shop` VALUES ('79', 'GL8', '1', '1', 'GL8', 'GL8 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL8', null);
INSERT INTO `cms_badge_shop` VALUES ('80', 'GL9', '1', '1', 'GL9', 'GL9 - pre-phase Guide level badge. Removed.', '1', 'General', 'GL9', null);
INSERT INTO `cms_badge_shop` VALUES ('81', 'G10', '1', '1', 'G10', 'G10 - pre-phase Guide level badge. Removed.', '1', 'General', 'G10', null);
INSERT INTO `cms_badge_shop` VALUES ('82', 'PP1', '1', '1', 'PP1', 'PP1 - Unknown yet. Badge will have unintended transparent parts.', '1', 'General', 'PP1', null);
INSERT INTO `cms_badge_shop` VALUES ('83', 'WHY', '1', '1', 'WHY', 'WHY - Someone playing tricks with us ;).', '1', 'General', 'WHY', null);
INSERT INTO `cms_badge_shop` VALUES ('84', 'SU4', '1', '1', 'SU4', 'SU4 - ?', '1', 'General', 'SU4', null);
INSERT INTO `cms_badge_shop` VALUES ('85', 'CY1', '1', '1', 'CY1', 'CY1 - Yin-Yang symbol, part I.', '1', 'General', 'CY1', null);
INSERT INTO `cms_badge_shop` VALUES ('86', 'CY3', '1', '1', 'CY3', 'CY3 - Yin-Yang symbol, part III.', '1', 'General', 'CY3', null);
INSERT INTO `cms_badge_shop` VALUES ('87', 'DS0', '1', '1', 'DS0', 'DS0 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. This is the Space Academy badge (when winning several competitions).', '1', 'Campaign', 'DS0', null);
INSERT INTO `cms_badge_shop` VALUES ('88', 'DS1', '1', '1', 'DS1', 'DS1 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Planet &#8216;Omni TV&#8217; competition. Also used in the &#8216;Elementals Vs Warriors&#8217; (ecological awareness) campaign in UK.', '1', 'Campaign', 'DS1', null);
INSERT INTO `cms_badge_shop` VALUES ('89', 'DS2', '1', '1', 'DS2', 'DS2 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Planet and competition, often referred to as &#8220;Megamecha&#8221; (build a machine/robot).', '1', 'Campaign', 'DS2', null);
INSERT INTO `cms_badge_shop` VALUES ('90', 'DS3', '1', '1', 'DS3', 'DS3 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Planet and competition, referrred to as &#8220;01001001&#8221; or &#8220;Planet of the clones&#8221;.', '1', 'Campaign', 'DS3', null);
INSERT INTO `cms_badge_shop` VALUES ('91', 'DS4', '1', '1', 'DS4', 'DS4 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. &#8216;Hypersphere&#8217;/Battle ball competition.', '1', 'Campaign', 'DS4', null);
INSERT INTO `cms_badge_shop` VALUES ('92', 'DS5', '1', '1', 'DS5', 'DS5 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Planet and competition, referred to as &#8220;Bobbaria&#8221;.', '1', 'Campaign', 'DS5', null);
INSERT INTO `cms_badge_shop` VALUES ('93', 'DS6', '1', '1', 'DS6', 'DS6 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006, planet &#8216;Universum&#8217; competition.', '1', 'Campaign', 'DS6', null);
INSERT INTO `cms_badge_shop` VALUES ('94', 'DS7', '1', '1', 'DS7', 'DS7 - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Planet and competition, referred to as &#8220;Yggdrasil&#8221;. Also used in the &#8216;Elementals Vs Warriors&#8217; (ecological awareness) campaign in UK.', '1', 'Campaign', 'DS7', null);
INSERT INTO `cms_badge_shop` VALUES ('95', 'DSX', '1', '1', 'DSX', 'DSX - &#8216;Donnie Santini&#8217;s Space Explore&#8217;, 2006. Not used at the time, but used in UK for the &#8216;USA Roadtrip&#8217;, August 2008.', '1', 'Campaign', 'DSX', null);
INSERT INTO `cms_badge_shop` VALUES ('96', 'XM1', '1', '1', 'XM1', 'XM1 - Xmasbadge &#8216;Rasta santa&#8217;: christmas 2005, mostly used a clan signs or competition prize (not all hotels used all 3).', '1', 'Campaign', 'XM1', null);
INSERT INTO `cms_badge_shop` VALUES ('97', 'XM2', '1', '1', 'XM2', 'XM2 - Xmasbadge &#8216;The Bling&#8217;: christmas 2005, mostly used a clan signs or competition prize (not all hotels used all 3).', '1', 'Campaign', 'XM2', null);
INSERT INTO `cms_badge_shop` VALUES ('98', 'XM3', '1', '1', 'XM3', 'XM3 - Xmasbadge &#8216;Reindeer&#8217;: christmas 2005, mostly used a clan signs or competition prize (not all hotels used all 3).', '1', 'Campaign', 'XM3', null);
INSERT INTO `cms_badge_shop` VALUES ('99', 'XM4', '1', '1', 'XM4', 'XM4 - Christmas 2006, in most hotels awarded for free if you logged in in december.', '1', 'Campaign', 'XM4', null);
INSERT INTO `cms_badge_shop` VALUES ('100', 'XM5', '1', '1', 'XM5', 'XM5 - Christmas 2007. Related to 1st Christmas boss, Smilla.', '1', 'Campaign', 'XM5', null);
INSERT INTO `cms_badge_shop` VALUES ('101', 'XM6', '1', '1', 'XM6', 'XM6 - Christmas 2007. Related to 2nd Christmas boss, Santa.3000.', '1', 'Campaign', 'XM6', null);
INSERT INTO `cms_badge_shop` VALUES ('102', 'XM7', '1', '1', 'XM7', 'XM7 - Christmas 2007. Related to 3rd Christmas boss, Sinister.', '1', 'Campaign', 'XM7', null);
INSERT INTO `cms_badge_shop` VALUES ('103', 'XM8', '1', '1', 'XM8', 'XM8 - Christmas 2007. Related to 4th Christmas boss, Bob(by) (or Larry, or Henk).', '1', 'Campaign', 'XM8', null);
INSERT INTO `cms_badge_shop` VALUES ('104', 'XM7_old', '1', '1', 'XM7', 'XM7 - The XM7 badge in album1584, used for habbo homes, is still the old, animated badge that didn&#8217;t work in hotel itself.', '1', 'Campaign', 'XM7_old', null);
INSERT INTO `cms_badge_shop` VALUES ('105', 'XM9', '1', '1', 'XM9', 'XM9 - Christmas 2008.', '1', 'Campaign', 'XM9', null);
INSERT INTO `cms_badge_shop` VALUES ('106', 'XMA', '1', '1', 'XMA', 'XMA - Christmas 2008.', '1', 'Campaign', 'XMA', null);
INSERT INTO `cms_badge_shop` VALUES ('107', 'XMB', '1', '1', 'XMB', 'XMB - Christmas 2008.', '1', 'Campaign', 'XMB', null);
INSERT INTO `cms_badge_shop` VALUES ('108', 'XMC', '1', '1', 'XMC', 'XMC - Christmas 2008. US only, or ?', '1', 'Campaign', 'XMC', null);
INSERT INTO `cms_badge_shop` VALUES ('109', 'VA1', '1', '1', 'VA1', 'VA1 - Valentine badge &#8216;Love Angelz&#8217; (some hotels).', '1', 'Campaign', 'VA1', null);
INSERT INTO `cms_badge_shop` VALUES ('110', 'VA2', '1', '1', 'VA2', 'VA2 - Valentine badge for those hit by &#8216;Love Angelz&#8217; (some hotels) and for competitions (other hotels).', '1', 'Campaign', 'VA2', null);
INSERT INTO `cms_badge_shop` VALUES ('111', 'VA3', '1', '1', 'VA3', 'VA3 - Valentine 2008, competition prize.', '1', 'Campaign', 'VA3', null);
INSERT INTO `cms_badge_shop` VALUES ('112', 'VA4', '1', '1', 'VA4', 'VA4 - Valentine 2008, for staff only to reflect they are crew on the love boat Habborella.', '1', 'Campaign', 'VA4', null);
INSERT INTO `cms_badge_shop` VALUES ('113', 'VA5', '1', '1', 'VA5', 'VA5 - Valentine 2008, competition prize used for ceremonies on the wedding deck (&#8230;).', '1', 'Campaign', 'VA5', null);
INSERT INTO `cms_badge_shop` VALUES ('114', 'HWB', '1', '1', 'HWB', 'HWB - (UK) Halloween competition badge.', '1', 'Campaign', 'HWB', null);
INSERT INTO `cms_badge_shop` VALUES ('115', 'WH1', '1', '1', 'WH1', 'WH1 - Halloween 2006. Also used in later years.', '1', 'Campaign', 'WH1', null);
INSERT INTO `cms_badge_shop` VALUES ('116', 'WH2', '1', '1', 'WH2', 'WH2 - Halloween 2006. Also used in later years.', '1', 'Campaign', 'WH2', null);
INSERT INTO `cms_badge_shop` VALUES ('117', 'WH3', '1', '1', 'WH3', 'WH3 - Halloween 2006. Also used in later years.', '1', 'Campaign', 'WH3', null);
INSERT INTO `cms_badge_shop` VALUES ('118', 'WH4', '1', '1', 'WH4', 'WH4 - Halloween 2006. Also used in later years.', '1', 'Campaign', 'WH4', null);
INSERT INTO `cms_badge_shop` VALUES ('119', 'WH5', '1', '1', 'WH5', 'WH5 - Halloween 2006. Also used in later years.', '1', 'Campaign', 'WH5', null);
INSERT INTO `cms_badge_shop` VALUES ('120', 'WH6', '1', '1', 'WH6', 'WH6 - Halloween 2008.', '1', 'Campaign', 'WH6', null);
INSERT INTO `cms_badge_shop` VALUES ('121', 'WH7', '1', '1', 'WH7', 'WH7 - Halloween 2008.', '1', 'Campaign', 'WH7', null);
INSERT INTO `cms_badge_shop` VALUES ('122', 'WH8', '1', '1', 'WH8', 'WH8 - Halloween 2008.', '1', 'Campaign', 'WH8', null);
INSERT INTO `cms_badge_shop` VALUES ('123', 'HW1', '1', '1', 'HW1', 'HW1 - Winnersbadge Habbowood (all hotels).', '1', 'Campaign', 'HW1', null);
INSERT INTO `cms_badge_shop` VALUES ('124', 'HF1', '1', '1', 'HF1', 'HF1 - (Habbo Football) World Championship Soccer 2006, for 11 position winners, each country.', '1', 'Campaign', 'HF1', null);
INSERT INTO `cms_badge_shop` VALUES ('125', 'HF2', '1', '1', 'HF2', 'HF2 - (Habbo Football) World Championship Soccer 2006, for 11 position winners globally.', '1', 'Campaign', 'HF2', null);
INSERT INTO `cms_badge_shop` VALUES ('126', 'AR1', '1', '1', 'AR1', 'AR1 - For campaign around introduction of Arabian furniture.', '1', 'Campaign', 'AR1', null);
INSERT INTO `cms_badge_shop` VALUES ('127', 'AR2', '1', '1', 'AR2', 'AR2 - For campaign around introduction of Arabian furniture.', '1', 'Campaign', 'AR2', null);
INSERT INTO `cms_badge_shop` VALUES ('128', 'MH1', '1', '1', 'MH1', 'MH1 - &#8216;Monsters of Habbo&#8217; international Metal related music festival.', '1', 'Campaign', 'MH1', null);
INSERT INTO `cms_badge_shop` VALUES ('129', 'MH2', '1', '1', 'MH2', 'MH2 - &#8216;Monsters of Habbo&#8217; international Metal related music festival.', '1', 'Campaign', 'MH2', null);
INSERT INTO `cms_badge_shop` VALUES ('130', 'SHA', '1', '1', 'SHA', 'SHA - &#8216;Shabbolin&#8217; campaign in France. But also uploaded as FRK, so maybe this is version to be used worldwide.', '1', 'Campaign', 'SHA', null);
INSERT INTO `cms_badge_shop` VALUES ('131', 'PIR', '1', '1', 'PIR', 'PIR - For pirate competition in UK and elsewhere, later on.', '1', 'Campaign', 'PIR', null);
INSERT INTO `cms_badge_shop` VALUES ('132', 'EXE', '1', '1', 'EXE', 'EXE - To be used with introduction of Executive furniture range, worldwide.', '1', 'Campaign', 'EXE', null);
INSERT INTO `cms_badge_shop` VALUES ('133', 'LEG', '1', '1', 'LEG', 'LEG - The return of LEGO. Campaign in Sweden &#38; Finland so far, for joining a related group.', '1', 'Campaign', 'LEG', null);
INSERT INTO `cms_badge_shop` VALUES ('134', 'SHK', '1', '1', 'SHK', 'SHK - &#8220;Shrek&#8221; badge, coming with promotion of part III (worldwide).', '1', 'Campaign', 'SHK', null);
INSERT INTO `cms_badge_shop` VALUES ('135', 'SB1', '1', '1', 'SB1', 'SB1 - Badge related to the &#8220;Streets of Bobba&#8221; competitions, as first launched in Germany. This one coming with the &#8220;Foxy Ball&#8221; BB playing character.', '1', 'Campaign', 'SB1', null);
INSERT INTO `cms_badge_shop` VALUES ('136', 'SB2', '1', '1', 'SB2', 'SB2 - Badge related to the &#8220;Streets of Bobba&#8221; competitions, as first launched in Germany. This one coming with the &#8220;Dino Bobbaschi&#8221; Italian character (plate of spaghetti, bomb and bloody in one).', '1', 'Campaign', 'SB2', null);
INSERT INTO `cms_badge_shop` VALUES ('137', 'SB3', '1', '1', 'SB3', 'SB3 - Badge related to the &#8220;Streets of Bobba&#8221; competitions, as first launched in Germany. This one coming with the &#8220;Jenny Kix&#8221; Asian character (red/yellow, symbol is actually a fist (kick)).', '1', 'Campaign', 'SB3', null);
INSERT INTO `cms_badge_shop` VALUES ('138', 'SB4', '1', '1', 'SB4', 'SB4 - Badge related to the &#8220;Streets of Bobba&#8221; competitions, as first launched in Germany. This one coming with the &#8220;Spike Sticker&#8221; punk character (F for Furnihilists).', '1', 'Campaign', 'SB4', null);
INSERT INTO `cms_badge_shop` VALUES ('139', 'GRR', '1', '1', 'GRR', 'GRR - Gorillaz badge, when they visited all hotels around the world.', '1', 'Campaign', 'GRR', null);
INSERT INTO `cms_badge_shop` VALUES ('140', 'NRJ', '1', '1', 'NRJ', 'NRJ - Read: en-er-gy. Radio broadcast in Europe, at least actively linked at Norwegian and Swiss homepage (lately also Denmark).', '1', 'Campaign', 'NRJ', null);
INSERT INTO `cms_badge_shop` VALUES ('141', 'CN2', '1', '1', 'CN2', 'CN2 - China related badge, there before China hotel had its own badges/directory. Why isn\'t there a CN1 ?', '1', 'Campaign', 'CN2', null);
INSERT INTO `cms_badge_shop` VALUES ('142', 'SW1', '1', '1', 'SW1', 'SW1 - Spiderwick movie promotion in US and Canada. Found before as CAB in directory for homepages.', '1', 'Campaign', 'SW1', null);
INSERT INTO `cms_badge_shop` VALUES ('143', 'WAR', '1', '1', 'WAR', 'WAR - Global peace campaign with warchild, 2008.', '1', 'Campaign', 'WAR', null);
INSERT INTO `cms_badge_shop` VALUES ('144', 'FF2', '1', '1', 'FF2', 'FF2 - &#8216;Fashion Friendly Fighters&#8217; badge, same as FFF badge (gone now), confused ?! US implementation of the &#8220;Streets of Bobba&#8221; competition.', '1', 'Campaign', 'FF2', null);
INSERT INTO `cms_badge_shop` VALUES ('145', 'JFF', '1', '1', 'JFF', 'JFF - &#8216;Jeffoo&#8217;s &#8217;Foo Fighters&#8217; badge, US implementation of the &#8220;Streets of Bobba&#8221; competition. Also used for Habbofest &#8217;08 (AU).', '1', 'Campaign', 'JFF', null);
INSERT INTO `cms_badge_shop` VALUES ('146', 'SFK', '1', '1', 'SFK', 'SFK - &#8216;Special Forces Kedo&#8217; badge, US implementation of the &#8220;Streets of Bobba&#8221; competition. Also used for Habbofest &#8217;08 (AU).', '1', 'Campaign', 'SFK', null);
INSERT INTO `cms_badge_shop` VALUES ('147', 'TEO', '1', '1', 'TEO', 'TEO - &#8216;The Emo Oranges&#8217; badge, US implementation of the &#8220;Streets of Bobba&#8221; competition. Also known as US9 (but not anymore).', '1', 'Campaign', 'TEO', null);
INSERT INTO `cms_badge_shop` VALUES ('148', 'KIR', '1', '1', 'KIR', 'KIR - &#8216;Keep it Real&#8217; (100% Habbo) - a campaign against retroservers, first in US, now worldwide.', '1', 'Campaign', 'KIR', null);
INSERT INTO `cms_badge_shop` VALUES ('149', 'KR1', '1', '1', 'KR1', 'KR1 - &#8216;Keep it Real&#8217; (100% Habbo) - a new badge.', '1', 'Campaign', 'KR1', null);
INSERT INTO `cms_badge_shop` VALUES ('150', 'KH2', '1', '1', 'KH2', 'KH2 - &#8220;Kappa Habbo Gamma&#8221; (KH&#915;). Entertainment campaign in US &#38; Canada, mimicing student life. Hidden in directory with lowercase name &#8216;khg&#8217; for a while.', '1', 'Campaign', 'KH2', null);
INSERT INTO `cms_badge_shop` VALUES ('151', 'ATW', '1', '1', 'ATW', 'ATW - UK Globetrekkers campaign. Its name (Around The World) suggests it can/might be re-used in other countries.', '1', 'Campaign', 'ATW', null);
INSERT INTO `cms_badge_shop` VALUES ('152', 'AU1', '1', '1', 'AU1', 'AU1 - &#8216;LeeLou&#8217;s Black Bobbas&#8217; badge, Australian implementation of the &#8220;Streets of Bobba&#8221; competition.', '1', 'Campaign', 'AU1', null);
INSERT INTO `cms_badge_shop` VALUES ('153', 'AU2', '1', '1', 'AU2', 'AU2 - &#8216;Fozzie&#8217;s Blue Bohos&#8217; badge, Australian implementation of the &#8220;Streets of Bobba&#8221; competition.', '1', 'Campaign', 'AU2', null);
INSERT INTO `cms_badge_shop` VALUES ('154', 'AU3', '1', '1', 'AU3', 'AU3 - &#8216;Pixelmason&#8217;s Trade Union&#8217; badge, Australian implementation of the &#8220;Streets of Bobba&#8221; competition.', '1', 'Campaign', 'AU3', null);
INSERT INTO `cms_badge_shop` VALUES ('155', 'AU4', '1', '1', 'AU4', 'AU4 - &#8216;Hab-side Afro Quacks&#8217; badge, Australian implementation of the &#8220;Streets of Bobba&#8221; competition.', '1', 'Campaign', 'AU4', null);
INSERT INTO `cms_badge_shop` VALUES ('156', 'DN1', '1', '1', 'DN1', 'DN1 - Introduction of &#8216;Diner&#8217; furniture. Competitions.', '1', 'Campaign', 'DN1', null);
INSERT INTO `cms_badge_shop` VALUES ('157', 'DN2', '1', '1', 'DN2', 'DN2 - Introduction of &#8216;Diner&#8217; furniture. Competitions.', '1', 'Campaign', 'DN2', null);
INSERT INTO `cms_badge_shop` VALUES ('158', 'DN3', '1', '1', 'DN3', 'DN3 - Introduction of &#8216;Diner&#8217; furniture. Competitions.', '1', 'Campaign', 'DN3', null);
INSERT INTO `cms_badge_shop` VALUES ('159', 'DN4', '1', '1', 'DN4', 'DN4 - Introduction of &#8216;Diner&#8217; furniture. Competitions.', '1', 'Campaign', 'DN4', null);
INSERT INTO `cms_badge_shop` VALUES ('160', 'DN5', '1', '1', 'DN5', 'DN5 - Introduction of &#8216;Diner&#8217; furniture. Competitions.', '1', 'Campaign', 'DN5', null);
INSERT INTO `cms_badge_shop` VALUES ('161', 'LBB', '1', '1', 'LBB', 'LBB - &#8216;LeeLou&#8217;s Black Bobbas&#8217; won the &#8220;Streets of Bobba&#8221; competition, this badge goes to all people who signed up for (badge of) winning team. Halloween prize in Canada.', '1', 'Campaign', 'LBB', null);
INSERT INTO `cms_badge_shop` VALUES ('162', 'SB5', '1', '1', 'SB5', 'SB5 - New edition of &#8220;Streets of Bobba&#8221;, 2008.', '1', 'Campaign', 'SB5', null);
INSERT INTO `cms_badge_shop` VALUES ('163', 'SB6', '1', '1', 'SB6', 'SB6 - New edition of &#8220;Streets of Bobba&#8221;, 2008.', '1', 'Campaign', 'SB6', null);
INSERT INTO `cms_badge_shop` VALUES ('164', 'SB7', '1', '1', 'SB7', 'SB7 - New edition of &#8220;Streets of Bobba&#8221;, 2008.', '1', 'Campaign', 'SB7', null);
INSERT INTO `cms_badge_shop` VALUES ('165', 'YAK', '1', '1', 'YAK', 'YAK - Used in competitions around introduction of Japanese furniture.', '1', 'Campaign', 'YAK', null);
INSERT INTO `cms_badge_shop` VALUES ('166', 'JF1', '1', '1', 'JF1', 'JF1 - Japanese festival/furniture ? Introduction of new Japanese furniture.', '1', 'Campaign', 'JF1', null);
INSERT INTO `cms_badge_shop` VALUES ('167', 'JF2', '1', '1', 'JF2', 'JF2 - Japanese festival/furniture (badge will have unintended transparent parts) ?', '1', 'Campaign', 'JF2', null);
INSERT INTO `cms_badge_shop` VALUES ('168', 'JF3', '1', '1', 'JF3', 'JF3 - Japanese festival/furniture ? Introduction of new Japanese furniture.', '1', 'Campaign', 'JF3', null);
INSERT INTO `cms_badge_shop` VALUES ('169', 'JF4', '1', '1', 'JF4', 'JF4 - Japanese festival/furniture ? Introduction of new Japanese furniture.', '1', 'Campaign', 'JF4', null);
INSERT INTO `cms_badge_shop` VALUES ('170', 'JF5', '1', '1', 'JF5', 'JF5 - Japanese festival/furniture ? Introduction of new Japanese furniture.', '1', 'Campaign', 'JF5', null);
INSERT INTO `cms_badge_shop` VALUES ('171', 'SU1', '1', '1', 'SU1', 'SU1 - Mana badge. Summer 2008 competitions, related to Tiki furniture.', '1', 'Campaign', 'SU1', null);
INSERT INTO `cms_badge_shop` VALUES ('172', 'SU2', '1', '1', 'SU2', 'SU2 - Mana badge. Summer 2008 competitions, related to Tiki furniture.', '1', 'Campaign', 'SU2', null);
INSERT INTO `cms_badge_shop` VALUES ('173', 'SU3', '1', '1', 'SU3', 'SU3 - Mana badge. Summer 2008 competitions, related to Tiki furniture.', '1', 'Campaign', 'SU3', null);
INSERT INTO `cms_badge_shop` VALUES ('174', 'PR1', '1', '1', 'PR1', 'PR1 - Pirate campaigns, April/May 2008. Team green.', '1', 'Campaign', 'PR1', null);
INSERT INTO `cms_badge_shop` VALUES ('175', 'PR2', '1', '1', 'PR2', 'PR2 - Pirate campaigns, April/May 2008. Team blue.', '1', 'Campaign', 'PR2', null);
INSERT INTO `cms_badge_shop` VALUES ('176', 'PR3', '1', '1', 'PR3', 'PR3 - Pirate campaigns, April/May 2008. Other badges replaced with this one for the winning team.', '1', 'Campaign', 'PR3', null);
INSERT INTO `cms_badge_shop` VALUES ('177', 'MB1', '1', '1', 'MB1', 'MB1 - &#8216;Madball 2008&#8217;. A football/soccer campaign at Habbo...', '1', 'Campaign', 'MB1', null);
INSERT INTO `cms_badge_shop` VALUES ('178', 'MB2', '1', '1', 'MB2', 'MB2 - &#8216;Madball 2008&#8217;. A football/soccer campaign at Habbo...', '1', 'Campaign', 'MB2', null);
INSERT INTO `cms_badge_shop` VALUES ('179', 'OL1', '1', '1', 'OL1', 'OL1 - Releated to the Olympic Games in China, 2008. First place, gold.', '1', 'Campaign', 'OL1', null);
INSERT INTO `cms_badge_shop` VALUES ('180', 'OL2', '1', '1', 'OL2', 'OL2 - Releated to the Olympic Games in China, 2008. Second place, silver.', '1', 'Campaign', 'OL2', null);
INSERT INTO `cms_badge_shop` VALUES ('181', 'OL3', '1', '1', 'OL3', 'OL3 - Releated to the Olympic Games in China, 2008. Third place, bronze.', '1', 'Campaign', 'OL3', null);
INSERT INTO `cms_badge_shop` VALUES ('182', 'EAB', '1', '1', 'EAB', 'EAB - Easter (blue). &#8220;Bunnies vs. Bears&#8221; competition, Singapore only, it seems.', '1', 'Campaign', 'EAB', null);
INSERT INTO `cms_badge_shop` VALUES ('183', 'EAR', '1', '1', 'EAR', 'EAR - Easter (red). &#8220;Bunnies vs. Bears&#8221; competition, Singapore only, it seems.', '1', 'Campaign', 'EAR', null);
INSERT INTO `cms_badge_shop` VALUES ('184', 'MD1', '1', '1', 'MD1', 'MD1 - &#8216;Meet Dave&#8217; movie promotion.', '1', 'Campaign', 'MD1', null);
INSERT INTO `cms_badge_shop` VALUES ('185', 'MD2', '1', '1', 'MD2', 'MD2 - &#8216;Meet Dave&#8217; movie promotion.', '1', 'Campaign', 'MD2', null);
INSERT INTO `cms_badge_shop` VALUES ('186', 'GNO', '1', '1', 'GNO', 'GNO - Gnome badge, related to release of the Gnome souvenir, Oktober 2008.', '1', 'Campaign', 'GNO', null);
INSERT INTO `cms_badge_shop` VALUES ('187', 'KO1', '1', '1', 'KO1', 'KO1 - Koala badge, related to release of the Koala souvenir, November 2008.', '1', 'Campaign', 'KO1', null);
INSERT INTO `cms_badge_shop` VALUES ('188', 'KO2', '1', '1', 'KO2', 'KO2 - Koala badge, related to release of the Koala souvenir, November 2008.', '1', 'Campaign', 'KO2', null);
INSERT INTO `cms_badge_shop` VALUES ('189', 'NEA', '1', '1', 'NEA', 'NEA - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEA', null);
INSERT INTO `cms_badge_shop` VALUES ('190', 'NEB', '1', '1', 'NEB', 'NEB - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEB', null);
INSERT INTO `cms_badge_shop` VALUES ('191', 'NEC', '1', '1', 'NEC', 'NEC - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEC', null);
INSERT INTO `cms_badge_shop` VALUES ('192', 'NED', '1', '1', 'NED', 'NED - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NED', null);
INSERT INTO `cms_badge_shop` VALUES ('193', 'NEE', '1', '1', 'NEE', 'NEE - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEE', null);
INSERT INTO `cms_badge_shop` VALUES ('194', 'NEF', '1', '1', 'NEF', 'NEF - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEF', null);
INSERT INTO `cms_badge_shop` VALUES ('195', 'NEG', '1', '1', 'NEG', 'NEG - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEG', null);
INSERT INTO `cms_badge_shop` VALUES ('196', 'NEH', '1', '1', 'NEH', 'NEH - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEH', null);
INSERT INTO `cms_badge_shop` VALUES ('197', 'NEI', '1', '1', 'NEI', 'NEI - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEI', null);
INSERT INTO `cms_badge_shop` VALUES ('198', 'NEJ', '1', '1', 'NEJ', 'NEJ - Used in competitions around introduction of Neon furniture, 2008.', '1', 'Campaign', 'NEJ', null);
INSERT INTO `cms_badge_shop` VALUES ('199', 'ACH_AvatarLooks1', '1', '1', 'ACH_AvatarLooks1', 'ACH_AvatarLooks1 - Earned when changing clothes.', '1', 'Achievements', 'ACH_AvatarLooks1', null);
INSERT INTO `cms_badge_shop` VALUES ('200', 'ACH_EmailVerification1', '1', '1', 'ACH_EmailVerification1', 'ACH_EmailVerification1 - Earned when verifying your email.', '1', 'Achievements', 'ACH_EmailVerification1', null);
INSERT INTO `cms_badge_shop` VALUES ('201', 'ACH_Graduate1', '1', '1', 'ACH_Graduate1', 'ACH_Graduate1 - Earned when spending a specefic time online (?).', '1', 'Achievements', 'ACH_Graduate1', null);
INSERT INTO `cms_badge_shop` VALUES ('202', 'ACH_HappyHour1', '1', '1', 'ACH_HappyHour1', 'ACH_HappyHour1 - Earned when logging in first time.', '1', 'Achievements', 'ACH_HappyHour1', null);
INSERT INTO `cms_badge_shop` VALUES ('203', 'ACH_Motto1', '1', '1', 'ACH_Motto1', 'ACH_Motto1 - Earned when changing your motto.', '1', 'Achievements', 'ACH_Motto1', null);
INSERT INTO `cms_badge_shop` VALUES ('204', 'ACH_Student1', '1', '1', 'ACH_Student1', 'ACH_Student1 - Earned when inviting a Habbo Guide to your room.', '1', 'Achievements', 'ACH_Student1', null);
INSERT INTO `cms_badge_shop` VALUES ('205', 'ACH_AvatarTags1', '1', '1', 'ACH_AvatarTags1', 'ACH_AvatarTags1 - For adding five tags to yourself.', '1', 'Achievements', 'ACH_AvatarTags1', null);
INSERT INTO `cms_badge_shop` VALUES ('206', 'ACH_RespectGiven1', '1', '1', 'ACH_RespectGiven1', 'ACH_RespectGiven1 - For giving respect 100 times.', '1', 'Achievements', 'ACH_RespectGiven1', null);
INSERT INTO `cms_badge_shop` VALUES ('207', 'ACH_RegistrationDuration1', '1', '1', 'ACH_RegistrationDuration1', 'ACH_RegistrationDuration1 - Earned when you\'ve been member of Habbo for 3 days.', '1', 'Achievements', 'ACH_RegistrationDuration1', null);
INSERT INTO `cms_badge_shop` VALUES ('208', 'ACH_RegistrationDuration2', '1', '1', 'ACH_RegistrationDuration2', 'ACH_RegistrationDuration2 - Earned when you\'ve been member of Habbo for 3 weeks.', '1', 'Achievements', 'ACH_RegistrationDuration2', null);
INSERT INTO `cms_badge_shop` VALUES ('209', 'ACH_RegistrationDuration3', '1', '1', 'ACH_RegistrationDuration3', 'ACH_RegistrationDuration3 - Earned when you\'ve been member of Habbo for 8 weeks.', '1', 'Achievements', 'ACH_RegistrationDuration3', null);
INSERT INTO `cms_badge_shop` VALUES ('210', 'ACH_RegistrationDuration4', '1', '1', 'ACH_RegistrationDuration4', 'ACH_RegistrationDuration4 - Earned when you\'ve been member of Habbo for 16 weeks.', '1', 'Achievements', 'ACH_RegistrationDuration4', null);
INSERT INTO `cms_badge_shop` VALUES ('211', 'ACH_RegistrationDuration5', '1', '1', 'ACH_RegistrationDuration5', 'ACH_RegistrationDuration5 - Earned when you\'ve been member of Habbo for 24 weeks.', '1', 'Achievements', 'ACH_RegistrationDuration5', null);
INSERT INTO `cms_badge_shop` VALUES ('212', 'ACH_RegistrationDuration6', '1', '1', 'ACH_RegistrationDuration6', 'ACH_RegistrationDuration6 - Earned when you\'ve been member of Habbo for 1 year.', '1', 'Achievements', 'ACH_RegistrationDuration6', null);
INSERT INTO `cms_badge_shop` VALUES ('213', 'ACH_RegistrationDuration7', '1', '1', 'ACH_RegistrationDuration7', 'ACH_RegistrationDuration7 - Earned when you\'ve been member of Habbo for 2 years.', '1', 'Achievements', 'ACH_RegistrationDuration7', null);
INSERT INTO `cms_badge_shop` VALUES ('214', 'ACH_RegistrationDuration8', '1', '1', 'ACH_RegistrationDuration8', 'ACH_RegistrationDuration8 - Earned when you\'ve been member of Habbo for 3 years.', '1', 'Achievements', 'ACH_RegistrationDuration8', null);
INSERT INTO `cms_badge_shop` VALUES ('215', 'ACH_RegistrationDuration9', '1', '1', 'ACH_RegistrationDuration9', 'ACH_RegistrationDuration9 - Earned when you\'ve been member of Habbo for 4 years.', '1', 'Achievements', 'ACH_RegistrationDuration9', null);
INSERT INTO `cms_badge_shop` VALUES ('216', 'ACH_RegistrationDuration10', '1', '1', 'ACH_RegistrationDuration10', 'ACH_RegistrationDuration10 - Earned when you\'ve been member of Habbo for 5 years.', '1', 'Achievements', 'ACH_RegistrationDuration10', null);
INSERT INTO `cms_badge_shop` VALUES ('217', 'ACH_Login1', '1', '1', 'ACH_Login1', 'ACH_Login1 - Earned when logged in 5 days in a row.', '1', 'Achievements', 'ACH_Login1', null);
INSERT INTO `cms_badge_shop` VALUES ('218', 'ACH_Login2', '1', '1', 'ACH_Login2', 'ACH_Login2 - Earned when logged in 8 days in a row.', '1', 'Achievements', 'ACH_Login2', null);
INSERT INTO `cms_badge_shop` VALUES ('219', 'ACH_Login3', '1', '1', 'ACH_Login3', 'ACH_Login3 - Earned when logged in 15 days in a row.', '1', 'Achievements', 'ACH_Login3', null);
INSERT INTO `cms_badge_shop` VALUES ('220', 'ACH_Login4', '1', '1', 'ACH_Login4', 'ACH_Login4 - Earned when logged in 28 days in a row.', '1', 'Achievements', 'ACH_Login4', null);
INSERT INTO `cms_badge_shop` VALUES ('221', 'ACH_Login5', '1', '1', 'ACH_Login5', 'ACH_Login5 - Earned when logged in 35 days in a row.', '1', 'Achievements', 'ACH_Login5', null);
INSERT INTO `cms_badge_shop` VALUES ('222', 'ACH_Login6', '1', '1', 'ACH_Login6', 'ACH_Login6 - Earned when logged in ? in a row.', '1', 'Achievements', 'ACH_Login6', null);
INSERT INTO `cms_badge_shop` VALUES ('223', 'ACH_Login7', '1', '1', 'ACH_Login7', 'ACH_Login7 - Earned when logged in ? in a row.', '1', 'Achievements', 'ACH_Login7', null);
INSERT INTO `cms_badge_shop` VALUES ('224', 'ACH_Login8', '1', '1', 'ACH_Login8', 'ACH_Login8 - Earned when logged in ? in a row.', '1', 'Achievements', 'ACH_Login8', null);
INSERT INTO `cms_badge_shop` VALUES ('225', 'ACH_Login9', '1', '1', 'ACH_Login9', 'ACH_Login9 - Earned when logged in ? in a row.', '1', 'Achievements', 'ACH_Login9', null);
INSERT INTO `cms_badge_shop` VALUES ('226', 'ACH_Login10', '1', '1', 'ACH_Login10', 'ACH_Login10 - Earned when logged in ? in a row.', '1', 'Achievements', 'ACH_Login10', null);
INSERT INTO `cms_badge_shop` VALUES ('227', 'ACH_GamePlayed1', '1', '1', 'ACH_GamePlayed1', 'ACH_GamePlayed1 - Earned when you\'ve won 1 game in Battle Ball/SnowStorm.', '1', 'Achievements', 'ACH_GamePlayed1', null);
INSERT INTO `cms_badge_shop` VALUES ('228', 'ACH_GamePlayed2', '1', '1', 'ACH_GamePlayed2', 'ACH_GamePlayed2 - Earned when you\'ve won 5 games in Battle Ball/SnowStorm.', '1', 'Achievements', 'ACH_GamePlayed2', null);
INSERT INTO `cms_badge_shop` VALUES ('229', 'ACH_GamePlayed3', '1', '1', 'ACH_GamePlayed3', 'ACH_GamePlayed3 - Earned when you\'ve won 20 games in Battle Ball/SnowStorm.', '1', 'Achievements', 'ACH_GamePlayed3', null);
INSERT INTO `cms_badge_shop` VALUES ('230', 'ACH_GamePlayed4', '1', '1', 'ACH_GamePlayed4', 'ACH_GamePlayed4 - Earned when you\'ve won 50 games in Battle Ball/SnowStorm.', '1', 'Achievements', 'ACH_GamePlayed4', null);
INSERT INTO `cms_badge_shop` VALUES ('231', 'ACH_GamePlayed5', '1', '1', 'ACH_GamePlayed5', 'ACH_GamePlayed5 - Earned when you\'ve won 100 games in Battle Ball/SnowStorm.', '1', 'Achievements', 'ACH_GamePlayed5', null);
INSERT INTO `cms_badge_shop` VALUES ('232', 'ACH_GamePlayed6', '1', '1', 'ACH_GamePlayed6', 'ACH_GamePlayed6 - Earned when ?', '1', 'Achievements', 'ACH_GamePlayed6', null);
INSERT INTO `cms_badge_shop` VALUES ('233', 'ACH_GamePlayed7', '1', '1', 'ACH_GamePlayed7', 'ACH_GamePlayed7 - Earned when ?', '1', 'Achievements', 'ACH_GamePlayed7', null);
INSERT INTO `cms_badge_shop` VALUES ('234', 'ACH_GamePlayed8', '1', '1', 'ACH_GamePlayed8', 'ACH_GamePlayed8 - Earned when ?', '1', 'Achievements', 'ACH_GamePlayed8', null);
INSERT INTO `cms_badge_shop` VALUES ('235', 'ACH_GamePlayed9', '1', '1', 'ACH_GamePlayed9', 'ACH_GamePlayed9 - Earned when ?', '1', 'Achievements', 'ACH_GamePlayed9', null);
INSERT INTO `cms_badge_shop` VALUES ('236', 'ACH_GamePlayed10', '1', '1', 'ACH_GamePlayed10', 'ACH_GamePlayed10 - Earned when ?', '1', 'Achievements', 'ACH_GamePlayed10', null);
INSERT INTO `cms_badge_shop` VALUES ('237', 'ACH_RoomEntry1', '1', '1', 'ACH_RoomEntry1', 'ACH_RoomEntry1 - Earned when you\'ve visited 5 guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry1', null);
INSERT INTO `cms_badge_shop` VALUES ('238', 'ACH_RoomEntry2', '1', '1', 'ACH_RoomEntry2', 'ACH_RoomEntry2 - Earned when you\'ve visited 15 guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry2', null);
INSERT INTO `cms_badge_shop` VALUES ('239', 'ACH_RoomEntry3', '1', '1', 'ACH_RoomEntry3', 'ACH_RoomEntry3 - Earned when you\'ve visited 35 guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry3', null);
INSERT INTO `cms_badge_shop` VALUES ('240', 'ACH_RoomEntry6', '1', '1', 'ACH_RoomEntry6', 'ACH_RoomEntry6 - Earned when you\'ve visited ? guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry6', null);
INSERT INTO `cms_badge_shop` VALUES ('241', 'ACH_RoomEntry7', '1', '1', 'ACH_RoomEntry7', 'ACH_RoomEntry7 - Earned when you\'ve visited ? guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry7', null);
INSERT INTO `cms_badge_shop` VALUES ('242', 'ACH_RoomEntry8', '1', '1', 'ACH_RoomEntry8', 'ACH_RoomEntry8 - Earned when you\'ve visited ? guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry8', null);
INSERT INTO `cms_badge_shop` VALUES ('243', 'ACH_RoomEntry9', '1', '1', 'ACH_RoomEntry9', 'ACH_RoomEntry9 - Earned when you\'ve visited ? guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry9', null);
INSERT INTO `cms_badge_shop` VALUES ('244', 'ACH_RoomEntry10', '1', '1', 'ACH_RoomEntry10', 'ACH_RoomEntry10 - Earned when you\'ve visited ? guest rooms (that you don\'t own yourself).', '1', 'Achievements', 'ACH_RoomEntry10', null);
INSERT INTO `cms_badge_shop` VALUES ('245', 'ACH_RespectEarned1', '1', '1', 'ACH_RespectEarned1', 'ACH_RespectEarned1 - For earning respect your first time.', '1', 'Achievements', 'ACH_RespectEarned1', null);
INSERT INTO `cms_badge_shop` VALUES ('246', 'ACH_RespectEarned2', '1', '1', 'ACH_RespectEarned2', 'ACH_RespectEarned2 - For earning respect 6 times.', '1', 'Achievements', 'ACH_RespectEarned2', null);
INSERT INTO `cms_badge_shop` VALUES ('247', 'ACH_RespectEarned3', '1', '1', 'ACH_RespectEarned3', 'ACH_RespectEarned3 - For earning respect 16 times.', '1', 'Achievements', 'ACH_RespectEarned3', null);
INSERT INTO `cms_badge_shop` VALUES ('248', 'ACH_RespectEarned4', '1', '1', 'ACH_RespectEarned4', 'ACH_RespectEarned4 - For earning respect 66 times.', '1', 'Achievements', 'ACH_RespectEarned4', null);
INSERT INTO `cms_badge_shop` VALUES ('249', 'ACH_RespectEarned5', '1', '1', 'ACH_RespectEarned5', 'ACH_RespectEarned5 - For earning respect 166 times.', '1', 'Achievements', 'ACH_RespectEarned5', null);
INSERT INTO `cms_badge_shop` VALUES ('250', 'ACH_RespectEarned6', '1', '1', 'ACH_RespectEarned6', 'ACH_RespectEarned6 - For earning respect 366 times.', '1', 'Achievements', 'ACH_RespectEarned6', null);
INSERT INTO `cms_badge_shop` VALUES ('251', 'ACH_RespectEarned7', '1', '1', 'ACH_RespectEarned7', 'ACH_RespectEarned7 - For earning respect 566 times.', '1', 'Achievements', 'ACH_RespectEarned7', null);
INSERT INTO `cms_badge_shop` VALUES ('252', 'ACH_RespectEarned8', '1', '1', 'ACH_RespectEarned8', 'ACH_RespectEarned8 - For earning respect 766 times.', '1', 'Achievements', 'ACH_RespectEarned8', null);
INSERT INTO `cms_badge_shop` VALUES ('253', 'ACH_RespectEarned9', '1', '1', 'ACH_RespectEarned9', 'ACH_RespectEarned9 - For earning respect 966 times.', '1', 'Achievements', 'ACH_RespectEarned9', null);
INSERT INTO `cms_badge_shop` VALUES ('254', 'ACH_RespectEarned10', '1', '1', 'ACH_RespectEarned10', 'ACH_RespectEarned10 - For earning respect 1166 times.', '1', 'Achievements', 'ACH_RespectEarned10', null);
INSERT INTO `cms_badge_shop` VALUES ('255', 'ACH_MGM1', '1', '1', 'ACH_MGM1', 'ACH_MGM1 - For inviting one friend to Habbo.', '1', 'Achievements', 'ACH_MGM1', null);
INSERT INTO `cms_badge_shop` VALUES ('256', 'ACH_MGM2', '1', '1', 'ACH_MGM2', 'ACH_MGM2 - For inviting two friend to Habbo.', '1', 'Achievements', 'ACH_MGM2', null);
INSERT INTO `cms_badge_shop` VALUES ('257', 'ACH_MGM3', '1', '1', 'ACH_MGM3', 'ACH_MGM3 - For inviting three friend to Habbo.', '1', 'Achievements', 'ACH_MGM3', null);
INSERT INTO `cms_badge_shop` VALUES ('258', 'ACH_MGM4', '1', '1', 'ACH_MGM4', 'ACH_MGM4 - For inviting five friend to Habbo.', '1', 'Achievements', 'ACH_MGM4', null);
INSERT INTO `cms_badge_shop` VALUES ('259', 'ACH_MGM5', '1', '1', 'ACH_MGM5', 'ACH_MGM5 - For inviting seven friend to Habbo.', '1', 'Achievements', 'ACH_MGM5', null);
INSERT INTO `cms_badge_shop` VALUES ('260', 'ACH_MGM6', '1', '1', 'ACH_MGM6', 'ACH_MGM6 - For inviting nine friend to Habbo.', '1', 'Achievements', 'ACH_MGM6', null);
INSERT INTO `cms_badge_shop` VALUES ('261', 'ACH_MGM7', '1', '1', 'ACH_MGM7', 'ACH_MGM7 - For inviting eleven friend to Habbo.', '1', 'Achievements', 'ACH_MGM7', null);
INSERT INTO `cms_badge_shop` VALUES ('262', 'ACH_MGM8', '1', '1', 'ACH_MGM8', 'ACH_MGM8 - For inviting thirteen friend to Habbo.', '1', 'Achievements', 'ACH_MGM8', null);
INSERT INTO `cms_badge_shop` VALUES ('263', 'ACH_MGM9', '1', '1', 'ACH_MGM9', 'ACH_MGM9 - For inviting fifteen friend to Habbo.', '1', 'Achievements', 'ACH_MGM9', null);
INSERT INTO `cms_badge_shop` VALUES ('264', 'ACH_MGM10', '1', '1', 'ACH_MGM10', 'ACH_MGM10 - For inviting seventeen friend to Habbo.', '1', 'Achievements', 'ACH_MGM10', null);
INSERT INTO `cms_badge_shop` VALUES ('265', 'HF7', '1', '1', 'HF7', 'HF7 - &#8220;Habbofest 2007&#8221;, Australia. Also used for a &#8220;Summer of Love&#8221; (?!) competition in Germany.', '1', 'Australia', 'HF7', null);
INSERT INTO `cms_badge_shop` VALUES ('266', 'HF8', '1', '1', 'HF8', 'HF8 - &#8220;Habbofest 2008&#8221;, Australia.', '1', 'Australia', 'HF8', null);
INSERT INTO `cms_badge_shop` VALUES ('267', 'GF1', '1', '1', 'GF1', 'GF1 - &#8216;Girlfriend&#8217; (Australian magazine) HOT OR NOT competition, 2007. Also used in Germany for a Rexona-Girl quiz.', '1', 'Australia', 'GF1', null);
INSERT INTO `cms_badge_shop` VALUES ('268', 'RE1', '1', '1', 'RE1', 'RE1 - (Australia) &#8220;Reach Out!&#8221; - youthcare on the internet. Infobus partner in Australia (Thanks &#8216;Mon&#8217; at Habbos.net).', '1', 'Australia', 'RE1', null);
INSERT INTO `cms_badge_shop` VALUES ('269', 'RE2', '1', '1', 'RE2', 'RE2 - (Australia) &#8220;Reach Out!&#8221; - youthcare on the internet. Given out monthly to 5 people for best responses to a question.', '1', 'Australia', 'RE2', null);
INSERT INTO `cms_badge_shop` VALUES ('270', 'EC1', '1', '1', 'EC1', 'EC1 - &#8216;Eco warriors&#8217; badge, used for the &#8216;Green Scene&#8217; (ecological awareness) campaign in Australia.', '1', 'Australia', 'EC1', null);
INSERT INTO `cms_badge_shop` VALUES ('271', 'PN1', '1', '1', 'PN1', 'PN1 - Pixel Ninja, Australia. Design a group badge competition.', '1', 'Australia', 'PN1', null);
INSERT INTO `cms_badge_shop` VALUES ('272', 'PB1', '1', '1', 'PB1', 'PB1 - &#8216;Pink versus Black&#8217; campaign in Australia. Later on in other countries too.', '1', 'Australia', 'PB1', null);
INSERT INTO `cms_badge_shop` VALUES ('273', 'PB2', '1', '1', 'PB2', 'PB2 - &#8216;Pink versus Black&#8217; campaign in Australia. Later on in other countries too.', '1', 'Australia', 'PB2', null);
INSERT INTO `cms_badge_shop` VALUES ('274', 'UD1', '1', '1', 'UD1', 'UD1 - Most probably for the &#8216;Dag or not&#8217; competition in Australia (but not used).', '1', 'Australia', 'UD1', null);
INSERT INTO `cms_badge_shop` VALUES ('275', 'STA', '1', '1', 'STA', 'STA - &#8216;Sound the Alarm&#8217;, safety campaign in Australia.', '1', 'Australia', 'STA', null);
INSERT INTO `cms_badge_shop` VALUES ('276', 'RTS', '1', '1', 'RTS', 'RTS - &#8216;Rock the Schools&#8217;, music campaign in Australia.', '1', 'Australia', 'RTS', null);
INSERT INTO `cms_badge_shop` VALUES ('277', 'AUW', '1', '1', 'AUW', 'AUW - Department of Habbo Services campaign.', '1', 'Australia', 'AUW', null);
INSERT INTO `cms_badge_shop` VALUES ('278', 'SOS', '1', '1', 'SOS', 'SOS - SOSO: Smart Online, Safe Offline. Campaingn in association with so called organization.', '1', 'Australia', 'SOS', null);
INSERT INTO `cms_badge_shop` VALUES ('279', 'AU5', '1', '1', 'AU5', 'AU5 - Habbo Autralias&#8217; 4th birthday, November 22, 2008. Join the group and get the badge.', '1', 'Australia', 'AU5', null);
INSERT INTO `cms_badge_shop` VALUES ('280', 'GA1', '1', '1', 'GA1', 'GA1 - Top 40 Gamer of each month get this one (only Australia?).', '1', 'Australia', 'GA1', null);
INSERT INTO `cms_badge_shop` VALUES ('281', 'HJ1', '1', '1', 'HJ1', 'HJ1 - Hungry Jacks - Join the group and get the Badge (Australia, November 2008).', '1', 'Australia', 'HJ1', null);
INSERT INTO `cms_badge_shop` VALUES ('282', 'CA1', '1', '1', 'CA1', 'CA1 - &#8216;Much Music&#8217; (sponsor) staff badge, Canada.', '1', 'Canada', 'CA1', null);
INSERT INTO `cms_badge_shop` VALUES ('283', 'CA2', '1', '1', 'CA2', 'CA2 - Xbox competition badge (purple).', '1', 'Canada', 'CA2', null);
INSERT INTO `cms_badge_shop` VALUES ('284', 'CA3', '1', '1', 'CA3', 'CA3 - Xbox competition badge (grey).', '1', 'Canada', 'CA3', null);
INSERT INTO `cms_badge_shop` VALUES ('285', 'CA4', '1', '1', 'CA4', 'CA4 - Xbox competition badge (green).', '1', 'Canada', 'CA4', null);
INSERT INTO `cms_badge_shop` VALUES ('286', 'CA5', '1', '1', 'CA5', 'CA5 - Xbox competition badge (blue).', '1', 'Canada', 'CA5', null);
INSERT INTO `cms_badge_shop` VALUES ('287', 'CA6', '1', '1', 'CA6', 'CA6 - Xbox competition badge (yellow).', '1', 'Canada', 'CA6', null);
INSERT INTO `cms_badge_shop` VALUES ('288', 'CA7', '1', '1', 'CA7', 'CA7 - Xbox competition badge (red).', '1', 'Canada', 'CA7', null);
INSERT INTO `cms_badge_shop` VALUES ('289', 'CA8', '1', '1', 'CA8', 'CA8 - Xbox competition badge (orange).', '1', 'Canada', 'CA8', null);
INSERT INTO `cms_badge_shop` VALUES ('290', 'CA9', '1', '1', 'CA9', 'CA9 - Xbox competition badge (lightblue).', '1', 'Canada', 'CA9', null);
INSERT INTO `cms_badge_shop` VALUES ('291', 'CAA', '1', '1', 'CAA', 'CAA - For Canadian infobus staff (OPP - Ontario Provincial Police information), thanks Andy for suggestion.', '1', 'Canada', 'CAA', null);
INSERT INTO `cms_badge_shop` VALUES ('292', 'CAC', '1', '1', 'CAC', 'CAC - Featured room badge. CAB omitted as the SW1 badge was named like that for a while (album1584).', '1', 'Canada', 'CAC', null);
INSERT INTO `cms_badge_shop` VALUES ('293', 'CAD', '1', '1', 'CAD', 'CAD - &#8216;Sasquatch&#8217; competition prize.', '1', 'Canada', 'CAD', null);
INSERT INTO `cms_badge_shop` VALUES ('294', 'CAE', '1', '1', 'CAE', 'CAE - &#8216;Poppy&#8217;, for WW I remembrance.', '1', 'Canada', 'CAE', null);
INSERT INTO `cms_badge_shop` VALUES ('295', 'CAF', '1', '1', 'CAF', 'CAF - Dance competition, 2008.', '1', 'Canada', 'CAF', null);
INSERT INTO `cms_badge_shop` VALUES ('296', 'DT1', '1', '1', 'DT1', 'DT1 - Drawing Trophy ? There was a drawing club in Canada and there was been talk about a badge. Later re-used as UK6.', '1', 'Canada', 'DT1', null);
INSERT INTO `cms_badge_shop` VALUES ('297', 'HHL', '1', '1', 'HHL', 'HHL - &#8216;Habbo Hockey League&#8217;, Canada, 2007.', '1', 'Canada', 'HHL', null);
INSERT INTO `cms_badge_shop` VALUES ('298', 'CHF', '1', '1', 'CHF', 'CHF - &#8220;Chef Boyardee&#8221;, a US food brand (thanks Darren for explanation) - competition in Canada.', '1', 'Canada', 'CHF', null);
INSERT INTO `cms_badge_shop` VALUES ('299', 'GWA', '1', '1', 'GWA', 'GWA - &#8216;Global Warming&#8217;, or Earth badge. Given to users in Canada for participating in the related quiz.', '1', 'Canada', 'GWA', null);
INSERT INTO `cms_badge_shop` VALUES ('300', 'ES1', '1', '1', 'ES/SE1', 'ES1 - Infobus staff Unicef (Spain); not in the hotel anymore.', '1', 'Spain', 'ES1', null);
INSERT INTO `cms_badge_shop` VALUES ('301', 'ES2', '1', '1', 'ES2', 'ES2 - Spain, &#8220;Comisariado Europeo del Autom&#243;vil&#8221;, or European committee for the Motorcar. With youth department concerned with safety on the road. Meetings not in infobus.', '1', 'Spain', 'ES2', null);
INSERT INTO `cms_badge_shop` VALUES ('302', 'ES3', '1', '1', 'ES3', 'ES3 - Spanish badge, first used in a &#8216;Habzteca&#8217; competition in Italy.', '1', 'Spain', 'ES3', null);
INSERT INTO `cms_badge_shop` VALUES ('303', 'ES4', '1', '1', 'ES4', 'ES4 - Spanish badge, first used in a &#8216;Habzteca&#8217; competition in Italy.', '1', 'Spain', 'ES4', null);
INSERT INTO `cms_badge_shop` VALUES ('304', 'ES5', '1', '1', 'ES5', 'ES5 - Spanish badge, first used in a &#8216;Habzteca&#8217; competition in Italy.', '1', 'Spain', 'ES5', null);
INSERT INTO `cms_badge_shop` VALUES ('305', 'ES6', '1', '1', 'ES6', 'ES6 - This is for &#8216;Chaval&#8217;, organisation for youth being safe on the internet, infobus. Infobus in Spain changed from Unicef blue to white, with this guy on it.', '1', 'Spain', 'ES6', null);
INSERT INTO `cms_badge_shop` VALUES ('306', 'ES7', '1', '1', 'ES7', 'ES7 - &#8216;La Fantasma del Teatro&#8217; competition, along with the release of gothic furniture.', '1', 'Spain', 'ES7', null);
INSERT INTO `cms_badge_shop` VALUES ('307', 'ES8', '1', '1', 'ES8', 'ES8 - &#8216;Calippo&#8217; (icecream brand) competition.', '1', 'Spain', 'ES8', null);
INSERT INTO `cms_badge_shop` VALUES ('308', 'ES9', '1', '1', 'ES9', 'ES9 - &#8216;Calippo&#8217; (icecream brand) competition.', '1', 'Spain', 'ES9', null);
INSERT INTO `cms_badge_shop` VALUES ('309', 'ESA', '1', '1', 'ESA', 'ESA - &#8216;Calippo&#8217; (icecream brand) competition.', '1', 'Spain', 'ESA', null);
INSERT INTO `cms_badge_shop` VALUES ('310', 'ESB', '1', '1', 'ESB', 'ESB - &#8220;Chica Tampax VIP&#8221;. Tampax campaign in Spanish hotel. Supposedly for a special occasion.', '1', 'Spain', 'ESB', null);
INSERT INTO `cms_badge_shop` VALUES ('311', 'ESC', '1', '1', 'ESC', 'ESC - (Spain) For &#8220;Eurobasket&#8221; or &#8220;Euroliga&#8221; competitions, we think (not sure).', '1', 'Spain', 'ESC', null);
INSERT INTO `cms_badge_shop` VALUES ('312', 'ESD', '1', '1', 'ESD', 'ESD - September 15, 2007 Spanish hotel has its 4th anniversary. Also used, same purpose, in Canada.', '1', 'Spain', 'ESD', null);
INSERT INTO `cms_badge_shop` VALUES ('313', 'ESE', '1', '1', 'ESE', 'ESE - Final Calippo badge.', '1', 'Spain', 'ESE', null);
INSERT INTO `cms_badge_shop` VALUES ('314', 'ESF', '1', '1', 'ESF', 'ESF - &#8216;Pringles&#8216; campaign in Spain.', '1', 'Spain', 'ESF', null);
INSERT INTO `cms_badge_shop` VALUES ('315', 'ESI', '1', '1', 'ESI', 'ESI - Rat &#38; horse wedding, to do with Chinese new year. Formerly uploaded as SP3 in album 1584.', '1', 'Spain', 'ESI', null);
INSERT INTO `cms_badge_shop` VALUES ('316', 'ESJ', '1', '1', 'ESJ', 'ESJ - Rat &#38; horse wedding, to do with Chinese new year. Formerly uploaded as SP4 in album 1584.', '1', 'Spain', 'ESJ', null);
INSERT INTO `cms_badge_shop` VALUES ('317', 'ESK', '1', '1', 'ESK', 'ESK - Cibervoluntarios infobus badge.', '1', 'Spain', 'ESK', null);
INSERT INTO `cms_badge_shop` VALUES ('318', 'ESL', '1', '1', 'ESL', 'ESL - Winners badge of a Snowstorm competition along introduction of the monsterplant.', '1', 'Spain', 'ESL', null);
INSERT INTO `cms_badge_shop` VALUES ('319', 'ESM', '1', '1', 'ESM', 'ESM - April 2008. Buy the latest issue of &#8216;Star2&#8217; magazine, get 3 credits and this exclusive badge.', '1', 'Spain', 'ESM', null);
INSERT INTO `cms_badge_shop` VALUES ('320', 'ESN', '1', '1', 'ESN', 'ESN - &#8216;Dia De Internet&#8217; (Internet day), May 17.', '1', 'Spain', 'ESN', null);
INSERT INTO `cms_badge_shop` VALUES ('321', 'ESO', '1', '1', 'ESO', 'ESO - Another Tampax badge, and buggy. Lettering will be trnasparent, while a pixel outside the badge will not. You&#8217;re looking at how it is intended.', '1', 'Spain', 'ESO', null);
INSERT INTO `cms_badge_shop` VALUES ('322', 'ESP', '1', '1', 'ESP', 'ESP - Sunny Delight campaign. Anti-aliased on a white background and part of logo will be transparent&#8230;', '1', 'Spain', 'ESP', null);
INSERT INTO `cms_badge_shop` VALUES ('323', 'ESQ', '1', '1', 'ESQ', 'ESQ - Sunny Delight campaign. Anti-aliased on a white background&#8230;', '1', 'Spain', 'ESQ', null);
INSERT INTO `cms_badge_shop` VALUES ('324', 'ESR', '1', '1', 'ESR', 'ESR - Sunny Delight campaign. Anti-aliased on a white background and part of logo will be transparent&#8230;', '1', 'Spain', 'ESR', null);
INSERT INTO `cms_badge_shop` VALUES ('325', 'ESS', '1', '1', 'ESS', 'ESS - Chicas de Cuidado promotion in Spain (&#8230;).', '1', 'Spain', 'ESS', null);
INSERT INTO `cms_badge_shop` VALUES ('326', 'EST', '1', '1', 'EST', 'EST - Western campaign, 2008.', '1', 'Spain', 'EST', null);
INSERT INTO `cms_badge_shop` VALUES ('327', 'ESU', '1', '1', 'ESU', 'ESU - Western campaign, 2008.', '1', 'Spain', 'ESU', null);
INSERT INTO `cms_badge_shop` VALUES ('328', 'ESV', '1', '1', 'ESV', 'ESV - Competitions around the 70&#8217;s - Music theme.', '1', 'Spain', 'ESV', null);
INSERT INTO `cms_badge_shop` VALUES ('329', 'ESW', '1', '1', 'ESW', 'ESW - Competitions around the 70&#8217;s - Movies theme.', '1', 'Spain', 'ESW', null);
INSERT INTO `cms_badge_shop` VALUES ('330', 'ESX', '1', '1', 'ESX', 'ESX - Competitions around the 70&#8217;s - TV series theme.', '1', 'Spain', 'ESX', null);
INSERT INTO `cms_badge_shop` VALUES ('331', 'ESY', '1', '1', 'ESY', 'ESY - ?', '1', 'Spain', 'ESY', null);
INSERT INTO `cms_badge_shop` VALUES ('332', 'ESZ', '1', '1', 'ESZ', 'ESZ - CanalBuzz promotion.', '1', 'Spain', 'ESZ', null);
INSERT INTO `cms_badge_shop` VALUES ('333', 'TAM', '1', '1', 'TAM', 'TAM - &#8220;Chica Tampax&#8221;. Tampax campaign in Spanish hotel. Seems you can enter the Tampax Club and get the badge.', '1', 'Spain', 'TAM', null);
INSERT INTO `cms_badge_shop` VALUES ('334', 'REX', '1', '1', 'REX', 'REX - Rexona campaign in Spain (exact copy of FI8).', '1', 'Spain', 'REX', null);
INSERT INTO `cms_badge_shop` VALUES ('335', 'E11', '1', '1', 'E11', 'E11 - EL PA&#205;S (newspaper) student campaign, 2008.', '1', 'Spain', 'E11', null);
INSERT INTO `cms_badge_shop` VALUES ('336', 'E12', '1', '1', 'E12', 'E12 - Lacoste &#8216;Touch of Pink&#8217; campaign, 2008.', '1', 'Spain', 'E12', null);
INSERT INTO `cms_badge_shop` VALUES ('337', 'FI1', '1', '1', 'FI1', 'FI1 - Infobus staff Finland (EOPH, anti-drugs organisation).', '1', 'Finland', 'FI1', null);
INSERT INTO `cms_badge_shop` VALUES ('338', 'FI2', '1', '1', 'FI2', 'FI2 - &#8216;Manteli&#8217; (&#8220;Almond&#8221;) badge. A yearly non-profit campaign by some collaborating organisations, including Sulake and the non-profit organisations in hotel. Goal: give children in need a better christmas.', '1', 'Finland', 'FI2', null);
INSERT INTO `cms_badge_shop` VALUES ('339', 'FI3', '1', '1', 'FI3', 'FI3 - &#8220;Netari&#8221; badge, Finland (youthcare on the internet). Not in infobus, usually in the &#8216;Den&#8217;.', '1', 'Finland', 'FI3', null);
INSERT INTO `cms_badge_shop` VALUES ('340', 'FI4', '1', '1', 'FI4', 'FI4 - Tukari badge, related to Netari (Finland) - for trained adults on matters of mental health (not in infobus, just around in hotel). Not in use anymore.', '1', 'Finland', 'FI4', null);
INSERT INTO `cms_badge_shop` VALUES ('341', 'FI5', '1', '1', 'FI5', 'FI5 - Sponsor in Finland (used at competition). AXN! is a candybar.', '1', 'Finland', 'FI5', null);
INSERT INTO `cms_badge_shop` VALUES ('342', 'FI6', '1', '1', 'FI6', 'FI6 - Appari badge, related to FI3 badge, Netari helper badge; for young people (14-17), having helped out Netari staff in any way (and living near Helsinki).', '1', 'Finland', 'FI6', null);
INSERT INTO `cms_badge_shop` VALUES ('343', 'FI7', '1', '1', 'FI7', 'FI7 - For the &#8216;Mannerheim League for Child Welfare&#8217;. Not in infobus, usually in temporarily available &#8216;Eric&#8217;s Eaterie&#8217;', '1', 'Finland', 'FI7', null);
INSERT INTO `cms_badge_shop` VALUES ('344', 'FI8', '1', '1', 'FI8', 'FI8 - Campaign for Rexona Girl (deodorant) in Finland. Given to girls joining the Rexona group. Badges seems permanently deleted now.', '1', 'Finland', 'FI8', null);
INSERT INTO `cms_badge_shop` VALUES ('345', 'FI9', '1', '1', 'FI9', 'FI9 - Campaign for Rexona Girl in Finland. Given to girls joining the Rexona group (again).', '1', 'Finland', 'FI9', null);
INSERT INTO `cms_badge_shop` VALUES ('346', 'FIA', '1', '1', 'FIA', 'FIA - &#8216;Posti&#8217; scratch cards, available in Finland. Official &#8220;most yellow-hat Habbo\'s in the Posti-room&#8221;, for all participants.', '1', 'Finland', 'FIA', null);
INSERT INTO `cms_badge_shop` VALUES ('347', 'FIB', '1', '1', 'FIB', 'FIB - Badge related to Felix, a ketchup brand in Finland. Given to people who join the group for the event.', '1', 'Finland', 'FIB', null);
INSERT INTO `cms_badge_shop` VALUES ('348', 'FIC', '1', '1', 'FIC', 'FIC - Clearasil campaign in Finland (join the group and receive it).', '1', 'Finland', 'FIC', null);
INSERT INTO `cms_badge_shop` VALUES ('349', 'FID', '1', '1', 'FID', 'FID - Bonbon campaign in Finland (sweets // bonbon.fi). Join group and get it.', '1', 'Finland', 'FID', null);
INSERT INTO `cms_badge_shop` VALUES ('350', 'FIE', '1', '1', 'FIE', 'FIE - Funpark promotion (new track). Join the group and get it.', '1', 'Finland', 'FIE', null);
INSERT INTO `cms_badge_shop` VALUES ('351', 'FIF', '1', '1', 'FIF', 'FIF - Kung Fu Panda movie promotion. Join the group and get the badge.', '1', 'Finland', 'FIF', null);
INSERT INTO `cms_badge_shop` VALUES ('352', 'FIG', '1', '1', 'FIG', 'FIG - &#8216;EF Education&#8217; campaign, 2008. Join the group and get the badge.', '1', 'Finland', 'FIG', null);
INSERT INTO `cms_badge_shop` VALUES ('353', 'FIH', '1', '1', 'FIH', 'FIH - &#8216;Dove&#8217; campaign in Finland. Join the group and get the badge.', '1', 'Finland', 'FIH', null);
INSERT INTO `cms_badge_shop` VALUES ('354', 'FII', '1', '1', 'FII', 'FII - &#8216;Madagascar 2&#8217; movie promotion in Finland. Join the group and get the badge.', '1', 'Finland', 'FII', null);
INSERT INTO `cms_badge_shop` VALUES ('355', 'FIJ', '1', '1', 'FIJ', 'FIJ - Spyro promotion campaign, 2008. Join the group and get the badge.', '1', 'Finland', 'FIJ', null);
INSERT INTO `cms_badge_shop` VALUES ('356', 'TUU', '1', '1', 'TUU', 'TUU - Hrm, Tuu is hotelmanager in Finland, and she&#8217;s been seen with the badge. Said to be a gift for Tuu, designed by BruceBlues (source: Habbomatic).', '1', 'Finland', 'TUU', null);
INSERT INTO `cms_badge_shop` VALUES ('357', 'HUB', '1', '1', 'HUB', 'HUB - &#8216;HUBU&#8217; stands for drug information bus (the words &#8216;Huumetta&#8217; and &#8216;Bussi&#8217; combined. Same as the FI1 EOPH badge.', '1', 'Finland', 'HUB', null);
INSERT INTO `cms_badge_shop` VALUES ('358', 'FR4', '1', '1', 'FR4', 'FR4 - HabboR&#233;dac\' badge (France). Monthly contest in which you have to write an article on a given safety theme. Removed after v20.', '1', 'France', 'FR4.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('359', 'FR5', '1', '1', 'FR5', 'FR5 - &#8216;Membre du J\'s fanclub&#8217; J = Johno, Sulake staff. He was visiting France; could only be worn by staff.', '1', 'France', 'FR5.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('360', 'FR6', '1', '1', 'FR6', 'FR6 - Rewarded in Habbo ORO (Gold) campaign. For 10 habbo&#8217;s voted to be unbanned.', '1', 'France', 'FR6.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('361', 'FR7', '1', '1', 'FR7', 'FR7 - Rewarded in Habbo ORO (Gold) campaign.', '1', 'France', 'FR7.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('362', 'FR8', '1', '1', 'FR8', 'FR8 - &#8216;MISSION:L.A.P.I.N.&#8217; (a space explore like campaign) - badge when choosing side of Norman, hotel manager.', '1', 'France', 'FR8.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('363', 'FR9', '1', '1', 'FR9', 'FR9 - &#8216;MISSION:L.A.P.I.N.&#8217; (a space explore like campaign) - badge when choosing side of ZE.KING.RABBIT. Also used for Habbofest &#8217;08 (AU).', '1', 'France', 'FR9.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('364', 'FRA', '1', '1', 'FRA', 'FRA - Seen on people, for what ?!', '1', 'France', 'FRA.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('365', 'FRB', '1', '1', 'FRB', 'FRB - Miss Habbo 2007 winnerscrown.', '1', 'France', 'FRB.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('366', 'FRC', '1', '1', 'FRC', 'FRC - Competition badge (TIKI KROK is hungry&#8230;) - to &#8220;Bobba-bobba island&#8221; quest.', '1', 'France', 'FRC.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('367', 'FRD', '1', '1', 'FRD', 'FRD - Competition badge (Ecotron released within scope of competition) - to &#8220;Bobba-bobba island&#8221; quest.', '1', 'France', 'FRD.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('368', 'FRE', '1', '1', 'FRE', 'FRE - Competition badge - to &#8220;Bobba-bobba island&#8221; quest.', '1', 'France', 'FRE.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('369', 'FRF', '1', '1', 'FRF', 'FRF - &#8220;Fil Sant&#233; Jeunes&#8221; - youthcare organisation, upcoming in infobus (or project abandoned).', '1', 'France', 'FRF.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('370', 'FRG', '1', '1', 'FRG', 'FRG - &#8220;Ultimate bobba&#8221; competition badge (France, week of kickwars). Also used in other countries for same purpose.', '1', 'France', 'FRG.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('371', 'FRH', '1', '1', 'FRH', 'FRH - Badge related to the &#8220;Noob show&#8221;.', '1', 'France', 'FRH.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('372', 'FRI', '1', '1', 'FRI', 'FRI - &#8220;Streets of bobba 2&#8221; badge.', '1', 'France', 'FRI.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('373', 'FRJ', '1', '1', 'FRJ', 'FRJ - Same as FRC ?!', '1', 'France', 'FRJ.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('374', 'FRK', '1', '1', 'FRK', 'FRK - &#8216;Shabbolin&#8217; campaign in France. First uploaded as SHA.', '1', 'France', 'FRK.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('375', 'FRL', '1', '1', 'FRL', 'FRL - Badge design competition winner.', '1', 'France', 'FRL.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('376', 'FRM', '1', '1', 'FRM', 'FRM - Badge design competition winner.', '1', 'France', 'FRM.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('377', 'FRN', '1', '1', 'FRN', 'FRN - Badge design competition winner.', '1', 'France', 'FRN.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('378', 'FRO', '1', '1', 'FRO', 'FRO - Campaign to promote &#8220;Nouvelle Star&#8221;, TV show/singing contest. Now same as FRP.', '1', 'France', 'FRO.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('379', 'FRP', '1', '1', 'FRP', 'FRP - Updated version of the FRO badge.', '1', 'France', 'FRP.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('380', 'FRQ', '1', '1', 'FRQ', 'FRQ - Miss Habbo 2008.', '1', 'France', 'FRQ.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('381', 'FRR', '1', '1', 'FRR', 'FRR - &#8216;732&#8217; seen in newsheader to promote new teleporter, competion around its introduction.', '1', 'France', 'FRR.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('382', 'FRS', '1', '1', 'FRS', 'FRS - Availble for signing up during Habbo Music Festival (HMF), 2008.', '1', 'France', 'FRS.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('383', 'FRT', '1', '1', 'FRT', 'FRT - Something releated to games. Maybe to the GA1 badge too ?', '1', 'France', 'FRT.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('384', 'FRU', '1', '1', 'FRU', 'FRU - Pitate campaign, 2008. Skull will be partly transparent&#8230;', '1', 'France', 'FRU.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('385', 'FRV', '1', '1', 'FRV', 'FRV - French version of the second KIR badge, different use though ?', '1', 'France', 'FRV.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('386', 'F1A', '1', '1', 'F1A', 'F1A - Fix for the (unintended transparent head of the) FRU badge.', '1', 'France', 'F1A.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('387', 'F1B', '1', '1', 'F1B', 'F1B - Huh ?!', '1', 'France', 'F1B.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('388', 'FV1', '1', '1', 'FV1', 'FV1 - Winning virus design for competition, Halloween 2008.', '1', 'France', 'FV1.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('389', 'FV2', '1', '1', 'FV2', 'FV2 - Winning virus design for competition, Halloween 2008.', '1', 'France', 'FV2.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('390', 'FV3', '1', '1', 'FV3', 'FV3 - Winning virus design for competition, Halloween 2008.', '1', 'France', 'FV3.gif', null);
INSERT INTO `cms_badge_shop` VALUES ('391', 'IT1', '1', '1', 'IT1', 'IT1 - (Italy) Unicef anti-aids campaign.', '1', 'Italy', 'IT1', null);
INSERT INTO `cms_badge_shop` VALUES ('392', 'IT2', '1', '1', 'IT2', 'IT2 - Italian groups competition badge (designed by Brillo1992).', '1', 'Italy', 'IT2', null);
INSERT INTO `cms_badge_shop` VALUES ('393', 'IT3', '1', '1', 'IT3', 'IT3 - Italian groups competition badge (designed by Brillo1992).', '1', 'Italy', 'IT3', null);
INSERT INTO `cms_badge_shop` VALUES ('394', 'IT4', '1', '1', 'IT4', 'IT4 - Italian groups competition badge (designed by Brillo1992).', '1', 'Italy', 'IT4', null);
INSERT INTO `cms_badge_shop` VALUES ('395', 'IT5', '1', '1', 'IT5', 'IT5 - &#8216;Il Mago di Hai&#8217; competition badge (again designed by Brillo1992).', '1', 'Italy', 'IT5', null);
INSERT INTO `cms_badge_shop` VALUES ('396', 'IT6', '1', '1', 'IT6', 'IT6 - &#8216;Il Mago di Hai&#8217; competition badge (again designed by Brillo1992).', '1', 'Italy', 'IT6', null);
INSERT INTO `cms_badge_shop` VALUES ('397', 'IT7', '1', '1', 'IT7', 'IT7 - &#8216;Il Mago di Hai&#8217; competition badge (again designed by Brillo1992).', '1', 'Italy', 'IT7', null);
INSERT INTO `cms_badge_shop` VALUES ('398', 'IT8', '1', '1', 'IT8', 'IT8 - Given to winners of the ongoing Trax competition. Also used for Habbofest &#8217;08 (AU).', '1', 'Italy', 'IT8', null);
INSERT INTO `cms_badge_shop` VALUES ('399', 'IT9', '1', '1', 'IT9', 'IT9 - Sonohra is an Italian band paying a visit + competition, April 2008.', '1', 'Italy', 'IT9', null);
INSERT INTO `cms_badge_shop` VALUES ('400', 'ITF', '1', '1', 'ITF', 'ITF - Circus theme for Italy (badge will have white corners intended to be transparent).', '1', 'Italy', 'ITF', null);
INSERT INTO `cms_badge_shop` VALUES ('401', 'ITG', '1', '1', 'ITG', 'ITG - Circus theme for Italy.', '1', 'Italy', 'ITG', null);
INSERT INTO `cms_badge_shop` VALUES ('402', 'ITH', '1', '1', 'ITH', 'ITH - Circus theme for Italy.', '1', 'Italy', 'ITH', null);
INSERT INTO `cms_badge_shop` VALUES ('403', 'ITI', '1', '1', 'ITI', 'ITI - Circus theme for Italy.', '1', 'Italy', 'ITI', null);
INSERT INTO `cms_badge_shop` VALUES ('404', 'ITJ', '1', '1', 'ITJ', 'ITJ - Circus theme for Italy.', '1', 'Italy', 'ITJ', null);
INSERT INTO `cms_badge_shop` VALUES ('405', 'ITK', '1', '1', 'ITK', 'ITK - Circus theme for Italy.', '1', 'Italy', 'ITK', null);
INSERT INTO `cms_badge_shop` VALUES ('406', 'ITL', '1', '1', 'ITL', 'ITL - Circus theme for Italy.', '1', 'Italy', 'ITL', null);
INSERT INTO `cms_badge_shop` VALUES ('407', 'ITN', '1', '1', 'ITN', 'ITN - 5th birthday of Italian hotel, November 2008.', '1', 'Italy', 'ITN', null);
INSERT INTO `cms_badge_shop` VALUES ('408', 'ITO', '1', '1', 'ITO', 'ITO - Hiphop theme for Italy.', '1', 'Italy', 'ITO', null);
INSERT INTO `cms_badge_shop` VALUES ('409', 'ITP', '1', '1', 'ITP', 'ITP - Hiphop theme for Italy. Headlights will show unintended transparency.', '1', 'Italy', 'ITP', null);
INSERT INTO `cms_badge_shop` VALUES ('410', 'ITQ', '1', '1', 'ITQ', 'ITQ - Hiphop theme for Italy.', '1', 'Italy', 'ITQ', null);
INSERT INTO `cms_badge_shop` VALUES ('411', 'ITR', '1', '1', 'ITR', 'ITR - Hiphop theme for Italy.', '1', 'Italy', 'ITR', null);
INSERT INTO `cms_badge_shop` VALUES ('412', 'ITS', '1', '1', 'ITS', 'ITS - Hiphop theme for Italy.', '1', 'Italy', 'ITS', null);
INSERT INTO `cms_badge_shop` VALUES ('413', 'ITT', '1', '1', 'ITT', 'ITT - Hiphop theme for Italy.', '1', 'Italy', 'ITT', null);
INSERT INTO `cms_badge_shop` VALUES ('414', 'ITU', '1', '1', 'ITU', 'ITU - Hiphop theme for Italy.', '1', 'Italy', 'ITU', null);
INSERT INTO `cms_badge_shop` VALUES ('415', 'RUG', '1', '1', 'RUG', 'RUG - Rugby competition in Italy. Those who know the game say it looks more like an American football ball.', '1', 'Italy', 'RUG', null);
INSERT INTO `cms_badge_shop` VALUES ('416', 'ARB', '1', '1', 'ARB', 'ARB - We believe this to be Italian, more sports. See its buggy display below.', '1', 'Italy', 'ARB', null);
INSERT INTO `cms_badge_shop` VALUES ('417', 'NL1', '1', '1', 'NL1', 'NL1 -Infobus staff &#8220;Stichting tegen zinloos geweld&#8221; (Foundation against aimless violence).', '1', 'Netherlands', 'NL1', null);
INSERT INTO `cms_badge_shop` VALUES ('418', 'NL2', '1', '1', 'NL2', 'NL2 - Infobus staff Childright (Organisation pro global rights for Children). Not represented in infobus anymore.', '1', 'Netherlands', 'NL2', null);
INSERT INTO `cms_badge_shop` VALUES ('419', 'NL3', '1', '1', 'NL3', 'NL3 - Infobus staff Pestweb (Organisation against Child harassment).', '1', 'Netherlands', 'NL3', null);
INSERT INTO `cms_badge_shop` VALUES ('420', 'NL4', '1', '1', 'NL4', 'NL4 - Infobus staff &#8220;Artsen zonder grenzen&#8221; (&#8216;Docters without borders&#8217;, not on the hotel anymore).', '1', 'Netherlands', 'NL4', null);
INSERT INTO `cms_badge_shop` VALUES ('421', 'NL5', '1', '1', 'NL5', 'NL5 - Zweistein Battle Ball competition, 60 winners. Zweistein (a reference to Einstein, shape meant to be a brain) is an energy drink, one-time promotion on Dutch hotel.', '1', 'Netherlands', 'NL5', null);
INSERT INTO `cms_badge_shop` VALUES ('422', 'NL6', '1', '1', 'NL6', 'NL6 - Mario Bros. Battle Ball competition (over 3 weekends of free Battle Ball) winners.', '1', 'Netherlands', 'NL6', null);
INSERT INTO `cms_badge_shop` VALUES ('423', 'NL7', '1', '1', 'NL7', 'NL7 - &#8220;The Box&#8221; badge, sponsor.', '1', 'Netherlands', 'NL7', null);
INSERT INTO `cms_badge_shop` VALUES ('424', 'NL8', '1', '1', 'NL8', 'NL8 - &#8220;Fortis&#8221; competition. While somewhat nice, who&#8217;d want to wear it (the logo of financial advising company&#8230;).', '1', 'Netherlands', 'NL8', null);
INSERT INTO `cms_badge_shop` VALUES ('425', 'NL9', '1', '1', 'NL9', 'NL9 - &#8216;Habbo Music Awards&#8217; 2006, sponsored by Orange.', '1', 'Netherlands', 'NL9', null);
INSERT INTO `cms_badge_shop` VALUES ('426', 'NLA', '1', '1', 'NLA', 'NLA - &#8216;Warchild&#8217;, infobus badge.', '1', 'Netherlands', 'NLA', null);
INSERT INTO `cms_badge_shop` VALUES ('427', 'NLB', '1', '1', 'NLB', 'NLB - badge for DJ&#8217;s of official Habbo radio.', '1', 'Netherlands', 'NLB', null);
INSERT INTO `cms_badge_shop` VALUES ('428', 'NLC', '1', '1', 'NLC', 'NLC - Trax (competition) badge. Still not in use. But in use for ongoing Trax competition in Singapore.', '1', 'Netherlands', 'NLC', null);
INSERT INTO `cms_badge_shop` VALUES ('429', 'NLD', '1', '1', 'NLD', 'NLD - Trax (competition) badge. Still not in use (in NL). Used in Australia for Trax chart toppers competition. And in use for ongoing Trax competition in Singapore.', '1', 'Netherlands', 'NLD', null);
INSERT INTO `cms_badge_shop` VALUES ('430', 'NLE', '1', '1', 'NLE', 'NLE - Trax (competition) badge. Still not in use. But in use for ongoing Trax competition in Singapore.', '1', 'Netherlands', 'NLE', null);
INSERT INTO `cms_badge_shop` VALUES ('431', 'NLF', '1', '1', 'NLF', 'NLF - COC, Dutch society for the integration of homosexuality. In infobus during Week of tolerance. Rather a draft, it seems, awful blending.', '1', 'Netherlands', 'NLF', null);
INSERT INTO `cms_badge_shop` VALUES ('432', 'NLG', '1', '1', 'NLG', 'NLG - Another (final) version of the COC badge&#8230;.', '1', 'Netherlands', 'NLG', null);
INSERT INTO `cms_badge_shop` VALUES ('433', 'NLH', '1', '1', 'NLH', 'NLH - Dutch football/Postbank (sponsor) related badge.', '1', 'Netherlands', 'NLH', null);
INSERT INTO `cms_badge_shop` VALUES ('434', 'NLI', '1', '1', 'NLI', 'NLI - For infobus (?)/non-profit organization Sterkamp(.nl).', '1', 'Netherlands', 'NLI', null);
INSERT INTO `cms_badge_shop` VALUES ('435', 'SG1', '1', '1', 'SG1', 'SG1 - (Singapore) Habbo of the month, bronze medal.', '1', 'Singapore', 'SG1', null);
INSERT INTO `cms_badge_shop` VALUES ('436', 'SG2', '1', '1', 'SG2', 'SG2 - (Singapore) Habbo of the month, silver medal.', '1', 'Singapore', 'SG2', null);
INSERT INTO `cms_badge_shop` VALUES ('437', 'SG3', '1', '1', 'SG3', 'SG3 - (Singapore) Habbo of the month, gold medal.', '1', 'Singapore', 'SG3', null);
INSERT INTO `cms_badge_shop` VALUES ('438', 'SG4', '1', '1', 'SG4', 'SG4 - (Singapore) Nike goes Singapore, competition badge.', '1', 'Singapore', 'SG4', null);
INSERT INTO `cms_badge_shop` VALUES ('439', 'SG5', '1', '1', 'SG5', 'SG5 - (Singapore) &#8220;Project Habboway&#8221; competition - build a fashion runway&#8230; Also used for Habbofest &#8217;08 (AU).', '1', 'Singapore', 'SG5', null);
INSERT INTO `cms_badge_shop` VALUES ('440', 'SG6', '1', '1', 'SG6', 'SG6 - (Singapore) Astro Wobble Squabble Tournament, december 2006.', '1', 'Singapore', 'SG6', null);
INSERT INTO `cms_badge_shop` VALUES ('441', 'SG7', '1', '1', 'SG7', 'SG7 - (Singapore) Astro Wobble Squabble Tournament, december 2006.', '1', 'Singapore', 'SG7', null);
INSERT INTO `cms_badge_shop` VALUES ('442', 'SG8', '1', '1', 'SG8', 'SG8 - (Singapore) Astro Wobble Squabble Tournament, december 2006.', '1', 'Singapore', 'SG8', null);
INSERT INTO `cms_badge_shop` VALUES ('443', 'SG9', '1', '1', 'SG9', 'SG9 - (Singapore) Habbo awards, 2007. Also used in Norway, 2008.', '1', 'Singapore', 'SG9', null);
INSERT INTO `cms_badge_shop` VALUES ('444', 'S10', '1', '1', 'S10', 'S10 - Chinese New Year, 2007 - also used outside Singapore.', '1', 'Singapore', 'S10', null);
INSERT INTO `cms_badge_shop` VALUES ('445', 'HO1', '1', '1', 'HO1', 'HO1 - Habbolympics 2007 (Singapore only ?) - thanks Deano for the explanation.', '1', 'Singapore', 'HO1', null);
INSERT INTO `cms_badge_shop` VALUES ('446', 'SGR', '1', '1', 'SGR', 'SGR - Rose badge (Singapore). Design the best Zen maze with the new hedge furniture.', '1', 'Singapore', 'SGR', null);
INSERT INTO `cms_badge_shop` VALUES ('447', 'DJ1', '1', '1', 'DJ1', 'DJ1 - Nokia XXXtreme challenge (Singapore). Awarded when having a certain amount of questions answered correctly.', '1', 'Singapore', 'DJ1', null);
INSERT INTO `cms_badge_shop` VALUES ('448', 'DJ2', '1', '1', 'DJ2', 'DJ2 - Nokia XXXtreme challenge (Singapore). Awarded when having a certain amount of questions answered correctly.', '1', 'Singapore', 'DJ2', null);
INSERT INTO `cms_badge_shop` VALUES ('449', 'DJ3', '1', '1', 'DJ3', 'DJ3 - Nokia XXXtreme challenge (Singapore). Awarded when having a certain amount of questions answered correctly.', '1', 'Singapore', 'DJ3', null);
INSERT INTO `cms_badge_shop` VALUES ('450', 'SMC', '1', '1', 'SMC', 'SMC - (Singapore Master Chef). Awarded in the &#8220;Foodies and Friends&#8221; competition.', '1', 'Singapore', 'SMC', null);
INSERT INTO `cms_badge_shop` VALUES ('451', 'AM1', '1', '1', 'AM1', 'AM1 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM1', null);
INSERT INTO `cms_badge_shop` VALUES ('452', 'AM2', '1', '1', 'AM2', 'AM2 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM2', null);
INSERT INTO `cms_badge_shop` VALUES ('453', 'AM3', '1', '1', 'AM3', 'AM3 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM3', null);
INSERT INTO `cms_badge_shop` VALUES ('454', 'AM4', '1', '1', 'AM4', 'AM4 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM4', null);
INSERT INTO `cms_badge_shop` VALUES ('455', 'AM5', '1', '1', 'AM5', 'AM5 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM5', null);
INSERT INTO `cms_badge_shop` VALUES ('456', 'AM6', '1', '1', 'AM6', 'AM6 - &#8216;Animax&#8217; is the TV channel that broadcasts &#8216;Jigoku Shoujo - Girl From Hell&#8217; (Anime) in Singapore, on which these badges are based for the &#8216;Habbo Anime Horror Fest&#8217;.', '1', 'Singapore', 'AM6', null);
INSERT INTO `cms_badge_shop` VALUES ('457', 'FW1', '1', '1', 'FW1', 'FW1 - &#8216;Furni warz&#8217; - representing the &#8216;Yuppie glam&#8217; side (November 2007).', '1', 'Singapore', 'FW1', null);
INSERT INTO `cms_badge_shop` VALUES ('458', 'FW2', '1', '1', 'FW2', 'FW2 - &#8216;Furni warz&#8217; - representing the &#8216;Indie chic&#8217; side (November 2007).', '1', 'Singapore', 'FW2', null);
INSERT INTO `cms_badge_shop` VALUES ('459', 'SGA', '1', '1', 'SGA', 'SGA - &#8216;Slam dunk&#8217; promotion, a Manga/Anime series, televisionized and aired by Animax (new episodes).', '1', 'Singapore', 'SGA', null);
INSERT INTO `cms_badge_shop` VALUES ('460', 'SGB', '1', '1', 'SGB', 'SGB - &#8216;Slam dunk&#8217; promotion, a Manga/Anime series, televisionized and aired by Animax (new episodes).', '1', 'Singapore', 'SGB', null);
INSERT INTO `cms_badge_shop` VALUES ('461', 'SGD', '1', '1', 'SGD', 'SGD - Magnifying Glass badge for the Madball Mystery competition, June/July 2008.', '1', 'Singapore', 'SGD', null);
INSERT INTO `cms_badge_shop` VALUES ('462', 'MT1', '1', '1', 'MT1', 'MT1 - For the &#8220;MTV Asia Awards&#8221;, 2008.', '1', 'Singapore', 'MT1', null);
INSERT INTO `cms_badge_shop` VALUES ('463', 'MT2', '1', '1', 'MT2', 'MT2 - For the &#8220;MTV Asia Awards&#8221;, 2008', '1', 'Singapore', 'MT2', null);
INSERT INTO `cms_badge_shop` VALUES ('464', 'MT3', '1', '1', 'MT3', 'MT3 - For the &#8220;MTV Asia Awards&#8221;, 2008.', '1', 'Singapore', 'MT3', null);
INSERT INTO `cms_badge_shop` VALUES ('465', 'SGC', '1', '1', 'SGC', 'SGC - Given to Habbos who&#8217;s alts get published on the Graffiti Wall. C for camera ?', '1', 'Singapore', 'SGC', null);
INSERT INTO `cms_badge_shop` VALUES ('466', 'SGN', '1', '1', 'SGN', 'SGN - Give to Habbos who&#8217;s newsletters or poems get published. N for newspaper ?', '1', 'Singapore', 'SGN', null);
INSERT INTO `cms_badge_shop` VALUES ('467', 'SGQ', '1', '1', 'SGQ', 'SGQ - Q for quill ?', '1', 'Singapore', 'SGQ', null);
INSERT INTO `cms_badge_shop` VALUES ('468', 'UK1', '1', '1', 'UK1', 'UK1 - UK infobus staff, general badge.', '1', 'United Kingdom', 'UK1', null);
INSERT INTO `cms_badge_shop` VALUES ('469', 'UK2', '1', '1', 'UK2', 'UK2 - 2005 &#8216;Always&#8217; staff (UK campaign).', '1', 'United Kingdom', 'UK2', null);
INSERT INTO `cms_badge_shop` VALUES ('470', 'UK3', '1', '1', 'UK3', 'UK3 - Infobus staff &#8216;Frank&#8217;, UK anti-drugs organisation.', '1', 'United Kingdom', 'UK3', null);
INSERT INTO `cms_badge_shop` VALUES ('471', 'UK4', '1', '1', 'UK4', 'UK4 - Habbo Council badge (no council anymore after leaving of manager Callie).', '1', 'United Kingdom', 'UK4', null);
INSERT INTO `cms_badge_shop` VALUES ('472', 'UK5', '1', '1', 'UK5', 'UK5 - Badge awarded for the comic competition every two weeks.', '1', 'United Kingdom', 'UK5', null);
INSERT INTO `cms_badge_shop` VALUES ('473', 'UK6', '1', '1', 'UK6', 'UK6 - Badge awarded for the &#8216;design a billboard&#8217; competition every two weeks. Taken from DT1 badge.', '1', 'United Kingdom', 'UK6', null);
INSERT INTO `cms_badge_shop` VALUES ('474', 'UK7', '1', '1', 'UK7', 'UK7 - Not known yet.', '1', 'United Kingdom', 'UK7', null);
INSERT INTO `cms_badge_shop` VALUES ('475', 'UK8', '1', '1', 'UK8', 'UK8 - NSPCC/Childline badge, anti-bullying campaign in UK', '1', 'United Kingdom', 'UK8', null);
INSERT INTO `cms_badge_shop` VALUES ('476', 'UK9', '1', '1', 'UK9', 'UK9 - Awarded in UK&#8217;s &#8216;Japan quest&#8217;, July 2007. Also used in other countries, like Australia, with release of Japanese furniture.', '1', 'United Kingdom', 'UK9', null);
INSERT INTO `cms_badge_shop` VALUES ('477', 'UKA', '1', '1', 'UKA', 'UKA - Awarded in UK&#8217;s &#8216;Habbo beach resort&#8217; competition, August 2007.', '1', 'United Kingdom', 'UKA', null);
INSERT INTO `cms_badge_shop` VALUES ('478', 'UKB', '1', '1', 'UKB', 'UKB - Theatre badge, play writing competition.', '1', 'United Kingdom', 'UKB', null);
INSERT INTO `cms_badge_shop` VALUES ('479', 'UKC', '1', '1', 'UKC', 'UKC - Journalist badge, Adventure story competition.', '1', 'United Kingdom', 'UKC', null);
INSERT INTO `cms_badge_shop` VALUES ('480', 'UKD', '1', '1', 'UKD', 'UKD - Adventure Story Best Seller&#8217;s badge, September 2007.', '1', 'United Kingdom', 'UKD', null);
INSERT INTO `cms_badge_shop` VALUES ('481', 'UKN', '1', '1', 'UKN', 'UKN - &#8216;Hafta 2007&#8217; side-competition of Habbowood.', '1', 'United Kingdom', 'UKN', null);
INSERT INTO `cms_badge_shop` VALUES ('482', 'UKE', '1', '1', 'UKE', 'UKE - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKE', null);
INSERT INTO `cms_badge_shop` VALUES ('483', 'UKF', '1', '1', 'UKF', 'UKF - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKF', null);
INSERT INTO `cms_badge_shop` VALUES ('484', 'UKG', '1', '1', 'UKG', 'UKG - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKG', null);
INSERT INTO `cms_badge_shop` VALUES ('485', 'UKH', '1', '1', 'UKH', 'UKH - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKH', null);
INSERT INTO `cms_badge_shop` VALUES ('486', 'UKI', '1', '1', 'UKI', 'UKI - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKI', null);
INSERT INTO `cms_badge_shop` VALUES ('487', 'UKJ', '1', '1', 'UKJ', 'UKJ - Movie promotion for the &#8216;Dark is Rising&#8217;, October 2007. Enter the codeword in a poll and get one.', '1', 'United Kingdom', 'UKJ', null);
INSERT INTO `cms_badge_shop` VALUES ('488', 'UKK', '1', '1', 'UKK', 'UKK - &#8216;Fantastic4&#8217; movie promotion/competition, October 2007. For picking right choice in poll in dedicated public room.', '1', 'United Kingdom', 'UKK', null);
INSERT INTO `cms_badge_shop` VALUES ('489', 'UKL', '1', '1', 'UKL', 'UKL - &#8216;Fantastic4&#8217; movie promotion/competition, October 2007. For picking right choice in poll in dedicated public room.', '1', 'United Kingdom', 'UKL', null);
INSERT INTO `cms_badge_shop` VALUES ('490', 'UKM', '1', '1', 'UKM', 'UKM - &#8216;Fantastic4&#8217; movie promotion/competition, October 2007. For entering your &#8216;Space Station&#8217; in dedicated section of navigator.', '1', 'United Kingdom', 'UKM', null);
INSERT INTO `cms_badge_shop` VALUES ('491', 'UKO', '1', '1', 'UKO', 'UKO - Overall winners badge for the &#8216;Dark is Rising&#8217; movie promotion/competition, November 2007.', '1', 'United Kingdom', 'UKO', null);
INSERT INTO `cms_badge_shop` VALUES ('492', 'UKP', '1', '1', 'UKP', 'UKP - &#8216;St Trinian&#8217;s&#8217; movie promotion/competition, 2007/2008.', '1', 'United Kingdom', 'UKP', null);
INSERT INTO `cms_badge_shop` VALUES ('493', 'UKQ', '1', '1', 'UKQ', 'UKQ - &#8216;St Trinian&#8217;s&#8217; movie promotion/competition, 2007/2008.', '1', 'United Kingdom', 'UKQ', null);
INSERT INTO `cms_badge_shop` VALUES ('494', 'UKR', '1', '1', 'UKR', 'UKR - &#8216;St Trinian&#8217;s&#8217; movie promotion/competition, 2007/2008.', '1', 'United Kingdom', 'UKR', null);
INSERT INTO `cms_badge_shop` VALUES ('495', 'UKS', '1', '1', 'UKS', 'UKS - Someone figured out the UKP badge was too big.', '1', 'United Kingdom', 'UKS', null);
INSERT INTO `cms_badge_shop` VALUES ('496', 'UKT', '1', '1', 'UKT', 'UKT - Themepark campaign in UK, March 2008. Award for game/room designs.', '1', 'United Kingdom', 'UKT', null);
INSERT INTO `cms_badge_shop` VALUES ('497', 'UKU', '1', '1', 'UKU', 'UKU - Themepark campaign in UK, March 2008. Awarded to people best dressed as clown.', '1', 'United Kingdom', 'UKU', null);
INSERT INTO `cms_badge_shop` VALUES ('498', 'UKV', '1', '1', 'UKV', 'UKV - Themepark campaign in UK, March 2008, rollercoaster gold. Award for best designed themepark ride.', '1', 'United Kingdom', 'UKV', null);
INSERT INTO `cms_badge_shop` VALUES ('499', 'UKW', '1', '1', 'UKW', 'UKW - Themepark campaign in UK, March 2008, rollercoaster silver. Award for best designed themepark ride.', '1', 'United Kingdom', 'UKW', null);
INSERT INTO `cms_badge_shop` VALUES ('500', 'UKX', '1', '1', 'UKX', 'UKX - St. Trinians Quiz winners badge, April 2008.', '1', 'United Kingdom', 'UKX', null);
INSERT INTO `cms_badge_shop` VALUES ('501', 'UKY', '1', '1', 'UKY', 'UKY - &#8216;Genius badge&#8217; (E=mc&#178; is a formula by Einstein). For the weekly winner of the Quest Guild.', '1', 'United Kingdom', 'UKY', null);
INSERT INTO `cms_badge_shop` VALUES ('502', 'UKZ', '1', '1', 'UKZ', 'UKZ - Awarded during Fashion week, May 2008.', '1', 'United Kingdom', 'UKZ', null);
INSERT INTO `cms_badge_shop` VALUES ('503', 'Z01', '1', '1', 'Z01', 'Z01 - &#8216;Habbo model&#8217;.', '1', 'United Kingdom', 'Z01', null);
INSERT INTO `cms_badge_shop` VALUES ('504', 'Z02', '1', '1', 'Z02', 'Z02 - About global warming.', '1', 'United Kingdom', 'Z02', null);
INSERT INTO `cms_badge_shop` VALUES ('505', 'Z03', '1', '1', 'Z03', 'Z03 - About global warming.', '1', 'United Kingdom', 'Z03', null);
INSERT INTO `cms_badge_shop` VALUES ('506', 'Z04', '1', '1', 'Z04', 'Z04 - About global warming.', '1', 'United Kingdom', 'Z04', null);
INSERT INTO `cms_badge_shop` VALUES ('507', 'Z05', '1', '1', 'Z05', 'Z05 - Causing quite a stir online, people assuming - rightfully - this would be the end of the eXperts. It was.', '1', 'United Kingdom', 'Z05', null);
INSERT INTO `cms_badge_shop` VALUES ('508', 'Z06', '1', '1', 'Z06', 'Z06 - Prize in a competition releated to the movie &#8216;Step Up 2: The Streets&#8217;.', '1', 'United Kingdom', 'Z06', null);
INSERT INTO `cms_badge_shop` VALUES ('509', 'Z07', '1', '1', 'Z07', 'Z07 - Prize in a competition releated to the movie &#8216;Step Up 2: The Streets&#8217;.', '1', 'United Kingdom', 'Z07', null);
INSERT INTO `cms_badge_shop` VALUES ('510', 'Z08', '1', '1', 'Z08', 'Z08 - Prize in a competition releated to the movie &#8216;Step Up 2: The Streets&#8217;.', '1', 'United Kingdom', 'Z08', null);
INSERT INTO `cms_badge_shop` VALUES ('511', 'Z09', '1', '1', 'Z09', 'Z09 - Underage festival, 2008.', '1', 'United Kingdom', 'Z09', null);
INSERT INTO `cms_badge_shop` VALUES ('512', 'Z10', '1', '1', 'Z10', 'Z10 - Underage festival, 2008.', '1', 'United Kingdom', 'Z10', null);
INSERT INTO `cms_badge_shop` VALUES ('513', 'Z11', '1', '1', 'Z11', 'Z11 - Habbo Big Brother in UK, 2008.', '1', 'United Kingdom', 'Z11', null);
INSERT INTO `cms_badge_shop` VALUES ('514', 'Z12', '1', '1', 'Z12', 'Z12 - Habbo Big Brother in UK, 2008.', '1', 'United Kingdom', 'Z12', null);
INSERT INTO `cms_badge_shop` VALUES ('515', 'Z13', '1', '1', 'Z13', 'Z13 - Habbo Big Brother in UK, 2008.', '1', 'United Kingdom', 'Z13', null);
INSERT INTO `cms_badge_shop` VALUES ('516', 'Z14', '1', '1', 'Z14', 'Z14 - Competition in UK, &#8216;My Spy Family&#8217;.', '1', 'United Kingdom', 'Z14', null);
INSERT INTO `cms_badge_shop` VALUES ('517', 'Z15', '1', '1', 'Z15', 'Z15 - Competition in UK, &#8216;My Spy Family&#8217;.', '1', 'United Kingdom', 'Z15', null);
INSERT INTO `cms_badge_shop` VALUES ('518', 'Z16', '1', '1', 'Z16', 'Z16 - Competition in UK, &#8216;My Spy Family&#8217;.', '1', 'United Kingdom', 'Z16', null);
INSERT INTO `cms_badge_shop` VALUES ('519', 'Z17', '1', '1', 'Z17', 'Z17 - For &#8216;Hairspray: The School Musical&#8217;.', '1', 'United Kingdom', 'Z17', null);
INSERT INTO `cms_badge_shop` VALUES ('520', 'Z18', '1', '1', 'Z18', 'Z18 - NHS campagin &#8216;Arm Against Cervical Cancer&#8217;.', '1', 'United Kingdom', 'Z18', null);
INSERT INTO `cms_badge_shop` VALUES ('521', 'Z19', '1', '1', 'Z19', 'Z19 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z19', null);
INSERT INTO `cms_badge_shop` VALUES ('522', 'Z20', '1', '1', 'Z20', 'Z20 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z20', null);
INSERT INTO `cms_badge_shop` VALUES ('523', 'Z21', '1', '1', 'Z21', 'Z21 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z21', null);
INSERT INTO `cms_badge_shop` VALUES ('524', 'Z22', '1', '1', 'Z22', 'Z22 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z22', null);
INSERT INTO `cms_badge_shop` VALUES ('525', 'Z23', '1', '1', 'Z23', 'Z23 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z23', null);
INSERT INTO `cms_badge_shop` VALUES ('526', 'Z24', '1', '1', 'Z24', 'Z24 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z24', null);
INSERT INTO `cms_badge_shop` VALUES ('527', 'Z25', '1', '1', 'Z25', 'Z25 - &#8216;Igor the evil scientist&#8217; movie campaign.', '1', 'United Kingdom', 'Z25', null);
INSERT INTO `cms_badge_shop` VALUES ('528', 'Z26', '1', '1', 'Z26', 'Z26 - King badge for Diner race.', '1', 'United Kingdom', 'Z26', null);
INSERT INTO `cms_badge_shop` VALUES ('529', 'Z27', '1', '1', 'Z27', 'Z27 - Queen badge for Diner race.', '1', 'United Kingdom', 'Z27', null);
INSERT INTO `cms_badge_shop` VALUES ('530', 'Z28', '1', '1', 'Z28', 'Z28 - The insiders TV show promotion.', '1', 'United Kingdom', 'Z28', null);
INSERT INTO `cms_badge_shop` VALUES ('531', 'Z29', '1', '1', 'Z29', 'Z29 - The insiders TV show promotion.', '1', 'United Kingdom', 'Z29', null);
INSERT INTO `cms_badge_shop` VALUES ('532', 'Z30', '1', '1', 'Z30', 'Z30 - Halloween 2008, design a pumpkin competition.', '1', 'United Kingdom', 'Z30', null);
INSERT INTO `cms_badge_shop` VALUES ('533', 'Z31', '1', '1', 'Z31', 'Z31 - Same use as VIP badge, visiting celebs.', '1', 'United Kingdom', 'Z31', null);
INSERT INTO `cms_badge_shop` VALUES ('534', 'Z32', '1', '1', 'Z32', 'Z32 - Childline Idea Agency campaign, December 2008.', '1', 'United Kingdom', 'Z32', null);
INSERT INTO `cms_badge_shop` VALUES ('535', 'Z33', '1', '1', 'Z33', 'Z33 - Childline Idea Agency campaign, December 2008.', '1', 'United Kingdom', 'Z33', null);
INSERT INTO `cms_badge_shop` VALUES ('536', 'Z34', '1', '1', 'Z34', 'Z34 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z34', null);
INSERT INTO `cms_badge_shop` VALUES ('537', 'Z35', '1', '1', 'Z35', 'Z35 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z35', null);
INSERT INTO `cms_badge_shop` VALUES ('538', 'Z36', '1', '1', 'Z36', 'Z36 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z36', null);
INSERT INTO `cms_badge_shop` VALUES ('539', 'Z37', '1', '1', 'Z37', 'Z37 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z37', null);
INSERT INTO `cms_badge_shop` VALUES ('540', 'Z38', '1', '1', 'Z38', 'Z38 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z38', null);
INSERT INTO `cms_badge_shop` VALUES ('541', 'Z39', '1', '1', 'Z39', 'Z39 - &#8216;Hotel for Dogs&#8217; movie promotion, January 2009. Supposedly worldwide.', '1', 'United Kingdom', 'Z39', null);
INSERT INTO `cms_badge_shop` VALUES ('542', 'ST1', '1', '1', 'ST1', 'ST1 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST1', null);
INSERT INTO `cms_badge_shop` VALUES ('543', 'ST2', '1', '1', 'ST2', 'ST2 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST2', null);
INSERT INTO `cms_badge_shop` VALUES ('544', 'ST3', '1', '1', 'ST3', 'ST3 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST3', null);
INSERT INTO `cms_badge_shop` VALUES ('545', 'ST4', '1', '1', 'ST4', 'ST4 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST4', null);
INSERT INTO `cms_badge_shop` VALUES ('546', 'ST5', '1', '1', 'ST5', 'ST5 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST5', null);
INSERT INTO `cms_badge_shop` VALUES ('547', 'ST6', '1', '1', 'ST6', 'ST6 - Scienceandmaths.net campaign, 2008.', '1', 'United Kingdom', 'ST6', null);
INSERT INTO `cms_badge_shop` VALUES ('548', 'US1', '1', '1', 'US1', 'US1 - US &#8216;Verb&#8217; (sponsor) badge.', '1', 'USA', 'US1', null);
INSERT INTO `cms_badge_shop` VALUES ('549', 'US2', '1', '1', 'US2/5', 'US2 - Part of promotion &#8220;Eye-toy&#8221; in USA.', '1', 'USA', 'US2', null);
INSERT INTO `cms_badge_shop` VALUES ('550', 'US3', '1', '1', 'US3', 'US3 - Part of promotion &#8220;Eye-toy&#8221; in USA.', '1', 'USA', 'US3', null);
INSERT INTO `cms_badge_shop` VALUES ('551', 'US4', '1', '1', 'US4', 'US4 - Part of promotion &#8220;Eye-toy&#8221; in USA.', '1', 'USA', 'US4', null);
INSERT INTO `cms_badge_shop` VALUES ('552', 'US5', '1', '1', 'US5', 'US5 - Part of promotion &#8220;Eye-toy&#8221; in USA. same as the US2 badge.', '1', 'USA', 'US5', null);
INSERT INTO `cms_badge_shop` VALUES ('553', 'US6', '1', '1', 'US6', 'US6 - &#8216;NBC&#8217; (basketball) badge in USA. Almost same as DU1 (some slight color differences).', '1', 'USA', 'US6', null);
INSERT INTO `cms_badge_shop` VALUES ('554', 'US8', '1', '1', 'US8', 'US8 - For a long time only owned by &#8216;Sk8erK1dd&#8217;, for winning the &#8220;Toilet Marathon Competition&#8221; in USA. Now a second winner has it, and it&#8217;s been used in Singapore too.', '1', 'USA', 'US8', null);
INSERT INTO `cms_badge_shop` VALUES ('555', 'US9', '1', '1', 'US9', 'US9 - Upcoming promotion related to vampirefreaks.com. Probably not final version (designed for a white background&#8230;).', '1', 'USA', 'US9', null);
INSERT INTO `cms_badge_shop` VALUES ('556', 'USA', '1', '1', 'USA', 'USA - Adidas &#8216;bounce&#8217; Batteball tournament, December 2007.', '1', 'USA', 'USA', null);
INSERT INTO `cms_badge_shop` VALUES ('557', 'USB', '1', '1', 'USB', 'USB - Adidas &#8216;bounce&#8217; Batteball tournament, December 2007.', '1', 'USA', 'USB', null);
INSERT INTO `cms_badge_shop` VALUES ('558', 'USC', '1', '1', 'USC', 'USC - Movie/DVD promotion in US and Canada, &#8220;Bring it on: in it to win it&#8221;. About cheerleading competition between Jets and Sharks.', '1', 'USA', 'USC', null);
INSERT INTO `cms_badge_shop` VALUES ('559', 'USD', '1', '1', 'USD', 'USD - Movie/DVD promotion in US and Canada, &#8220;Bring it on: in it to win it&#8221;. About cheerleading competition between Jets and Sharks.', '1', 'USA', 'USD', null);
INSERT INTO `cms_badge_shop` VALUES ('560', 'USE', '1', '1', 'USE', 'USE - [US/CA] Extra christmas badge, given to anyone voting for this Xmass boss, 2007. Also DK, ?', '1', 'USA', 'USE', null);
INSERT INTO `cms_badge_shop` VALUES ('561', 'USF', '1', '1', 'USF', 'USF - [US/CA] Extra christmas badge, given to anyone voting for this Xmass boss, 2007. Also DK, ?', '1', 'USA', 'USF', null);
INSERT INTO `cms_badge_shop` VALUES ('562', 'USG', '1', '1', 'USG', 'USG - [US/CA] Extra christmas badge, given to anyone voting for this Xmass boss, 2007. Also DK, ?', '1', 'USA', 'USG', null);
INSERT INTO `cms_badge_shop` VALUES ('563', 'USH', '1', '1', 'USH', 'USH - [US/CA] Extra christmas badge, given to anyone voting for this Xmass boss, 2007. Also DK, ?', '1', 'USA', 'USH', null);
INSERT INTO `cms_badge_shop` VALUES ('564', 'USI', '1', '1', 'USI', 'USI - Royal Rumble is a professional wrestling event in January.', '1', 'USA', 'USI', null);
INSERT INTO `cms_badge_shop` VALUES ('565', 'USJ', '1', '1', 'USJ', 'USJ - Logo of the &#8220;World Wrestling Entertainment, Inc.&#8221;. Related to the USI badge.', '1', 'USA', 'USJ', null);
INSERT INTO `cms_badge_shop` VALUES ('566', 'USK', '1', '1', 'USK', 'USK - Packed yet (ok, no clue) ? Badge will have unintended transparent parts.', '1', 'USA', 'USK', null);
INSERT INTO `cms_badge_shop` VALUES ('567', 'USL', '1', '1', 'USL', 'USL - The Chinese new year, starting February 7th 2008, will be the year of the Rat.', '1', 'USA', 'USL', null);
INSERT INTO `cms_badge_shop` VALUES ('568', 'USM', '1', '1', 'USM', 'USM - Another badge related to the &#8220;World Wrestling Entertainment, Inc.&#8221;.', '1', 'USA', 'USM', null);
INSERT INTO `cms_badge_shop` VALUES ('569', 'USN', '1', '1', 'USN', 'USN - Big dogs/little dogs competition. Pick a side and get the badge.', '1', 'USA', 'USN', null);
INSERT INTO `cms_badge_shop` VALUES ('570', 'USO', '1', '1', 'USO', 'USO - Big dogs/little dogs competition. Pick a side and get the badge.', '1', 'USA', 'USO', null);
INSERT INTO `cms_badge_shop` VALUES ('571', 'USP', '1', '1', 'USP', 'USP - &#8216;Prom of the dead&#8217; campaign.', '1', 'USA', 'USP', null);
INSERT INTO `cms_badge_shop` VALUES ('572', 'USQ', '1', '1', 'USQ', 'USQ - &#8216;Prom of the dead&#8217; campaign - take part in poll and get it as reward.', '1', 'USA', 'USQ', null);
INSERT INTO `cms_badge_shop` VALUES ('573', 'USR', '1', '1', 'USR', 'USR - Another &#8216;Prom of the dead&#8217; badge.', '1', 'USA', 'USR', null);
INSERT INTO `cms_badge_shop` VALUES ('574', 'USS', '1', '1', 'USS', 'USS - Another &#8216;Prom of the dead&#8217; badge. Zombie wants brainnsss.', '1', 'USA', 'USS', null);
INSERT INTO `cms_badge_shop` VALUES ('575', 'UST', '1', '1', 'UST', 'UST - &#8216;The List&#8217; monthly room competition.', '1', 'USA', 'UST', null);
INSERT INTO `cms_badge_shop` VALUES ('576', 'USU', '1', '1', 'USU', 'USU - Thanksgiving 2008.', '1', 'USA', 'USU', null);
INSERT INTO `cms_badge_shop` VALUES ('577', 'POP', '1', '1', 'POP', 'POP - &#8220;Protect your pixels&#8221;. Online safety month in US, ugliest badge ever. So, what does it mean, &#8220;Protect our pixels&#8221; or &#8220;Protect online privacy&#8221; ?!', '1', 'USA', 'POP', null);
INSERT INTO `cms_badge_shop` VALUES ('578', 'PT1', '1', '1', 'PT1', 'PT1 - &#8220;Pop-Tarts&#8221; campaign. Choose your favorite and get the badge.', '1', 'USA', 'PT1', null);
INSERT INTO `cms_badge_shop` VALUES ('579', 'PT2', '1', '1', 'PT2', 'PT2 - &#8220;Pop-Tarts&#8221; campaign. Choose your favorite and get the badge.', '1', 'USA', 'PT2', null);
INSERT INTO `cms_badge_shop` VALUES ('580', 'PX0', '1', '1', 'PX0', 'PX0 - &#8220;Straypixels&#8221; competition winners badge.', '1', 'USA', 'PX0', null);
INSERT INTO `cms_badge_shop` VALUES ('581', 'PX1', '1', '1', 'PX1', 'PX1 - &#8220;Straypixels&#8221; competition winners badge.', '1', 'USA', 'PX1', null);
INSERT INTO `cms_badge_shop` VALUES ('582', 'PX2', '1', '1', 'PX2', 'PX2 - &#8220;Straypixels&#8221; competition winners badge.', '1', 'USA', 'PX2', null);
INSERT INTO `cms_badge_shop` VALUES ('583', 'PX3', '1', '1', 'PX3', 'PX3 - &#8220;Straypixels&#8221; - new badge.', '1', 'USA', 'PX3', null);
INSERT INTO `cms_badge_shop` VALUES ('584', 'JKR', '1', '1', 'JKR', 'JKR - &#8220;Joker&#8221;, Batman movie promotion.', '1', 'USA', 'JKR', null);
INSERT INTO `cms_badge_shop` VALUES ('585', 'RR9', '1', '1', 'RR9', 'RR9 - &#8220;Royal Rumble 2009&#8221;.', '1', 'USA', 'RR9', null);
INSERT INTO `cms_badge_shop` VALUES ('586', 'NO1', '1', '1', 'NO1', 'NO1 - In Norway the infobus is &#8216;Red Cross bus&#8217;.', '1', 'Others', 'NO1', null);
INSERT INTO `cms_badge_shop` VALUES ('587', 'NO2', '1', '1', 'NO2', 'NO2 - Competition prize, maze with the new v12 hedges, &#8216;Bukkinghab&#8217; palace, march 2007.', '1', 'Others', 'NO2', null);
INSERT INTO `cms_badge_shop` VALUES ('588', 'NO3', '1', '1', 'NO3', 'NO3 - Si;D is the part of a newspaper called &#8220;Aftenposten&#8221;, where young people can write opinions, visiting hotel in search of opinions. Pronounced &#8216;Si det&#8217; (Say it).', '1', 'Others', 'NO3', null);
INSERT INTO `cms_badge_shop` VALUES ('589', 'NO4', '1', '1', 'NO4', 'NO4 - &#8216;Habbo Against Racism&#8217;. Initiative dates from 2004, now there&#8217;s a badge.', '1', 'Others', 'NO4', null);
INSERT INTO `cms_badge_shop` VALUES ('590', 'NO5', '1', '1', 'NO5', 'NO5 - Norway&#8217;s National day 2007 (17th of May).', '1', 'Others', 'NO5', null);
INSERT INTO `cms_badge_shop` VALUES ('591', 'NO6', '1', '1', 'NO6', 'NO6 - Modde is a (former) staff member with a column about sports.', '1', 'Others', 'NO6', null);
INSERT INTO `cms_badge_shop` VALUES ('592', 'NO7', '1', '1', 'NO7', 'NO7 - Medieval campaign in Norway, Sweden &#38; Denmark. Formerly uploaded as RID in album1584.', '1', 'Others', 'NO7', null);
INSERT INTO `cms_badge_shop` VALUES ('593', 'NO8', '1', '1', 'NO8', 'NO8 - Norway&#8217;s National day 2008 (17th of May).', '1', 'Others', 'NO8', null);
INSERT INTO `cms_badge_shop` VALUES ('594', 'SE1', '1', '1', 'SE1', 'SE1 - Infobus staff Sweden, &#8216;Unicef&#8217;. Not on the hotel anymore.', '1', 'Others', 'SE1', null);
INSERT INTO `cms_badge_shop` VALUES ('595', 'SE2', '1', '1', 'SE2', 'SE2 - Infobus staff Sweden, &#8216;Ungdomsf&#246;rbundet&#8217;, a department of the Red Cross.', '1', 'Others', 'SE2', null);
INSERT INTO `cms_badge_shop` VALUES ('596', 'JPA', '1', '1', 'JPA', 'JPA - &#8216;PIZZA-LA&#8217; badge. No kidding, order a pizza (or more) and get credits and badge as a bonus.', '1', 'Others', 'JPA', null);
INSERT INTO `cms_badge_shop` VALUES ('597', 'JPB', '1', '1', 'JPB', 'JPB - Smile, star visit.', '1', 'Others', 'JPB', null);
INSERT INTO `cms_badge_shop` VALUES ('598', 'JPC', '1', '1', 'JPC', 'JPC - &#8216;Yu Kimura&#8217; starvisit.', '1', 'Others', 'JPC', null);
INSERT INTO `cms_badge_shop` VALUES ('599', 'JPD', '1', '1', 'JPD', 'JPD - &#8216;Yu Kimura&#8217; starvisit.', '1', 'Others', 'JPD', null);
INSERT INTO `cms_badge_shop` VALUES ('600', 'JPS', '1', '1', 'JPS', 'JPS - &#8220;Sky&#8221; (singing girl duo), promotion in Japan, September 2008.', '1', 'Others', 'JPS', null);
INSERT INTO `cms_badge_shop` VALUES ('601', 'DE1', '1', '1', 'DE1', 'DE1 - In Germany the infobus is the &#8220;Power-Child&#8221; bus.', '1', 'Others', 'DE1', null);
INSERT INTO `cms_badge_shop` VALUES ('602', 'DE2', '1', '1', 'DE2', 'DE2 - BKE (Bundeskonferenz f&#252;r Erziehungsberatung) badge, which is a youthcare organisation. There are meetings in &#8220;BKE Jugendberatungsraum&#8221;, which is &#8216;The Den&#8217;.', '1', 'Others', 'DE2', null);
INSERT INTO `cms_badge_shop` VALUES ('603', 'DE3', '1', '1', 'DE3', 'DE3 - Fourth birthday of German hotel on 16th of March 2008. Unintended transparent parts.', '1', 'Others', 'DE3', null);
INSERT INTO `cms_badge_shop` VALUES ('604', 'DE4', '1', '1', 'DE4', 'DE4 - It&#8217;s the flag of Austria. Part of the white stripe will be unintended transparent (sides). European soccer championships, but never used.', '1', 'Others', 'DE4', null);
INSERT INTO `cms_badge_shop` VALUES ('605', 'DE5', '1', '1', 'DE5', 'DE5 - German flag, European soccer championships, competition prize.', '1', 'Others', 'DE5', null);
INSERT INTO `cms_badge_shop` VALUES ('606', 'DE6', '1', '1', 'DE6', 'DE6 - Hotel birthday. Finally a fixed version of the cake.', '1', 'Others', 'DE6', null);
INSERT INTO `cms_badge_shop` VALUES ('607', 'DE7', '1', '1', 'DE7', 'DE7 - Everybody who was online in the last week of June 2008 got this badge.', '1', 'Others', 'DE7', null);
INSERT INTO `cms_badge_shop` VALUES ('608', 'AXE', '1', '1', 'AXE', 'AXE - &#8216;AXE&#8217; (sponsor) badge. AXE once had an action in German hotel, own theater theme and all - leftover, and once used ?', '1', 'Others', 'AXE', null);
INSERT INTO `cms_badge_shop` VALUES ('609', 'RU1', '1', '1', 'RU1', 'RU1 - Unknown Russian badge.', '1', 'Others', 'RU1', null);
INSERT INTO `cms_badge_shop` VALUES ('610', 'RU2', '1', '1', 'RU2', 'RU2 - Basketball campaign ? Small part of text will be transparent.', '1', 'Others', 'RU2', null);
INSERT INTO `cms_badge_shop` VALUES ('611', 'HW3', '1', '1', 'HW3', 'HW3 - Habbowood 2007 - Seems Russian office requested a date on the badge.', '1', 'Others', 'HW3', null);
INSERT INTO `cms_badge_shop` VALUES ('612', 'BB1_2', '1', '1', 'BB1', 'BB1 - (Russia) Battleball award for ?!', '1', 'Others', 'BB1_2', null);
INSERT INTO `cms_badge_shop` VALUES ('613', 'SS1', '1', '1', 'SS1', 'SS1 - (Russia) Snowstorm award for ?!', '1', 'Others', 'SS1', null);
INSERT INTO `cms_badge_shop` VALUES ('614', 'CH1', '1', '1', 'CH1', 'CH1 - Former infobus staff badge (Schtifti - Swiss). The park/infobus are not in the hotel anymore.', '1', 'Others', 'CH1', null);
INSERT INTO `cms_badge_shop` VALUES ('615', 'CH2', '1', '1', 'CH2', 'CH2 - Former infobus staff badge (Pro Juventute - Swiss). The park/infobus are not in the hotel anymore.', '1', 'Others', 'CH2', null);
INSERT INTO `cms_badge_shop` VALUES ('616', 'CH3', '1', '1', 'CH3', 'CH3 - European soccer championships.', '1', 'Others', 'CH3', null);
INSERT INTO `cms_badge_shop` VALUES ('617', 'CH4', '1', '1', 'CH4', 'CH4 - Swiss hotel 7th anniversary.', '1', 'Others', 'CH4', null);
INSERT INTO `cms_badge_shop` VALUES ('618', 'BR1', '1', '1', 'BR1', 'BR1 - First Brazilian badge. Giraffas is a fastfood chain/sponsor in Brazil. Eye will be partly transparent (unintended).', '1', 'Others', 'BR1', null);
INSERT INTO `cms_badge_shop` VALUES ('619', 'BR2', '1', '1', 'BR2', 'BR2 - No difference whatsoever, but showing the eye transparent here.', '1', 'Others', 'BR2', null);
INSERT INTO `cms_badge_shop` VALUES ('620', 'BR3', '1', '1', 'BR3', 'BR3 - Kelloggs campaign in Brazil/Portugal.', '1', 'Others', 'BR3', null);
INSERT INTO `cms_badge_shop` VALUES ('621', 'DK1', '1', '1', 'DK1', 'DK1 - (Denmark) Competition with a &#8216;Dr. Neanderzahl&#8217; &#38; a site called mysciencenotes.dk.', '1', 'Others', 'DK1', null);
INSERT INTO `cms_badge_shop` VALUES ('622', 'DK2', '1', '1', 'DK2', 'DK2 - (Denmark) Competition with a &#8216;Dr. Neanderzahl&#8217; &#38; a site called mysciencenotes.dk.', '1', 'Others', 'DK2', null);
INSERT INTO `cms_badge_shop` VALUES ('623', 'DK3', '1', '1', 'DK3', 'DK3 - For infobus partner Cyberhus.', '1', 'Others', 'DK3', null);
INSERT INTO `cms_badge_shop` VALUES ('624', 'DK4', '1', '1', 'DK4', 'DK4 - &#8220;Guitar Hero&#8221; promotion (not only DK).', '1', 'Others', 'DK4', null);
INSERT INTO `cms_badge_shop` VALUES ('625', 'DK5', '1', '1', 'DK5', 'DK5 - &#8220;Guitar Hero&#8221; promotion (not only DK).', '1', 'Others', 'DK5', null);
INSERT INTO `cms_badge_shop` VALUES ('626', 'DK6', '1', '1', 'DK5', 'DK6 - &#8220;Guitar Hero&#8221; promotion (not only DK).', '1', 'Others', 'DK6', null);
INSERT INTO `cms_badge_shop` VALUES ('627', 'YL1', '1', '1', 'YL1', 'YL1 - China badge for active users ?', '1', 'China', 'YL1', null);
INSERT INTO `cms_badge_shop` VALUES ('628', 'YL2', '1', '1', 'YL2', 'YL2 - China veteran badge, rewarded by staff decision.', '1', 'China', 'YL2', null);
INSERT INTO `cms_badge_shop` VALUES ('629', 'HC1_CN', '1', '1', 'HC1', 'HC1 - Habbo Clubbadge in China.', '1', 'China', 'HC1_CN', null);
INSERT INTO `cms_badge_shop` VALUES ('630', 'HC2_CN', '1', '1', 'HC2', 'HC2 - Golden Habbo Clubbadge in China.', '1', 'China', 'HC2_CN', null);
INSERT INTO `cms_badge_shop` VALUES ('631', 'OF2', '1', '1', 'OF2', 'OF2 - &#8216;Official fansite&#8217;, China hotel only. They also have above FAN/FS1 badge.', '1', 'China', 'OF2', null);
INSERT INTO `cms_badge_shop` VALUES ('632', 'SC1', '1', '1', 'SC1', 'SC1 - Staff China. They also have the above ADM/S01 badge in directory (?).', '1', 'China', 'SC1', null);
INSERT INTO `cms_badge_shop` VALUES ('633', 'BZ1', '1', '1', 'BZ1', 'BZ1 - &#8216;Banzhu&#8217; badge. Used for forum moderators.', '1', 'China', 'BZ1', null);
INSERT INTO `cms_badge_shop` VALUES ('634', 'BZ2', '1', '1', 'BZ2', 'BZ2 - &#8216;Banzhu&#8217; badge #2. Banzhu is a word sounding like &#8216;pig&#8217;, hence the picture.', '1', 'China', 'BZ2', null);
INSERT INTO `cms_badge_shop` VALUES ('635', 'BZ3', '1', '1', 'BZ3', 'BZ3 - &#8216;Banzhu&#8217; badge #3. Banzhu is a word sounding like &#8216;pig&#8217;, hence the picture.', '1', 'China', 'BZ3', null);
INSERT INTO `cms_badge_shop` VALUES ('636', 'KIN', '1', '1', 'KIN', 'KIN - &#8216;King&#8217; badge, rumoured to be the Chinese HabboX badge, but they still use XXX - later on denied, seemingly for a competition.', '1', 'China', 'KIN', null);
INSERT INTO `cms_badge_shop` VALUES ('637', 'BB1', '1', '1', 'BB1', 'BB1 - The Chinese BB badge is different from the regular one, smaller and a different palette (though it took JOLE&#8217;s eyes to alert us).', '1', 'China', 'BB1', null);
INSERT INTO `cms_badge_shop` VALUES ('638', 'EM0', '1', '1', 'EM0', 'EM0 - Part of an extensive &#8216;Invite a friend in&#8217; campaign, with points, prizes and badges.', '1', 'China', 'EM0', null);
INSERT INTO `cms_badge_shop` VALUES ('639', 'EM1_old', '1', '1', 'EM1', 'EM1 - Part of an extensive &#8216;Invite a friend in&#8217; campaign, with points, prizes and badges. Now the same as EM0, this version replaced (EM0 might have been temporarily used).', '1', 'China', 'EM1_old', null);
INSERT INTO `cms_badge_shop` VALUES ('640', 'EM2', '1', '1', 'EM2', 'EM2 - Part of an extensive &#8216;Invite a friend in&#8217; campaign, with points, prizes and badges.', '1', 'China', 'EM2', null);
INSERT INTO `cms_badge_shop` VALUES ('641', 'EM3', '1', '1', 'EM3', 'EM3 - Part of an extensive &#8216;Invite a friend in&#8217; campaign, with points, prizes and badges.', '1', 'China', 'EM3', null);
INSERT INTO `cms_badge_shop` VALUES ('642', 'EM4', '1', '1', 'EM4', 'EM4 - Part of an extensive &#8216;Invite a friend in&#8217; campaign, with points, prizes and badges.', '1', 'China', 'EM4', null);
INSERT INTO `cms_badge_shop` VALUES ('643', 'MR1', '1', '1', 'MR1', 'MR1 - China badge for reporters of a BB Match. Guessing, &#8220;Match Reporter&#8221; ?', '1', 'China', 'MR1', null);
INSERT INTO `cms_badge_shop` VALUES ('644', 'GT1', '1', '1', 'GT1', 'GT1 - Temporary China badge, designed by the team that got into final of a specific BB tournament (G&#38;T).', '1', 'China', 'GT1', null);
INSERT INTO `cms_badge_shop` VALUES ('645', 'XAO', '1', '1', 'XAO', 'XAO - Temporary China badge, designed by the team that got into final of a specific BB tournament.', '1', 'China', 'XAO', null);
INSERT INTO `cms_badge_shop` VALUES ('646', 'BVA', '1', '1', 'BVA', 'BVA - Like the XAO and G&#38;T badges, this seems to be a player designed badge for a team. Also uploaded as ZYZ.', '1', 'China', 'BVA', null);
INSERT INTO `cms_badge_shop` VALUES ('647', 'KTV', '1', '1', 'KTV', 'KTV - Like the XAO and G&#38;T badges, this seems to be a player designed badge for a team.', '1', 'China', 'KTV', null);
INSERT INTO `cms_badge_shop` VALUES ('648', 'PST', '1', '1', 'PST', 'PST - Like the XAO and G&#38;T badges, this seems to be a player designed badge for a team. Obviously, this one is designed (or copied) in the group badge editor (Chinese hotel had no groups at the time of this find).', '1', 'China', 'PST', null);
INSERT INTO `cms_badge_shop` VALUES ('649', 'BXT', '1', '1', 'BXT', 'BXT - Not known.', '1', 'China', 'BXT', null);
INSERT INTO `cms_badge_shop` VALUES ('650', 'KH0', '1', '1', 'KH0', 'KH0 - Most probably for a planned campaign on the Transformers movie.', '1', 'China', 'KH0', null);

