-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2020 at 07:09 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pebbles`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` longtext NOT NULL,
  `id_option` int(11) NOT NULL,
  `id_nav_img` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_option_idx` (`id_option`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `img_url`, `id_option`, `id_nav_img`) VALUES
(1, '../pebbles/1566034995.jpg', 5, NULL),
(2, '../pebbles/1566034884.jpg', 5, NULL),
(3, '../pebbles/4.jpg', 5, NULL),
(4, '../pebbles/5.jpg', 5, NULL),
(5, '../pebbles/6.jpg', 5, NULL),
(6, '../pebbles/7.jpg', 5, NULL),
(7, '../pebbles/black-fade-png.png\"', 5, NULL),
(8, '../pebbles/cocktail.webp', 2, NULL),
(9, '../pebbles/wine.png', 2, NULL),
(10, '../pebbles/ice-cream.png', 2, NULL),
(11, '../pebbles/12.jpg', 2, 2),
(12, '../pebbles/13.png', 2, 2),
(13, '../pebbles/4.jpg', 2, 2),
(14, '../pebbles/3.jpg', 1, 1),
(15, '../pebbles/9.jpg', 1, 1),
(16, '../pebbles/14.jpg', 1, 1),
(17, '../pebbles/11.jpg', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_in_menu`
--

DROP TABLE IF EXISTS `item_in_menu`;
CREATE TABLE IF NOT EXISTS `item_in_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_in_menu` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_in_menu`
--

INSERT INTO `item_in_menu` (`id`, `item_in_menu`) VALUES
(1, 'Fruit'),
(2, 'Ice Cream and Sorbets'),
(3, 'Milkshakes'),
(4, 'Frozen Slushies'),
(6, 'Hot Beverages'),
(7, 'Iced Coffee'),
(8, 'Cocktails'),
(10, 'Premium Cocktails'),
(11, 'Mocktails'),
(12, 'Spritzers and Aperitifs'),
(13, 'Snacks'),
(14, 'Salads'),
(15, 'Ciders'),
(16, 'Spirits and Liqueurs'),
(17, 'Local Beer'),
(18, 'Foreign Beer'),
(19, 'Speciality Beer'),
(20, 'Local White Wines'),
(21, 'Foreign White Wines'),
(22, 'Foreign Red Wines'),
(23, 'Wines by the Glass');

-- --------------------------------------------------------

--
-- Table structure for table `menu_list`
--

DROP TABLE IF EXISTS `menu_list`;
CREATE TABLE IF NOT EXISTS `menu_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_item_in_menu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product_idx` (`id_product`),
  KEY `id_item_in_menu_idx` (`id_item_in_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_list`
--

INSERT INTO `menu_list` (`id`, `id_product`, `id_item_in_menu`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 5, 2),
(6, 6, 3),
(7, 7, 4),
(8, 8, 4),
(9, 9, 4),
(10, 10, 17),
(11, 11, 17),
(12, 12, 17),
(13, 13, 17),
(14, 14, 17),
(15, 15, 17),
(16, 16, 17),
(33, 17, 18),
(34, 18, 18),
(35, 19, 18),
(36, 20, 18),
(37, 21, 18),
(38, 22, 18),
(39, 23, 18),
(40, 24, 18),
(41, 25, 19),
(42, 26, 19),
(43, 27, 19),
(44, 28, 19),
(45, 29, 19),
(51, 30, 15),
(52, 31, 15),
(53, 32, 15),
(54, 33, 15),
(55, 34, 15),
(56, 35, 6),
(57, 36, 6),
(58, 37, 6),
(59, 38, 6),
(60, 39, 6),
(61, 40, 6),
(62, 41, 6),
(63, 42, 6),
(64, 43, 6),
(65, 44, 6),
(66, 45, 6),
(67, 46, 7),
(68, 47, 7),
(69, 48, 7),
(70, 49, 7),
(71, 50, 7),
(72, 51, 7),
(73, 52, 8),
(74, 53, 8),
(75, 54, 8),
(76, 55, 8),
(77, 56, 8),
(78, 57, 8),
(79, 58, 8),
(80, 59, 8),
(81, 60, 8),
(82, 61, 8),
(83, 62, 8),
(84, 63, 8),
(85, 64, 8),
(86, 65, 8),
(120, 71, 20),
(121, 72, 20),
(122, 73, 20),
(123, 74, 20),
(124, 75, 20),
(125, 76, 20),
(126, 77, 21),
(127, 78, 21),
(128, 79, 21),
(129, 80, 21),
(130, 81, 21),
(131, 82, 21),
(132, 83, 21),
(133, 84, 21),
(134, 85, 22),
(135, 86, 22),
(136, 87, 22),
(137, 88, 22),
(138, 89, 23),
(139, 90, 23),
(140, 91, 23),
(141, 92, 23),
(142, 93, 16),
(143, 94, 16),
(144, 95, 16),
(145, 96, 16),
(146, 97, 16),
(147, 98, 10),
(148, 99, 10),
(149, 100, 10),
(150, 101, 10),
(151, 102, 10),
(152, 103, 10),
(153, 104, 11),
(154, 105, 11),
(155, 106, 11),
(156, 107, 12),
(157, 108, 12),
(158, 109, 12),
(159, 110, 12),
(160, 111, 12),
(161, 112, 12),
(162, 113, 13),
(163, 114, 13),
(164, 115, 13),
(165, 116, 13),
(166, 117, 13),
(167, 118, 13),
(168, 119, 13),
(169, 120, 13),
(170, 121, 13),
(171, 122, 14),
(172, 123, 14),
(173, 124, 14),
(174, 125, 14);

-- --------------------------------------------------------

--
-- Table structure for table `news_feed`
--

DROP TABLE IF EXISTS `news_feed`;
CREATE TABLE IF NOT EXISTS `news_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(500) DEFAULT NULL,
  `title` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_feed`
--

INSERT INTO `news_feed` (`id`, `img_url`, `title`) VALUES
(1, '../pebbles/NewsFeed/1566042626.jpg', 'From monday to friday this week we are having happy hour from 5pm to 6pm, see you!'),
(2, '../pebbles/NewsFeed/1566043113.jpg', 'Free Cocktail for ladies only on friday night!');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(100) NOT NULL,
  `option_value` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `option_name`, `option_value`) VALUES
(1, 'Hours & Location', '/user/location'),
(2, 'Menu', '/user/menu'),
(3, 'Contact', '/user/contact'),
(4, 'News Feed', '/user/newsFeed'),
(5, 'Startpage', '/user/startpage');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(250) NOT NULL,
  `description` mediumtext,
  `price` decimal(5,2) NOT NULL,
  `amount` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product`, `description`, `price`, `amount`) VALUES
(1, 'Fresh Fruit Platter(serves two)', 'A selection of fresh fruits cuts in season', '20.00', NULL),
(2, 'Fresh Fruit Cup', 'A variety of diced fresh fruit in season served in a cup.', '5.75', NULL),
(3, 'Fresh Fruit Fantasy', 'Cuts of fresh fruit served in a cup, topped with a scoop od ice cream of your choice.', '7.00', NULL),
(4, 'Ice creams', 'Chocolate, Vanilla, Strawberry, Coconut, Chery, Tiramisu, Biscoto, KitKat, White Chocolate, Lion or Mint Chocolate Chip.', '3.00', NULL),
(5, 'Sorbets', 'Mango or Lemon.', '3.00', NULL),
(6, 'Milkshake', 'Choose from a selection of flavours including: Chocolate, Vanilla, Strawberry, Coconut, Chery, Tiramisu, Biscoto, KitKat, White Chocolate, Lion or Mint Chocolate Chip topped with whipped cream.', '5.00', NULL),
(7, 'Regular', NULL, '3.00', NULL),
(8, 'Large', 'Choose from a selection of flavours including: Strawberry, Pineapple, Peach, Watermelon, Lime, Melon, Banana or Green Apple.', '4.50', NULL),
(9, 'Grand Creme, frozen cofee', NULL, '3.25', '30cl'),
(10, 'Cisk Lager Draught', NULL, '4.75', '50cl'),
(11, 'Cisk Lager Draught', NULL, '3.50', '30cl'),
(12, 'Cisk Lager Bottle', NULL, '4.50', '50cl'),
(13, 'Cisk Excel Lager - Low Carb', NULL, '3.50', '25cl'),
(14, 'Cisk Chill (Berry/Lemon/Ginger & Lime)', NULL, '3.50', '25cl'),
(15, 'Hopleaf Pale Ale', NULL, '3.25', '33cl'),
(16, 'Shandy', NULL, '3.00', '25cl'),
(17, 'Carslberg Draught', NULL, '4.75', '50cl'),
(18, 'Carslberg Draught', NULL, '3.50', '33cl'),
(19, 'Guinness', NULL, '5.00', '50cl'),
(20, 'Budweiser', NULL, '3.50', '25cl'),
(21, 'Corona Extra', NULL, '3.75', '36cl'),
(22, 'Pilsner Urquell', NULL, '3.75', '33cl'),
(23, 'Becks Non-Alcoholic', NULL, '3.50', '33cl'),
(24, 'Heineken', NULL, '3.50', '25cl'),
(25, 'Blue Label - Amber Ale', NULL, '4.00', '33cl, 4.7% ABV'),
(26, 'Double Red - Strong Ale', NULL, '4.00', '33cl, 6.8% ABV'),
(27, 'India Pale Ale', NULL, '4.00', '33cl, 5.7% ABV'),
(28, 'Baladin Nora - Egyptian Ale', NULL, '4.00', '33cl, 6.8% ABV'),
(29, 'Hoegaarden White', NULL, '4.00', '33cl, 4.9% ABV'),
(30, 'Strongbow', NULL, '3.00', '33cl'),
(31, 'Bulmers Original', NULL, '5.00', '50cl'),
(32, 'Bulmers Pear', NULL, '5.00', '50cl'),
(33, 'Bulmers Crushed Red Berries and Lime', NULL, '5.00', '50cl'),
(34, 'Woodpecker', NULL, '3.00', '27.5cl'),
(35, 'Coffee', '(White or Black)', '3.00', NULL),
(36, 'Espresso', NULL, '2.50', NULL),
(37, 'Espresso Macchiato', NULL, '2.75', NULL),
(38, 'Espresso Doppio', NULL, '3.50', NULL),
(39, 'Caffe Americano', '(White or Black)', '3.75', NULL),
(40, 'Cappuccino', NULL, '3.25', NULL),
(41, 'Latte Macchiato', NULL, '3.25', NULL),
(42, 'Caffe Mocha', NULL, '3.75', NULL),
(43, 'Pot of Tea', NULL, '3.00', NULL),
(44, 'Selection of Herbal teas', NULL, '3.00', NULL),
(45, 'Hot Chocolate', 'Normal/Thick(with whipped cream)', '4.00', NULL),
(46, 'Iced Coffee', 'Espresso, sugar syrup and milk blended with ice', '5.50', NULL),
(47, 'Iced Tiramisu Latte', 'Espresso, Tiramisu ice cream and milk blended with ice and topped with whipped cream', '6.50', NULL),
(48, 'Ice Mocha', 'Espresso, chocolate ice cream and milk blended with ice and topped with chocolate sauce & whipped cream', '6.50', NULL),
(49, 'Iced Vanilla Latte', 'Espresso, vanilla ice cream and milk blended with ice and topped with caramel sauce & whipped cream', '5.50', NULL),
(50, 'Iced White Mocha', 'Espresso, white chocolate ice cream and milk blended with ice and topped with chocolate sauce & whipped cream', '6.50', NULL),
(51, 'Iced Baileys Latte', 'Espresso, vanilla ice cream, Baileys Irish Cream Liqueur and milk blended over ice and topped with whipped cream', '6.50', NULL),
(52, 'Beachside Delight', 'Peach Vodka, pineapple juice, cranberry juice and lime juice topped with ginger ale', '8.00', NULL),
(53, 'Pina Colada', 'Bacardi Rum, coconut ice cream and syrup topped with pineapple juice', '7.50', NULL),
(54, 'Frozen Daiquiri', 'Havana Club white rum, Triple Sec and lime juice blended with your selection of either strawberry, watermelon or peach flavour', '8.00', NULL),
(55, 'Long Island Ice Tea', 'Absolut Vodka, Havana club white rum, Barrymore gin, tequila, triple sec and lime juice topped with cola', '13.00', NULL),
(56, 'Mojito', 'Choose from classic, strawberry or raspberry flavours with Bacardi rum, fresh mint, lime wedges and brown sugar, topped with soda', '8.25', NULL),
(57, 'Frozen Margaritas', 'Tequila, Triple sec and lime juice blended with your selection of strawberry, melon, apple or lime flavour', '8.00', NULL),
(58, 'Cosmopolitan', 'Smirnoff Vodka, triple sec, cranberry juice and lime juice ', '7.50', NULL),
(59, 'Sex on the Beach', 'Absolut Vodka, Peach Schnapps, orange juice and cranberry juice', '8.50', NULL),
(60, 'Hurricane', 'Havana Club white and dark rum, lime juice, pineapple juice and grenadine', '8.75', NULL),
(61, 'Blue Hawiian', 'Bacardi rum, Blue Curacao fresh lime wedges and pineapple juice', '8.25', NULL),
(62, 'Artlantic', 'Amaretto, spiced rum, Blue Curacao, lime and apple juice', '8.75', NULL),
(63, 'New York Sour', 'Jim Beam Whiskey, fresh lemon juice and sugar syrup topped with red wine', '8.00', NULL),
(64, 'Cuba Libre', 'Bacardi Rum, coke, fresh lime juice and wedges', '7.50', NULL),
(65, 'Bloody Mary', 'Absolut Vodka, tomato juice, Tabasco, Worcestershire sauce, salt and pepper', '7.50', NULL),
(71, 'Medina Sauvignon Blanc (D.O.K) Delicata, Malta', 'A crisp, dry white wine with flavours of Granny Smith apples and brader flavours of grapefruit and kiwi.', '18.00', NULL),
(72, 'Fenici Vermentino, Chardonnay, Viognier (D.O.K) Meridiana, Malta', 'A fresh, light white wine characterised by exotic fruit flavours, enhanced by a hint of white flowers', '19.50', NULL),
(73, 'Ulysses Chenin Blanc-Chardonnay Marsovin, Malta', 'Medium bodied, refreshing dry white wine with aromas and flavours of citrus and stone fruits', '19.50', NULL),
(74, 'Ulysses Chenin Blanc-Chardonnay Marsovin, Malta', 'Half Bottle', '10.00', NULL),
(75, 'Caravaggio Pinot Bianco (D.O.K)', 'Marsovin, Malta. Dry, medium bodied white wine with refreshing aromas of citrus flavours, feature', '20.00', NULL),
(76, 'Isis Chardonnay (D.O.K) Meridiana, Malta', 'Fresh, complex bouquet of grapefruit and other exotic white fruits with gentle floral notes', '25.00', NULL),
(77, 'Soave Classico, Bolla, Veneto, Italy', 'A ripe, honey-flavoured dry white wine', '17.00', NULL),
(78, 'Soave Classico, Bolla, Veneto, Italy', 'Half Bottle', '9.00', NULL),
(79, 'Pinot Grigio, Bolla, Veneto, Italy', 'A light flavoured, crispy wine with hints of citrus and minerality', '17.50', NULL),
(80, 'Gavi del Comune di Gavi, La scoica Piemonte, Italy', 'A light straw coloured, fresh, well-balanced aromas and flavours of citrus and almond and very bright acidity', '20.50', NULL),
(81, 'Donnafugata Anthilia Cataratto, (D.O.C.) Donnafugata, Sicily', 'A fresh, aromatic and fruity white wine with notes of white fresh fruit, which merge with the crisp herbaceous notes of Mediterranean scrub', '25.00', NULL),
(82, 'Chablis, J. Moreau & Fils Chablis Burgundy, France', 'Fresh and crisp on the palete with flavours of citrus peel and minerality', '35.00', NULL),
(83, 'Chenin Blanc, Foot of Africa, Kleine Zalze Stellenbosch, South Africa', 'A dry, crispy and elegant wine with a hint of lemon-lime flavour', '19.00', NULL),
(84, 'Sauvignon Blanc Private Bin, Villa Maria Marlborough, New Zeland', 'A crisp and enticing Sauvignon Blan with mylard of flavours dominated by gooseberry, passionfruit, fresh citrus, melon and herbaceous aromas', '28.00', NULL),
(85, 'Valpolicella Classico, Bolla, Venneto Italy', 'A pleasantly crisp, fruity, ruby coloured red wine with cherry and spice hints on the nose and a black pepper finish', '17.50', NULL),
(86, 'Valpolicella Classico, Bolla, Venneto Italy', 'Half Bottle', '9.00', NULL),
(87, 'Shiraz Viogner, Foot of Africa, W. Cape South Africa', 'A fruity red wine, with ripe plum and wild berries on the nose, hints of lavander and white pepper and rich velvety finish', '19.00', NULL),
(88, 'Pinot Noir Private Bin, Villa Maria Marlboroudg, New Zeland', 'A full-bodied, fruit driven and elegant red wine, with a perfumed bouquer of red and dark cherries, plums and spice notes', '28.00', NULL),
(89, 'Glass of Wine', 'A selection of local Chardonnay, Sauvignon Blanc, Merlot, Cabarnet Sauvignon or Syrah Rose', '5.50', NULL),
(90, 'Glass of Premium Wine', 'A selection of local Ulysses Chenin Blanc, Odyssey Rose grenache or 1919 Gelewza Red wine', '6.50', NULL),
(91, 'Glass of Prosecco', NULL, '6.25', NULL),
(92, 'Glass of Moet', NULL, '16.00', NULL),
(93, 'Premium Spirits', NULL, '5.50', '2.5cl'),
(94, 'Spirits', NULL, '4.00', '2.5cl'),
(95, 'Liqueurs', NULL, '5.00', '5cl'),
(96, 'Mixers', NULL, '3.00', NULL),
(97, 'Thomas Henry Mixers', 'Tonic, Slim Tonic, Cherry Blossom Tonic, Grapefruit or Mango, Lemonade, Ginger Beer, Elderflower Tonic, Ginger Ale, Bitter Lemon', '3.50', NULL),
(98, 'The Henry', 'Hendrick\'s Gin, fresh lime juice and Thomas Henry Elderflower Tonic', '9.50', NULL),
(99, 'Pink Ink', 'Monkey 47 Sloe Gin and Thomas Henry Cherry Blossom Tonic', '9.25', NULL),
(100, 'Cucumber and Lime Gin & Tonic', 'Hendrick\'s Gin and Thomas Henry Tonic Water, cucumber, lime, mint and sugar syrup', '10.00', NULL),
(101, 'Grapefruit Breeze', 'Tanqueray no. 10 Gin, grapefruit lemonade and lime juice', '9.75', NULL),
(102, 'Gin Buck', 'Monkey 47 Sloe Gin, lemonjuice and Thomas Henry Ginger Ale', '9.00', NULL),
(103, 'Moscow Mule', 'Fashion Vodka, fresh lime juice and Thomas Henry Ginger Beer', '8.50', NULL),
(104, 'Hawaiian Twist', 'Fresh banana, coconut ice cream ad syrup, topped with peneapple juice', '6.75', NULL),
(105, 'Blue Island Rush', 'Fresh lime wedges, brown sugar, Blue Curacao syrup and lime juice, topped with apple juice', '6.00', NULL),
(106, 'Summer Breeze', 'Fresh Mango, strawberry juice and orange juice', '6.50', NULL),
(107, 'Aperol Spritz', 'Aperolm Prosecco and soda water', '8.00', NULL),
(108, 'Limoncello Spritz', 'Limoncello, Prosecco and soda water', '8.50', NULL),
(109, 'Elderflower Spritz', 'Elderflower liqueur, Prosecco and soda water', '8.50', NULL),
(110, 'Martini Royale Bianco', 'Martini Bianco, Martini Prosecco, Lime and Mint', '7.50', NULL),
(111, 'Martini Royalo Rosato', 'Martini Rosato, Martini Prosecco, Orange and Mint', '7.50', NULL),
(112, 'Bellini', 'Prosecco topped with Peach Juice', '7.00', NULL),
(113, 'Fish and Chips', 'A filet of Perch dipped in beer batter, and deep-fried to a golden crisp perfection, served with fries, traditional mushy peas and tartat sauce', '13.50', NULL),
(114, 'Smoked Salmon and Cream Cheese Burger', 'Premium Scottish Smoked  Salmon, avocade, cream cheese and lumpfish caviar, served in a squid-inked black bun and a side of fresh pineapple salad', '13.75', NULL),
(115, 'Trio of Mini Burgers', 'Three mini patties topped with bacon, cheese and barbacue sauce, homemade from succulent pure beef served with caramelised onions and fries', '13.00', NULL),
(116, 'Chicken Focaccia', 'Tender Chicken Breast, honey mustard sauce, tomatoes, mozarella and lettuce in a focaccia with side of fries', '12.75', NULL),
(117, 'Ham and Cheese Sandwich', 'Buttered toasted white bread with slice of ham and cheese, served with a side salad and choice of either fries or fruit', '7.00', NULL),
(118, 'Chicken Nuggets', 'Six pieces of chicken filet nuggets with a side of fresh salad and a choice of either fries or fresh fruit', '8.50', NULL),
(119, 'Fish Nuggets', 'Six pieces of fresh fish nuggets with a side of fresh salad and a choice of either fries or fresh fruit', '8.50', NULL),
(120, 'Bowl of Fries', NULL, '3.50', NULL),
(121, 'Bowl of Sweet Potato Fries', NULL, '4.75', NULL),
(122, 'Caprese Salad', 'Deliciously soft mozzarella di Bufala on a bed of fresh rocket leaves, tomatoes, fresh basil and a garlic & onion dressing', '10.50', NULL),
(123, 'Chicken Salad', 'Tender grilled chicken breast. served on a bed of fresh mixed lettuce, onions, cherry tomatoes and Parmesan shavings tossed in a homemade dressing', '11.75', NULL),
(124, 'Smoked Salmon Salad', 'Premium smoked salmon served with avocade, red onions, cucumber, tomatoes, lettuce, freshh dill, lemon wedges and seasoned olives', '11.50', NULL),
(125, 'Tropical Shrimp Salad', 'Honey & Lime marinated shrimps tossed with pineapple, avocade, fresh mixed salad, cherry tomatoes and fresh dill, served in a pineapple shell with side of grilled pineapple rings', '17.50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `text`
--

DROP TABLE IF EXISTS `text`;
CREATE TABLE IF NOT EXISTS `text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `option_name` varchar(45) NOT NULL,
  `tag_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `option_name_idx` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `text`
--

INSERT INTO `text` (`id`, `text`, `option_name`, `tag_name`) VALUES
(1, 'Send us a message and we’ll get back to you as soon as possible.', 'contact', 'p'),
(2, 'You can also reach us by phone at ', 'contact', 'p'),
(3, '+356 2356 1000', 'telephone', 'a'),
(4, 'Looking forward to hearing from you!', 'contact', 'p'),
(5, 'Contact us', 'contact', 'headline'),
(11, 'Hours & Location', 'location', 'headline'),
(12, 'Working Hours', 'location', 'h3'),
(13, 'Everyday from 10am to 10pm', 'location', 'p'),
(14, 'Located on the beach of radisson hotel', 'location', 'p'),
(15, 'Only for the guests of the hotel', 'location', 'p'),
(16, 'Come and pay us a visit we are expecting you!', 'startpage', 'h2'),
(17, 'Menu', 'startpage', 'h1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `id_option` FOREIGN KEY (`id_option`) REFERENCES `options` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu_list`
--
ALTER TABLE `menu_list`
  ADD CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
