-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2020 at 10:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biomart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(6, 'admin', 'admin', 'admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `category_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `category_type`, `description`, `img`, `status`) VALUES
(1, 'Fruit', 'Produce', 'Fruits are a rich source of many important nutrients like fibers, vitamins, water, etc. The daily consumption of fruits keeps one healthy and at the same time maintain a young look...', '849168229ONLINE CORONA TRACKER.png', 'Active'),
(2, 'Cereals and Pulses', 'Produce', 'Cereals are an integral part of our lives, as they are the only food products that provide instant energy. Rich in nutrients, cereals come in the form of rice or corns.', '28333cereals and pulses.jpg', 'Active'),
(3, 'Seeds', 'Produce', 'Seeds have stored foods inside them and are confined in coverings known as seed coats. The process of reproduction in a plant is completed after the seeds are developed fully.', '1506seeds.gif', 'Active'),
(4, 'Spices', 'Produce', 'Spices are defined as dried seed or fruit, in whole or powder form, used as \r\nfood additives for enhancing the flavor or taste of a particular food item. India produces 3.2 million tonnes of various spices.', '3443spices.jpg', 'Active'),
(5, 'Vegetable', 'Produce', 'Vegetables, the edible part of a plant, are rich sources of several vital nutrients, contributing immensely to the overall growth of the living being.', '29744veggie.jpg', 'Active'),
(6, 'Dry Fruit and Nuts', 'Produce', 'The need for having a healthy and tasty snack in between our regular food time can be satisfied with the consumption of dry fruits and nuts. They fully satisfy the taste buds, and one need not worry about gaining weight!', '18601dry fruit.jpg', 'Active'),
(7, 'Edible Oil', 'Produce', 'India is the 4th largest user of edible oil. Edible oils are basic ingredients used in the making of foods and other eatables.', '7726edible oil.jpg', 'Active'),
(8, 'Fertilizers', 'SellingProduct', 'The role of fertilizers cannot be ignored in agriculture. These are the compounds that are given to the soil to help nurture the plant facilitating increased yields.', '18021fertilizer.jpg', 'Active'),
(9, 'Fodders', 'SellingProduct', 'To enable livestock to remain healthy and thereby perform their activities, they are provided with fodder or animal feed. Fodder includes hay, straw, sprouted legumes, etc.', '20158fodder.jpg', 'Active'),
(11, 'Herbal Products', 'Produce', 'Herbs have exotic flavor, medicinal properties, scent, etc. They are used as \r\nmedicines, facilitating curing of ailments at a faster pace.', '23605herbal plants.jpg', 'Active'),
(12, 'Machinery and Equipments', 'SellingProduct', 'Agricultural equipments have revolutionized the agricultural industry worldwide. They help in increasing and improving the productivity content to a great extent.', '6346Agricultural Machinery and Equipments.jpg', 'Active'),
(14, 'Other Agro Products', 'Produce', 'Agro products are limitless and have an even larger number of sub-products, and may not generally be categorized.', '20247jaggery.jpg', 'Active'),
(15, 'Beverages', 'Produce', 'A drink or beverage is a liquid intended for human consumption.', '30296beverage and juices.jpg', 'Active'),
(19, 'Compost', 'SellingProduct', '  Compost is a key ingredient in organic farming. At the simplest level, the process of composting simply requires making a heap of wetted organic matter known as green waste (leaves, food waste) and waiting for the materials to break down into humus after a period of weeks or months.', '28756compost4.jpg', 'Active'),
(20, 'Biofertilizers', 'SellingProduct', 'Biofertilizers are ecofriendly fertilizers, which are being used to improve the quality and fertility of the soil. Biofertilizers are made from biological wastes and they do not contain any chemicals. They are beneficial to the soil, as they enrich the soil with microorganisms that help in producing organic nutrients, which in turn help the soil to fight diseases. They therefore enrich the the nutrient quality of the soil. They also restore the depleted nutrients of the soil.', '15808bio1.jpg', 'Active'),
(21, ' Chemical Fertilizer', 'SellingProduct', 'Today productivity has been increased by a major proportion and the entire credit goes to fertilizers. Fertilizers are a superior and advanced means to promote and enhance productivity. All the fertilizers have been categorized into several types depending on their constituents, strength and various other features. However each fertilizer contain adequate amounts of the needed chemicals, minerals and elements to ensure a healthy and fast growth.', '30188chemi1.jpg', 'Active'),
(23, 'Urea Fertilizer', 'SellingProduct', 'When applied in measured proportions and through precise methodology, urea works wonder for all crops and increase4s the yields by great proportions\r\n\r\nAs urea comprises of 46% N, it can be easily stored, transported and handled safely. There are no explosion hazards caused by urea fertilizer\r\n\r\nThe nutrient composition rendered by urea enhances the productivity of the soil and enriches its nutrient constituency. Providing each plant with relevant elements needed, urea sustains plant life.', '1240urea.jpg', 'Active'),
(24, 'Organic Fertilizers', 'SellingProduct', 'Organic fertilizers are naturally occurring fertilizers and nutrient enhancers of the soil. Therefore every substance that occurs naturally and is easily bio-degradable is organic and if this organic material enhances the richness of the soil, it is termed as organic fertilizer.', '790organic-fertilizer.jpg', 'Active'),
(25, ' Organic Manure', 'SellingProduct', '\r\nOrganic manure is easy to find and can be made available in all conditions.\r\nEasy to store, manure does not require any special treatment as it is not reactive or inflammable.', '5764organic-manure.jpg', 'Active'),
(26, 'Seeds', 'SellingProduct', 'Seeds have stored foods inside them and are confined in coverings known as seed coats. The process of reproduction in a plant is completed after the seeds are developed fully.', '17749sesame seeds.png', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `state_id`, `city`, `description`, `status`) VALUES
(2, 18, 'Kajaani', 'Kajaani is a town and municipality in Finland. It is the center and capital of the Kainuu region. It is located southeast of OulujÃ¤rvi, which drains to the Gulf of Bothnia along the Oulujoki. ', 'Active'),
(3, 4, 'Joensuu', 'Joensuu is a city and municipality in North Karelia in the province of Eastern Finland. It was founded in 1848. The population of Joensuu is 74,941,', 'Active'),
(4, 5, '	Kuopio', 'Kuopio is a city and a municipality located in the region of Northern Savonia, Finland. A population of 110,999 makes it the eighth biggest city in the country', 'Active'),
(5, 6, 'Mikkeli', 'Mikkeli is a town and municipality in Finland. It is located in what used to be the province of Eastern Finland and is part of the Southern Savonia region.', 'Active'),
(6, 7, 'SeinÃ¤joki', 'SeinÃ¤joki is a city located in Southern Ostrobothnia, Finland. SeinÃ¤joki originated around the Ã–stermyra bruk iron and gunpowder factories founded in 1798.', 'Active'),
(7, 9, '	Itanagar', 'anagar is the capital of the Indian state of Arunachal Pradesh. Itanagar is situated at the foothills of Himalayas. It comes administratively under Papum Pare district. Itanagar is well connected by road. ', 'Active'),
(8, 10, '	Dispur', 'Dispur /dÉªsËˆpÊŠÉ™r/ is the capital of the state of Assam. Dispur, a locality of Guwahati, became the capital of Assam in 1973.', 'Active'),
(9, 35, '	Patna', 'is the capital and largest city of the state of Bihar in India. Patna is the second largest city in eastern India after Kolkata.', 'Active'),
(10, 11, 'Raipur', 'Raipur is a city in the Raipur district of the Indian state of Chhattisgarh. It is the capital city of the state of Chhattisgarh and is the administrative headquarters of Raipur district.', 'Active'),
(11, 12, '	Panaji', ' is the capital of the Indian state of Goa and the headquarters of North Goa district. It lies on the banks of the Mandovi River estuary in Tiswadi taluka. ', 'Active'),
(12, 36, '	Gandhinagar', ' is the capital of the state of Gujarat in Western India. Gandhinagar is located approximately 23 km north of Ahmedabad, on the west central point of the Industrial corridor between ', 'Active'),
(13, 13, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. ', 'Active'),
(14, 14, '	Shimla', 'Shimla is the capital of the northern Indian state of Himachal Pradesh, in the Himalayan foothills. Once the summer capital of British India, it remains the terminus of the narrow-gauge Kalka-Shimla Railway, ', 'Active'),
(15, 15, '	Srinagar', ' is the largest city and the summer capital of the Indian state of Jammu and Kashmir. It lies on the banks of the Jhelum River, a tributary of the Indus, and Dal and Anchar lakes. ', 'Active'),
(16, 16, '	Ranchi', 'Ranchi is the capital of the Indian state of Jharkhand, and its third most populous city of the state.', 'Active'),
(17, 18, 'Thiruvananthapuram', 'Thiruvananthapuram  is the capital of the southern Indian state of Kerala.', 'Active'),
(18, 19, '	Bhopal', 'Bhopal is the capital of the Indian state of Madhya Pradesh and the administrative headquarters of Bhopal district and Bhopal division. The city was the capital of the former Bhopal State.', 'Active'),
(19, 20, '	Mumbai', 'Mumbai, formerly called Bombay, is a sprawling, densely populated city on Indiaâ€™s west coast. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to Shiva', 'Active'),
(20, 21, '	Imphal', 'The city of Imphal is the capital of the Indian state of Manipur. The ruins of the Palace of Kangla, the royal seat of the erstwhile Kingdom of Manipur, are in the city centre, surrounded by a moat.', 'Active'),
(21, 22, '	Shillong', 'Shillong is the capital and hill station of Meghalaya, also known as \"The Abode of Clouds\", one of the smallest states in India', 'Active'),
(22, 23, '	Aizawl', 'Aizawl is the capital of the state of Mizoram in India. With a resident population of 293,416, it is the largest city in the state.', 'Active'),
(23, 25, '	Bhubaneswar', 'Bhubaneswar, also spelt as Bhubaneshwar /ËŒbÊŠbÉ™ËˆneÉªÊƒwÉ™r/, is the capital of the Indian state of Odisha. The city has a history of over 3,000 years starting with the Mahamegha-bahana Chedi dynasty which had its capital at Sisupalgarh, nearby.', 'Active'),
(24, 26, '	Chandigarh', 'Chandigarh is a city and a union territory in the northern part of India that serves as the capital of the states of Punjab and Haryana. As a union territory, the city is ruled directly by the Union Government and is not part of either state.', 'Active'),
(25, 27, '	Jaipur', 'Jaipur, the capital of Indiaâ€™s Rajasthan state, evokes the royal family that once ruled the region and that, in 1727, founded what is now called the Old City, or â€œPink Cityâ€ for its trademark building color. ', 'Active'),
(26, 28, '	Gangtok', 'Gangtok is the capital of the northern Indian state of Sikkim. Established as a Buddhist pilgrimage site in the 1840s, the city became capital of an independent monarchy after British rule ended, but joined India in 1975. ', 'Active'),
(27, 29, 'Chennai', 'Chennai, on the Bay of Bengal in eastern India, is the capital of the Tamil Nadu state. Its home to Fort St. George, built in 1644 and now a museum showcasing the citys roots as a British military garrison', 'Active'),
(28, 30, 'Hyderabad', 'Hyderabad is the capital of southern Indias Telangana state. A major center for the technology industry, its home to many upscale restaurants and shops. ', 'Active'),
(29, 31, '	Agartala', 'Agartala /É™É¡É™rtÉ™ËˆlÉ‘Ë/ is the capital as well as the largest city of the Indian state of Tripura and also is the second largest city in North-east India after Guwahati, both in municipal area and population.', 'Active'),
(30, 32, '	Lucknow', 'Lucknow is the capital city of the state of Uttar Pradesh, India A major metropolitan city of India,', 'Active'),
(31, 33, '	Dehradun', ' is the capital city of the state of Uttarakhand in the northern part of India.', 'Active'),
(32, 34, 'Kolkata', ' is the capital of Indias West Bengal state. Founded as an East India Company trading post', 'Active'),
(33, 37, 'Montgomery', ' is the capital of the U.S. state of Alabama and is the county seat of Montgomery County.', 'Active'),
(34, 38, 'Juneau', ' Its a popular cruise-ship stop,', 'Active'),
(35, 39, 'Phoenix', ' is the capital, and largest city, of the U.S. state of Arizona. With 1,445,632 people ', 'Active'),
(36, 40, 'Little Rock', 'Little Rock is the capital and the most populous city of the U.S. state of Arkansas. It is also the county seat of Pulaski County. ', 'Active'),
(37, 41, 'Sacramento', 'Sacramento is the capital city of the U.S. state of California and the seat of government of Sacramento County.', 'Active'),
(38, 42, 'Denver', 'Denver, the capital of Colorado, is an American metropolis dating to the Old West era', 'Active'),
(39, 43, 'Hartford', 'Hartford is the capital of Connecticut and the historic seat of Hartford County until Connecticut disbanded county government in 1960.', 'Active'),
(40, 44, 'Vostochnoe Degunino', 'Vostochnoe Degunino is located in Russia and time zone Europe/Moscow. Places in the near are Altufâ€™yevskiy, Vagonoremont and Zapadnoye Degunino.', 'Active'),
(41, 45, '	Murmansk', 'Murmansk is a port city and the administrative center of Murmansk Oblast, Russia, located in the extreme northwest part of Russia, on the Kola Bay, an inlet of the Barents Sea on the northern shore', 'Active'),
(42, 47, '	Nizhniy Novgorod', 'Nizhny Novgorod, colloquially shortened to Nizhny, is, with a population of 1,250,619, the fifth-largest city in Russia and the administrative center of Nizhny Novgorod Oblas', 'Active'),
(43, 48, 'Hefei', 'Hefei, formerly known as Hofei, Luzhou, or Luchow, is the capital and largest city of Anhui Province in Eastern China', 'Active'),
(44, 49, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities', 'Active'),
(45, 50, 'Lanzhou', 'Lanzhou is the capital and largest city of Gansu Province in Northwest China.', 'Active'),
(46, 51, 'Guangzhou', 'Guangzhou is a sprawling port city northwest of Hong Kong on the Pearl River.', 'Active'),
(47, 52, '	Guiyang', 'GuÃ¬yÃ¡ng is the capital of Guizhou province of Southwest China.', 'Active'),
(48, 53, 'Haikou', 'Haikou, the capital of Chinas island province Hainan', 'Active'),
(49, 54, 'Stuttgart', 'Stuttgart is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(50, 55, '	Munich', ' Munich is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(51, 57, 'Potsdam', 'Potsdam is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(52, 60, 'Wiesbaden', 'Wiesbaden is the capital and hill station, also known as The Abode of Clouds, one of the smallest states in Germany', 'Active'),
(53, 17, 'Bangalore', 'Bangalore is the capital of Indias southern Karnataka state. The center of Indias hightech industry, the city is also known for its green spaces and nightlife', 'Active'),
(54, 8, 'Anantapur', '', 'Active'),
(55, 8, 'East Godavari', '', 'Active'),
(56, 8, 'Guntur	', '', 'Active'),
(57, 8, 'Kadapa	', '', 'Active'),
(58, 8, 'Krishna	', '', 'Active'),
(59, 8, 'Kurnool', '', 'Active'),
(60, 24, 'Nellore', '', 'Active'),
(61, 8, 'Prakasam', '', 'Active'),
(62, 8, 'Srikakulam	', '', 'Active'),
(63, 8, 'Vizianagaram', '', 'Active'),
(64, 8, 'West Godavari', '', 'Active'),
(65, 9, '	Anjaw', '', 'Active'),
(66, 9, '	Changlang', '', 'Active'),
(67, 9, '	East Kameng', '', 'Active'),
(68, 9, 'East Siang', '', 'Active'),
(69, 9, '	Lohit', '', 'Active'),
(70, 9, '	Longding', '', 'Active'),
(71, 9, 'Lower Subansiri', '', 'Active'),
(72, 9, '	Papum Pare', '', 'Active'),
(73, 9, 'Tawang', '', 'Active'),
(74, 9, 'Tirap', '', 'Active'),
(75, 9, '	Lower Dibang Valley', '', 'Active'),
(76, 9, '	Upper Siang', '', 'Active'),
(77, 9, '	West Kameng', '', 'Active'),
(78, 9, '	West Siang', '', 'Active'),
(79, 9, '	Upper Dibang Valley', '', 'Active'),
(80, 9, '	Kurung Kumey', '', 'Active'),
(81, 9, '	Namsai', '', 'Active'),
(82, 9, '	Kra Daadi', '', 'Active'),
(83, 10, '	Baksa', '', 'Active'),
(84, 10, '	Barpeta', '', 'Active'),
(85, 10, '	Bongaigaon', '', 'Active'),
(86, 10, 'Cachar	', '', 'Active'),
(87, 10, '	Chirang', '', 'Active'),
(88, 10, 'Darrang', '', 'Active'),
(89, 10, '	Dhemaji', '', 'Active'),
(90, 10, '	Dhubri', '', 'Active'),
(91, 10, '	Dibrugarh', '', 'Active'),
(92, 10, '	Dima Hasao', '', 'Active'),
(93, 35, '	Araria', '', 'Active'),
(94, 35, '	Arwal', '', 'Active'),
(95, 35, '	Aurangabad', '', 'Active'),
(96, 35, '	Banka', '', 'Active'),
(97, 35, '	Begusarai', '', 'Active'),
(98, 35, '	Bhagalpur', '', 'Active'),
(99, 35, '	Bhojpur', '', 'Active'),
(100, 35, '	Buxar', '	', 'Active'),
(101, 35, '	Darbhanga', '', 'Active'),
(102, 35, 'East Champaran', '', 'Active'),
(103, 35, '	Gaya', '', 'Active'),
(104, 11, 'Balod', '', 'Active'),
(105, 11, 'Baloda Bazar', '', 'Active'),
(106, 11, 'Balrampuir', '', 'Active'),
(107, 11, 'Bastar', '', 'Active'),
(108, 11, 'Bemetara', '', 'Active'),
(109, 11, 'Bijapur', '', 'Active'),
(110, 11, 'Bilaspur', '', 'Active'),
(111, 11, 'Danteswada', '', 'Active'),
(112, 11, 'Dhamtari', '', 'Active'),
(113, 11, 'Durg', '', 'Active'),
(114, 11, 'Jashpur', '', 'Active'),
(115, 11, 'Kanker', '', 'Active'),
(116, 11, 'Kandagoan', '', 'Active'),
(117, 11, 'Korba', '', 'Active'),
(118, 11, 'Koriya', '', 'Active'),
(119, 61, 'Central Delhi', '', 'Active'),
(120, 61, 'East Delhi', '', 'Active'),
(121, 61, 'New Delhi', '', 'Active'),
(122, 61, 'North Delhi', '', 'Active'),
(123, 61, 'North East Delhi', '', 'Active'),
(124, 61, 'South Delhi', '', 'Active'),
(125, 61, 'South West Delhi', '', 'Active'),
(126, 61, 'West Delhi', '', 'Active'),
(127, 12, 'North Goa', '', 'Active'),
(128, 12, 'South Goa', '', 'Active'),
(129, 36, 'Ahmedabad', '', 'Active'),
(130, 36, 'Amrelli District', '', 'Active'),
(131, 36, 'Dang', '', 'Active'),
(132, 36, 'Gandhinagar', '', 'Active'),
(133, 36, 'Jamnagar', '', 'Active'),
(134, 36, 'Junagadh', '', 'Active'),
(135, 36, 'Kheda', '', 'Active'),
(136, 36, 'Kutch', '', 'Active'),
(137, 36, 'Anand', '', 'Active'),
(138, 36, 'Aravalli', '', 'Active'),
(139, 36, 'Banaskantha', '', 'Active'),
(140, 36, 'Bharuch', '', 'Active'),
(141, 36, 'Bhavnagar', '', 'Active'),
(142, 36, 'Dahod', '', 'Active'),
(143, 36, 'Mahisagar', '', 'Active'),
(144, 13, 'Ambala', '', 'Active'),
(145, 13, 'Bhiwani', '', 'Active'),
(146, 13, 'Faridabad', '', 'Active'),
(147, 13, 'Gurgaon', '', 'Active'),
(148, 36, 'Hissar', '', 'Active'),
(149, 14, 'Bilaspur', '', 'Active'),
(150, 14, 'Chamba', '', 'Active'),
(151, 14, 'Hamirpur', '', 'Active'),
(152, 14, 'Kangra', '', 'Active'),
(153, 14, 'Kinnaur', '', 'Active'),
(154, 14, 'Kullu', '', 'Active'),
(155, 14, 'Lahaul and Spiti', '', 'Active'),
(156, 14, 'Mandi', '', 'Active'),
(157, 14, 'Shimla', '', 'Active'),
(158, 14, 'Sirmaur', '', 'Active'),
(159, 14, 'Una', '', 'Active'),
(160, 15, 'Anantnag', '', 'Active'),
(161, 15, 'Bandipora', '', 'Active'),
(162, 15, 'Baramulla', '', 'Active'),
(163, 15, 'Badgam', '', 'Active'),
(164, 15, 'Doda', '', 'Active'),
(165, 15, 'Jammu', '', 'Active'),
(166, 15, 'Kargil', '', 'Active'),
(167, 15, 'Poonch', '', 'Active'),
(168, 16, 'Bokaro', '', 'Active'),
(169, 16, 'Chalra', '', 'Active'),
(170, 16, 'Dhanbad', '', 'Active'),
(171, 16, 'Dumka', '', 'Active'),
(172, 16, 'Gumla', '', 'Active'),
(173, 16, 'Godda', '', 'Active'),
(174, 17, 'Bagalokot', '', 'Active'),
(175, 17, 'Bellary', '', 'Active'),
(176, 17, 'Belgaum', '', 'Active'),
(177, 17, 'Bidar', '', 'Active'),
(178, 17, 'Chikkaballapur', '', 'Active'),
(179, 17, 'Chitradurga', '', 'Active'),
(180, 17, 'Kodagu', '', 'Active'),
(181, 17, 'Hassan', '', 'Active'),
(182, 18, 'Kolar', '', 'Active'),
(183, 17, 'Gulbarga', '', 'Active'),
(184, 17, 'Chamrajnagar', '', 'Active'),
(185, 17, 'Mysore', '', 'Active'),
(187, 17, 'Mandya', '', 'Active'),
(188, 17, 'Raichur', '', 'Active'),
(189, 17, 'Shimoga', '', 'Active'),
(190, 17, 'Tumkur', '', 'Active'),
(191, 17, 'Udupi', '', 'Active'),
(192, 17, 'Uttara', '', 'Active'),
(193, 17, 'yadgir', '', 'Active'),
(194, 17, 'Haveri', '', 'Active'),
(195, 18, 'Alappuzha', '', 'Active'),
(196, 18, 'Ernakulam', '', 'Active'),
(197, 18, 'Idukki', '', 'Active'),
(198, 18, 'Kannur', '', 'Active'),
(199, 18, 'Kasargod', '', 'Active'),
(200, 18, 'Kollam', '', 'Active'),
(201, 18, 'Kottayam', '', 'Active'),
(202, 18, 'Kozhikode', '', 'Active'),
(203, 18, 'Malappuram', '', 'Active'),
(204, 18, 'Palakkad', '', 'Active'),
(205, 18, 'Thrissur', '', 'Active'),
(206, 24, 'Dimapur', '', 'Active'),
(207, 24, 'Kiphire', '', 'Active'),
(208, 24, 'Kohima', '', 'Active'),
(209, 19, 'Longleng', '', 'Active'),
(210, 24, 'Peren', '', 'Active'),
(211, 24, 'Phek', '', 'Active'),
(212, 24, 'Tuensang', '', 'Active'),
(213, 24, 'Wokha', '', 'Active'),
(214, 25, 'Angul', '', 'Active'),
(215, 25, 'Beudh', '', 'Active'),
(216, 25, 'Bhadrak', '', 'Active'),
(217, 25, 'Bargarh', '', 'Active'),
(218, 25, 'Cuttack', '', 'Active'),
(219, 25, 'Ganjam', '', 'Active'),
(220, 25, 'Gajapati', '', 'Active'),
(221, 25, 'Puri', '', 'Active'),
(222, 26, 'Amritsar', '', 'Active'),
(223, 26, 'Barnala', '', 'Active'),
(224, 26, 'Bathinda', '', 'Active'),
(225, 26, 'Faridkot', '', 'Active'),
(226, 26, 'Fazika', '', 'Active'),
(227, 26, 'Gurdaspur', '', 'Active'),
(228, 26, 'Hoshiarpur', '', 'Active'),
(229, 26, ' Moga', '', 'Active'),
(230, 62, 'Karaikal', '', 'Active'),
(231, 62, 'Mahe', '', 'Active'),
(232, 62, 'Yanam', '', 'Active'),
(233, 27, 'Ajmer', '', 'Active'),
(234, 27, 'Alwar', '', 'Active'),
(235, 27, 'Bikaner', '', 'Active'),
(236, 27, 'Baran', '', 'Active'),
(237, 27, 'Jaipur', '', 'Active'),
(238, 27, 'Sirohi', '', 'Active'),
(239, 27, 'Sikar', '', 'Active'),
(240, 29, 'Ariyalur', '', 'Active'),
(241, 29, 'Coimbatore', '', 'Active'),
(242, 29, 'Cuddalore', '', 'Active'),
(243, 29, 'Dharmapuri', '', 'Active'),
(244, 29, 'Dindigul', '', 'Active'),
(245, 29, 'Erode', '', 'Active'),
(246, 29, 'Kanchipuram', '', 'Active'),
(247, 29, 'Kanyakumari', '', 'Active'),
(248, 29, 'Karur', '', 'Active'),
(249, 29, 'Krishnagiri', '', 'Active'),
(250, 29, 'Madurai', '', 'Active'),
(251, 31, 'Dhalai', '', 'Active'),
(252, 31, 'Gomati', '', 'Active'),
(253, 31, 'Khowai', '', 'Active'),
(254, 31, 'North Tripura', '', 'Active'),
(255, 31, 'Unokoti', '', 'Active'),
(256, 31, 'West Tripura', '', 'Active'),
(257, 30, 'Adilabad', '', 'Active'),
(258, 30, 'Karimnagar', '', 'Active'),
(259, 30, 'Khammam', '', 'Active'),
(260, 30, 'Mahbubnagar', '', 'Active'),
(261, 30, 'Medak', '', 'Active'),
(262, 30, 'Nalgonda', '', 'Active'),
(263, 30, 'Nizamabad', '', 'Active'),
(264, 30, 'Warangal', '', 'Active'),
(265, 32, 'Agra', '', 'Active'),
(266, 32, 'Aligarh', '', 'Active'),
(267, 32, 'Allahabad', '', 'Active'),
(268, 32, 'Ambedkar Nagar', '', 'Active'),
(269, 32, 'Bagpat', '', 'Active'),
(270, 32, 'Bahraich', '', 'Active'),
(271, 32, 'Ballia', '', 'Active'),
(272, 32, 'Fatehpur', '', 'Active'),
(273, 32, 'Gonda', '', 'Active'),
(274, 32, 'Hardoi', '', 'Active'),
(275, 32, 'Jhansi', '', 'Active'),
(276, 33, 'Almora', '', 'Active'),
(277, 33, 'Bageshwar', '', 'Active'),
(278, 33, 'Chamoli', '', 'Active'),
(279, 33, 'Champawat', '', 'Active'),
(280, 33, 'Haridwar', '', 'Active'),
(281, 33, 'Rudraprayag', '', 'Active'),
(282, 34, 'Nadia', '', 'Active'),
(283, 34, 'Bankura', '', 'Active'),
(284, 34, 'Bardhaman', '', 'Active'),
(285, 34, 'Birbhum', '', 'Active'),
(286, 34, 'Cooch Behar', '', 'Active'),
(287, 34, 'Dakshin Dinajpur', '', 'Active'),
(288, 34, 'Hooghly', '', 'Active'),
(289, 34, 'Maldah', '', 'Active'),
(290, 34, 'Purullia', '', 'Active'),
(291, 17, 'Puttur', 'Puttur city', 'Active'),
(292, 66, 'Liverpool', 'Liverpool city', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `customer_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `state_id`, `city_id`, `pincode`, `contact_no`, `mobile_no`, `email_id`, `password`, `customer_type`, `status`) VALUES
(1, 'Renata D Souza', 'Poonam Sagar Complex, H-2/404, Shanti Nagar', 1, 1, '401107', '9920822960', '8748981173', 'rdsrini94@gmail.com', 'cstrenee', 'Wholesaler', 'Active'),
(2, 'Sujal Raut', 'Poonam Plaza, 4894-GH', 14, 14, '42342778', '9920652846', '8748981073', 'rinirovi@gmail.com', 'cstsujal', 'Retailer', 'Active'),
(5, 'anathkrishnam@gmail.com', '43th floor, Morgans state', 17, 187, '596321', '0802563211', '8745963210', 'shanthraad@ava.com', '123456789', 'Wholesaler', 'Active'),
(7, 'santhosh', 'tech park', 8, 54, '789456', '7894561230', '987463210', 'shanth@ava.com', '123456789', 'Wholesaler', 'Active'),
(8, 'Balram singh', '43th floor, gateway roal', 23, 22, '596321', '08524561230', '7894561231', 'balramsingh3a11@gmail.com', '', 'Retailer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `produce`
--

CREATE TABLE `produce` (
  `produce_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produce`
--

INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(1, 1, 'Banana', 'Banana, the fruit of a plant of the genus Musa (family Musaceae) is basically cultivated for food, and secondary for the production of fibers, and also for producing tissue-thin tea bags. Besides this, bananas are also cultivated for some ornamental purposes in various regions of the world. They are also known as Bananier Nain, Canbur, Curro and Plantain. These creamy, rich, and sweet fruits are favourite among the people of all ages right from infants to elders. Bananas consist mainly of sugars (glucose, fructose and sucrose) and fiber. They provide instant energy as they are the rich sources of Vitamin B6, Vitamin C, and potassium. \r\n', '19317banana.jpg', 'Active'),
(2, 1, 'Apple', 'Apple is a fleshy fruit of the tree of the species Malus domestica in the rose family Rosaceae. The trees of the Malus family require a long period of dormancy, a well drained soil, years of careful pruning and pest management. The apple tree usually grows to about 5-12 m in height, and is one of the most cultivated fruit trees in the world. Apples ripen in autumn, and generally are 5-9 cm in diameter. They are available in a number of sizes, shapes, colours, etc. but are mostly round and come in the shades of red or yellow.\r\n\r\nThe tree is believed to have originated from Asia, and now more than 7,500 varieties of apples are available worldwide. These large number of varieties may be grouped in three categories, cider, cooking, and dessert varieties. Those varieties, which ripen in late summer are often the ones, which cannot be stored for long, whereas the ones that ripen in autumn may be stored all year round.\r\n\r\nApples can be eaten fresh, cooked, baked or be converted into drinks, and are a rich source of vitamins A and C, fiber, carbohydrates, etc. To know if an apple is good or not, one should first look at its texture, which should be smooth, and be free of any bruises or cuts. The firmness of the apple is the proof of its sweetness. Storage of the apples in an important aspect and care should be taken to store them in a cool and dry place, wrapped in a poly bag.\r\n\r\nMillions of tonnes of apples are grown throughout the world every year. China, USA, Turkey, France, Italy and Iran are amongst the top exporters of apples in the world. Apples are used in many recipes made world over. The American Apple Pie is world famous and is a traditional dish made on special occasions. Apple can also be baked and eaten as a side dish with any kind of meat. Apple sauce made from blanched apples is an excellent accompaniment with pork. Dried apples also make a health snack. \r\n\r\n ', '30474apple.jpg', 'Active'),
(3, 1, 'Guava', 'Guava is a tropical fruit, which is in very much like the shape of a pear, and has a yellow-green skin and white, yellow, or red/pink flesh. The guava tree belongs to the myrtle family Myrtaceae. The tree is native to Mexico, as well as Central America, Northern South America and parts of the Carribbean. They are now cultivated throughout the tropics.\r\n\r\nThe fruit is known by many names in various countries. They are called Pera in Sri Lanka, Amrood in Hindi and Urdu. In Bengali it is known as Peyara. They are also referred to as the bayabas locals of Guayaba. Some people prefer eating guavas to oranges, as the former have more concentration of Vitamin C and are also a lot cheaper than the latter. ', '28056guava.jpg', 'Active'),
(4, 1, 'Pineapple', 'The Pineapple or the (Ananas Comosus) is a tropical berry fruit. It is a multiple fruit, as multiple spirally flowers grow along the axis and each flower produces a single fleshy fruit. Each fruit overlaps the other produced by a different flower adjacent to it, thus, making the pineapple appear as a single fruit. The leaves of the tree are 20-72 inches in length and are needle tipped and bear sharp, up curved spines on their margins. The stem grows straight, and has a tuff of short leaves at the top, which is known as the crown.\r\n\r\nA pineapple varies in colour from white to yellow and is sweet in taste. It can be had raw and is also relished when glazed or canned. It serves as an ideal dessert and is often added to salads to enhance their tastes. Pineapples are a rich source of Vitamin C and Manganese. They also contain ample amounts of vitamins B1, B6, Copper and other dietary fiber. ', '10737pineapple.jpg', 'Active'),
(5, 1, 'Grapes', 'Grape is a climacteric fruit that grows on the perennial and deciduous woody vines of the genus Vitis. Grapes are small round or oval berries, which have a translucent flesh, and a smooth textured skin. They sometimes have seeds, which are edible, but most of the varieties are seedless. The grapes, which are eaten are called table grapes, the ones used in the fabrication of wine are called wine grapes, and the ones used to make resins are called resin grapes.\r\n\r\nDifferent varieties of grapes range in colour, size, taste and physical characteristics. The colors range from green, amber, red, blue-black, and purple. In general, whole grapes have a slightly crunchy texture and have a dry, sweet and tart taste. Grapes generally grow in clusters of 6 to 300\r\n', '31190grapes.jpg', 'Active'),
(6, 1, 'Grapefruit', 'Grapefruit or the Forbidened fruit of Barbados is a subtropical citrus tree. The tree is an evergreen tree, which grows to a height of about 5-6m, though they may also attain a height upto 13-15m also. The leaves of the tree are long and and thin and dark green in colour. It bears four petaled flowers, which are usually white in colour.\r\n\r\nThe grapefruit is an oblate fruit, which ranges in diameter from 10-15 cm. The skin is usually yellow-orange in colour and the flesh is segmented and acidic. The colour of the flesh varies as per the cultivars; it may have a white, pink and red colour.', '17495grapefruit.jpg', 'Active'),
(7, 1, 'Kiwifruit', 'Kiwifruit is often referred to as the exotic fruit owing to the exquisiteness in its appearance., it is a fruit that holds great surprises. Actinidia deliciosa, commonly known as Hayward kiwi is the most commonly found variety of kiwi. The fruit though appears brown from outside has a translucent emerald green flesh, with scattered small white veins and small black seeds. The flesh of this fruit has a creamy consistency and a splendid taste, which reminds us of a mixture of bananas and strawberries. It has a distinct sweet taste of its own. With the growing awareness about the fruit more and more varieties are now available in the market.', '19268kiwifruit.jpg', 'Active'),
(8, 1, 'Chikku', 'Sapodilla or the Manilkara Zapota is an ever green tree, which is long living and is native to the new world tropics. Though it is a native of Mexico, it was brought to the Philippines by the Spanish Colonists. It is known by the name of chikoo or chiku, or chickoo in India. South Asia and Pakistan. An average Sapodilla tree grows to about 30-40m in height. The bark of the tree contains a white gummy latex called the chicle. \r\n\r\nThe sapodilla trees bear fruit twice a year, thour they flower all year round. The fruit, which grows has a brown skin, resembling a potato. It grows to about 4-8 cm in diameter, and may contain 2-10 seeds. Sapodilla has a high latex content, and does not ripen until picked. It is extremely sweet to taste, and tastes very much like cotton candy or caramel and has a grainy texture.', '29741chikku.jpg', 'Active'),
(9, 1, 'Orange', 'Oranges belong to the category of citrus fruits and are of the Citrus sinensis family. The citrus trees are of the same genus, Citrus, and remain largely interbreedable, that is to say that there is only one super species. Some citrus fruits include oranges, grapefruit, lemons, limes, etc. The fruits belonging to the citrus family are considered berries, as they are fleshy, soft, have seeds, and are derived from a single ovary. \r\n\r\nOranges are believed to be hybrids between the pomelo (Citrus maxima) and tangerine (Citrus reticulata) and are considered to be a hesperidium kind of a berry. The orange tree is a small flowering tree, which grows to a height of about 10 m. It has evergreen leaves, which grow to a length of about 4-10cm long. The seed inside an orange is referred to as the pip, whereas the thread like structures attached to the peel and the flesh are termed as the pith.', '23906orange.png', 'Active'),
(10, 1, 'Pomegranate', 'The pomegranate tree is a deciduous tree, which bears fruits and grows to an average height of 5â€“8 meters. The tree originally belongs to the regions of pakistan, Afganistan and Iran. The tree has been cultivated since time immemorial in the Mediterranean regions including Algeria, India, Turkey, Iran and also in some parts of South East Asia, Tropical Africa, peninsular Malaysia, etc. It is available in the months from September to January in the Northern Hemisphere and and from March to May in the Southern Hemisphere.  \r\n\r\nThe leaves of the tree are oblong and narrow and have a glossy texture. They are about 3-7 cms in length and are 2 cms broad. The fruit has a peculiar hexagonal shape with a thick red skin and around 600 seeds. The seeds of the fruit range in colour from white to deep red. There are also some varieties available in the market, which have a purple pulp colour. Pomegranate trees are drought tolerant and may be grown in dry areas as well. The tree is susceptible to root decay from fungal diseases in wetter regions. They are also tolerant to moderate frost, and can survive in a temperature of about 10o C.\r\n', '20211pomegranate.png', 'Active'),
(11, 1, 'Water Melon', 'The watermelon plant is a climber or a trailer or a vine like structure, originally from South Africa. Scientifically known as the Citrullus lanatus, it belongs to the family Cucurbitaceae. The fruit produced by this plant is called pepo by the scientists. This fruit has a thick rind (exocarp)and has a soft edible pulp (endocarp or mesocarp)on the inside, usually with a lot of seeds. The sweet and juicy flesh ranges in colour from pink, red to yellow. \r\n\r\nWatermelon is a tasty and filling fruit, which is low on calories and has absolutely no fat. Though, it is mostly the pulp which is consumed, but the outer shell and seeds are also consumed in many countries. In many Asian countries, roasted watermelon seeds are eaten as a snack. The rind is used in the form of pickles, jams, etc.', '9769water melon.jpg', 'Active'),
(12, 1, 'Papaya', 'Papaya is a Tropical fruit, with a soft musky taste and a butter like consistency. It is the fruit of the plant Carica papaya, in the genus Carica. It is native to the tropics of the Americas, and was cultivated in Mexico several centuries before the emergence of the Meso-American classic cultures. It is often referred to as the tree melon or the pawpaw. It was called the \"fruit of the angels\" by Christopher Columbus.\r\n\r\nA Papaya tree is a large tree, with a single stem. It grows to about 5 to 10 meters tall, and has spirally arranged leaves mainly confined to the top of the trunk. The leaves are large, ranging from 50-70 cm in diameter. They have deeply palmately lobes having an average of 7 lobes. The tree is generally \r\n\r\nunbranched if unlopped. ', '28078papaya.png', 'Active'),
(13, 1, 'Plums', 'Plums are stone fruit trees of the genus Prunus, subgenus Prunus. The other fruits belonging to this family include peaches, cherries, bird cherries, etc. There are more than 140 varieties of plums sold in the world market today. It comes in a wide array of shapes and sizes and skin colours. They exist in two absolutely contrasting flavours, both sweet and tart. Some varieties amongst the numerous existing ones are dried to make prunes. Even after drying, they do not loose their sweetness.\r\n\r\nAs there are a number of varieties of the fruit which are available, it is therefore not strange, that it has different places of origin. It is believed that the European plum was discovered some two thousand years ago, and it originated in the area near the caspian sea. Researchers are of the opinion that \r\n\r\nhundreds of varieties of European Plums existed during the Roman times. The Japanese Plums on the other hand originated in China,. USA, Russia, China and Romania are the main commercial producers of plums all over the globe.', '16092plums.jpg', 'Active'),
(14, 1, 'Strawberry', 'The Garden Strawberry or the strawberry is the most widely cultivated berry throughout the world. The strawberry plant belongs to the family of the Rosaceae, and is often referred to as the accessory fruit. The fleshy part of the fruit is derived not from the ovaries, but from the peg at the bottom of the bowl shaped hypanthium that holds the ovaries. The garden strawberry was first grown in Europe in the 18th century and represents the accidental cross of Fragaria virginiana from eastern North America, which is rich in flavour, and the Fragaria chiloensis from Chile, which is large in size. Today, these strawberries have been replaced by the Woodland Strawberries, which have been commercially cultivated.', '31717strawberry.jpg', 'Active'),
(15, 1, 'Rasberry', 'The Garden Strawberry or the strawberry is the most widely cultivated berry throughout the world. The strawberry plant belongs to the family of the Rosaceae, and is often referred to as the accessory fruit. The fleshy part of the fruit is derived not from the ovaries, but from the peg at the bottom of the bowl shaped hypanthium that holds the ovaries. The garden strawberry was first grown in Europe in the 18th century and represents the accidental cross of Fragaria virginiana from eastern North America, which is rich in flavour, and the Fragaria chiloensis from Chile, which is large in size. Today, these strawberries have been replaced by the Woodland Strawberries, which have been commercially cultivated.', '14010rasberry.jpg', 'Active'),
(16, 1, 'Blueberry', 'Blueberries are small fruits of a shrub tree, which belongs to the heath (Ericaceae) family. Other members of this family include cranberry, bilberry, azalea, mountain laurel and rhododendron. These berries grow in clusters and vary in size from that of the size of a pea, to the size of a marble. The colour often ranges from maroon to purple black. The flesh of the blueberries is semi-transparent and encases tiny seeds. The berries, which are cultivated are mildly sweet, whereas those which grow in the wild are more tart and tangy in flavour.\r\n\r\nThey are round and flattened in shape. They have a crown like structure at the bottom, and a depressed ring at the top of the fruit. Blueberries are usually around 1/2 inch in diameter. ', '10603blueberry.jpg', 'Active'),
(17, 1, 'Jamun', 'Jamun tree is an evergreen tropical tree which belongs to the flowering plant family of Myrtaceae. It is native to India, Pakistan and Indonesia. It is also widely cultivated in southern and southeastern Asia including the Philippines, Myanmar, and Afghanistan. The tree is large and has loads of branches. An average tree grows to a height of about 30 meters. The bark of the tree is brown or greyish, extremely smooth and is about 2.5 cm thick. Leaves are elliptic oblong or broadly ovate, and are extremely shiny.\r\n\r\nThese trees grow really fast and can reach upto a height of 30m, and can live for more than 100 years. They provide a lot of shade and are often grown for their ornamental value. ', '27848jamun.jpg', 'Active'),
(18, 1, 'Blackcurrant', 'The Blackcurrant (Ribes nigrum) is a species of the Ribes berry, which is native to central and northern Europe and northern Asia. It is also known as French \"cassis\". It is a shrub, which generally grows to about 2 meters in height and has woody branches. The leaves of the shrub are deeply lobed. It bears small white flowers, often in clusters. The fruit, the blackcurrants, are dark purple in colour and bloom in the summer months. All parts of the plant, i.e. the fruits, leaves and the seeds can be utilized. All parts of the plant, but especially the young buds have a strong and typical blackcurrant fragrance.\r\n\r\nThe blackcurrant plant is a hermaphrodite, i.e. it is both a male and a female; making it a self-fertile plant. ', '29025blackcurrant.jpg', 'Active'),
(19, 1, 'Redcurrant', 'Currants are mostly high utility plants or deciduous shrubs, which grow to an average height of 1-1.5 meter. They mostly consist of redcurrants, blackcurrants or gooseberries, etc. Redcurrants are highly flavoured berries, which are used for making jams and jellies. They are slightly more sour than the blackcurrants. The Redcurrant or the Ribes rubrum belongs to the genus Ribes in the gooseberry family Grossulariaceae. This berry or currant is native to many parts of Western Europe including Belgium, France, Germany, Netherlands, Northern Italy and Spain.\r\n\r\nA flowering plant, the redcurrant bears yellow-green flowers, which mature to form translucent red berries, which are consumable. An average berry is around 8-12 mm in diameter. There are around 3-10 berries in each raceme.', '28999redcurrant.jpg', 'Active'),
(20, 2, 'Barley', 'Barley is a cereal grain used in large proportions as an animal feed, while the rest is used as a malt in whiskey or sugar as well as health food. Barley belongs to the family of poaceae, a plant commonly known as grass. It is available in a variety of forms like whole barley, hulled barley, pearled barley as well as barley flakes. It is a rich source of metals like zinc, copper, phosphorous, etc. as well as other nutrients like calcium and iron.\r\n', '8341barley.jpg', 'Active'),
(21, 2, 'Rice Bran', 'Rice bran is the hard outer part of the grain that consists of aleurone, a form of protein found in the protein granules of maturing seeds, as well as pericarp, the outer and edible layer of the rice kernel. Apart from these two, it also contains germs and endosperm of the rice kernel. Rice bran is obtained as a by-product during the rice milling process and the outer layers or parts are removed at the time of whitening or polishing of the husked rice. It composes of many nutritious substances like protein, fat, fiber, various anti-oxidants, etc. that have a beneficial effect on human health. Because of its multi-nutritional properties, rice bran is being consumed by humans for thousands of year ', '30122ricebran.png', 'Active'),
(22, 2, 'Black Gram', 'Black Gram or we can say Urad originated in India where it has been spreading its wonderful taste in many different ways for ages now. Cultivated in almost all parts of India, this leguminous pulse has inevitably marked itself as the most popular pulse and can be most appropriately referred to as the king of the pulses. Whether it be the very special Dal makhni of Punjab or the Vada Sambhar of South India, the taste rules the hearts of one and all alike. Indian immigrants have popularized the taste worldwide as well.', '5531blackgram.jpg', 'Active'),
(23, 2, 'Navy Beans', 'Navy Bean/White Navy Beans is a small, pea-sized bean which is creamy white in color. Now interestingly this bean got its strange name in the beginning of the 20th century when it became the staple food of the United States Navy. Haricot Beans, Black Beans and Pinto Beans collectively belong to the large bean family which is scientifically known as Phaseolus vulgaris. Preferably these are also referred to as the common bean due to their common ancestry. Historical references have shown that common bean originated Peru and it was from there only that eventually it spread throughout South and Central America due to immigrants. Europe had tasted beans in the late 15th century when Spanish wanderers and explorers brought the beans from their respective voyages around the globe.', '7480navybeans.jpg', 'Active'),
(24, 2, 'Fonio', 'Though most of us are unaware about this little cereal grain, it is widely popular in Africa where it serves a large population from the threats of starvation. A boon for this dark continent has now started spreading its wings towards the rest of the world. Equipped with immense qualities, Fonio continues to rule and nourish the stomachs of all Africans.\r\n\r\nInterestingly the cereal which scares away the hungry pangs of millions of people is itself called hungry Rice. Fonio is grown in West Africa and due to its small grain size it has always been sidelined as a marginal crop.', '12561fonio.jpg', 'Active'),
(25, 2, 'Broad Beans', 'Also known as horse bean, Windsor bean, English bean, tick bean, fava bean, field bean, and pigeon bean, Broad Bean is a species of Beans that belong to the large family of vicia Faba, Fabaceae . The categorization has been largely done on the basis of different varieties as well as their respective uses in various countries. It seems that Broad beans got their name from the seeds which are large and flat.\r\n\r\nNow these subspecies like faba var. minor is the beck, tick, or pigeon bean, greatly used for human consumption in the Arabic world, along with their use for animal forage as well. Horse Bean(var. equina)for that matter has been accordingly named as it is widely used as animal feed especially horses. Broad Bean(var. major.) is popularly also known as Windsor or the straight bean is generally dried and then eaten as pulses.', '17014-9674.jpg', 'Active'),
(26, 2, 'Chickpea', 'Chickpeas are edible legumes belonging to the family of Fabaceae with slightly round & irregular shape, and are slightly longer in size than the normal peas. They are also known by the names of garbanzo beans, and have a nut like taste with a high protein content in them. The plants of the chickpeas grow between 20-25 cm and have feathery leaves on both sides of the stem. The scientific name of chickpeas is Cicer arietinum, and they are also known as chana in Hindi and several other names like Bengal Gram, Kadaale Kaalu, Sanaga Pappu, Shimbra, etc. Chickpeas can grow well only in sub tropical and tropical climates requiring an annual rainfall of more than 400 mm.', '28791chickpea.jpg', 'Active'),
(27, 2, 'Bambara Beans', 'Widely known as African groundnut, Bambara Bean is indigenous to tropical Africa. Vignea subterranea, that is what we call it scientifically. One can easily guess by the name Bambara Bean that it might have originated in the tropical soils of Mali. However with the progress of time its roots have spread worldwide. Now it is grown in Asia, northern Australia and South and Central America as well.\r\n\r\nIt is plant with high adaptability quotient is well suited for erroneously hot, dry and challenging regions where many other crops fail to survive due to lack of water and nutrients. To add to the surprise element, one should see the range of varieties of Bambara Bean produced.', '21732bambarabeans.jpg', 'Active'),
(28, 2, 'Winged Beans', 'More popular as Goa Bean, Winged Bean is a tropical leguminous plant. The beans produced can give a run to Soybeans in nutritional quality. Although it is a herbaceous perennial plant which has a life of two years yet these Perennials, especially small flowering plants like Winged Beans, grow and bloom over the spring and summer and die every autumn and winter. Interestingly these plants again return in the spring from their root-stock rather than seedling themselves like an annual plant. \r\n', '19789wingedbeans.jpg', 'Active'),
(29, 2, 'Wheat', 'Ranked next to maize in terms of consumption, wheat has been playing an important role in leveraging the agrarian scenario of India. The annual production of wheat in India stands at 65-75 million tonnes, thereby making India its second largest producer in the world after China. People in India consume 70-72 million tonnes of wheat on an average. In India, it is commonly known as atta and is eaten mostly in the form of rotis, chapatis, etc. There are about 200 flour mills operating in India having a capacity to produce about 15 million tons of wheat.', '4098Wheat.jpg', 'Active'),
(30, 2, 'Millets', 'One of the oldest forms of crops in the world, millets are the first cereal grains to be domesticated for human consumption. Millets can be described as a group of small seeded species of grains or cereals that are mainly grown for human food and animal feed. Millets are grown under difficult production environment and come under the category of agronomic group. During the prehistoric times, millets formed a very important part of peoples diet, much before rice came into existence. Millets belong to various genera in the subfamily Panicoideae, that are a part of the grass family Poaceae. \r\n', '10830millet.jpg', 'Active'),
(31, 2, 'Mung Beans', 'A delightful freshened raw flavor with a delicate hint of sweetness, mouthwatering, isnt it. Now that is exactly how Mung Beans taste. These crispy and sumptuous beans are one of the most vital vegetables in various oriental food and delicacies. Salads are incomplete without bean sprouts and when it comes to bean sprouts its Mung Bean sprouts that we are talking about.\r\n\r\nCoated with a royal green skin, these beans are also known as Green Bean in China. Mung Bean is the most popular bean known in the entire world for its bean sprouts and in various parts of the world it is known by several different names like Mung Bean, Green Bean, Sabut Moong, nga choy, Mungo bean, Habichuela mungo, Oorud bean, Bundo, Mash bean, Golden gram, Green gram, Chinese bean sprouts and many more.', '23763Mung Beans.jpg', 'Active'),
(32, 2, 'Moth Beans', 'Cereals and pulses are important sources of energy and protein and thus continue to occupy an important place in human nutrition particularly in the developing countries. Cereals and pulses also contribute to minerals and vitamins in the daily dietary especially in the low income families. Among the rural people in the arid regions of Rajasthan in India who subsist on cereals and millets, Moth Bean is the main source of protein and calories.\r\n\r\nThis plant bears a close resemblance to a small mat owing to its shortness and densely matted leaves. No wonder that is why it is called Moth Bean, mat bean, matki bean or dew bean as well. Moth Bean Or scientifically known as Vigna aconitifolia is most abundant in the semi-arid regions of Rajasthan, India.', '5897moth beans.jpg', 'Active'),
(33, 2, 'Black Eyed Pea', 'Black eyed pea is also referred to as black eyed beans or lobiya and many other names in the regional languages. It is considered to be a subspecies of the cow pea and is prominently grown for its medium sized edible bean. Scientifically known as V. u. unguiculata, this pea is a pale colored pea with a black scar which can be seen prominently. Now it might be because of the black scar appearing on it that it is called as black eyed pea.', '15630black eyes pea.jpg', 'Active'),
(34, 2, 'Maize', 'Maize is an annual cereal crop, belonging to the grass family of Gramineae. It composes of kernels having long ears. These kernels are used in the form of grains as food for both humans and animals and also as a source of oil. Maize is also known by the name of corn in many countries. Maize or corn is a rich source of carbohydrates, Vitamin B, proteins and minerals. Most of commercial maize grows at a maximum height of 2.5 ft. In India, maize is also known as bhutta in Hindi.', '29487maize.jpg', 'Active'),
(39, 2, 'Pigeon Pea', 'Scientifically known as Cajanus Cajan, Pigeon Pea belongs to the widespread family of pulses. In India Pigeon Pea is more popular as Arhar or red gram. Its name changes according to the places it is grown in but its qualities remain the same irrespective of climate and soil. It is counted amongst the major pulses of India and many other Asian, African, Latin American, and the Caribbean regions.\r\n\r\nGenerally Pigeon Pea is a shrub which grows around a meter tall. And it has special short season varieties available as well. Usually the flowering response is enhanced when daylight is 11 to 12 hours long.\r\n', '24550pigeon p es.jpg', 'Active'),
(40, 2, 'Rice', 'Rice is a staple food crop in many parts of the world, including India. In fact, about 65% of the people consume rice as part of their diet in India. India is the second largest producer of rice after China, accounting for about 90 million tons of production in the world. Rice is cultivated during both winter and summer, with over 4000 varieties of rice being grown every year. In countries where agriculture is the main occupation, the cultivation of rice is seen as the principal activity and a major source of income.', '6439rice.jpg', 'Active'),
(41, 2, 'Garden Pea', 'Garden Pea is an annual herb though its growth factor is largely dependent on the climate and temperature. A green colored pod shaped fruit, Garden Pea is majorly grown as a cold season vegetable. Garden pea can hardly tolerate the bright rays of sun and is extremely delicate towards harsh summers. It is advisable to grow peas in slightly acidic and well drained soil as they blossom to their fullest in such conditions.\r\nThere are a number of varieties of Peas, which can be classified as short peas and vine peas. The vine peas have characteristic thin tendrils from leaves that coil with any available support to reach a maximum height of about 2meters.', '18388garden pea.jpg', 'Active'),
(42, 2, 'Lentils', 'One of the staple foods in India, lentils have remained a very important source of diet for many people because of the richness of protein. Lentils, also known as dal or pulses, are annual leguminous plants that are grown primarily for their lens shaped seeds. The plants are at least 15 inches tall and the lentils grow in a pod that contain a maximum of two lentil seeds. Lentils are available in many sizes like round, oval, etc. as well as in many colors like yellow, orange, black, etc. All the varieties have a more or less nutty flavor, with very slight difference in each variety.\r\n', '23933lentils.png', 'Active'),
(43, 3, 'Basil Seeds', 'Basil is an aromatic, low growing herb the leaves of which have a bright green to purple ovate colour, and is grown in warm, tropical climate. It belongs to the botanical family of Ocimum Bailicum, more commonly known as mint. It is grown on a mass scale in central and tropical Asia and Africa and has been cultivated for as long as 5000 years. In India, it is known as the sacred Tulsi and holds a major religious significance. The basil leaves are known to have many medicinal and other healing properties and are strongly recommended by physicians practising Ayurveda.', '24981basil seeds.jpg', 'Active'),
(44, 3, 'Cumin Seeds', 'Cumin, also known as jeera in India, is a widely used ingredient in Indian cuisines. It is referred to as the dried seed of Cuminum cyminum that belongs to the parsley family. Cumin seeds are derived from the plant of cumin, a herbaceous annual plant, that has slender branched stems about 30 cm tall. Cumin seeds are a popular form of spice that are known for their aroma and are used in Indian, Pakistani, Cuban Mexican cuisine, etc. Some of the major market players of cumin seeds are Iran, India, Syria, Pakistan and Turkey.', '8874cumin seeds.jpg', 'Active'),
(45, 3, 'Sesame Seeds', 'Sesame seeds or benny seed or benne seed can be described as tiny oval seeds that are flat in their structure and have a nutty taste as well as a delicate crunch. They are the most common forms of seeds produced in the world. The sesame seeds are highly held in the market because of their high content of sesame oil. These seeds come in a variety of colours like white, yellow, black and red.\r\n\r\nThe seeds of sesame are obtained from Sesamum indicum, an annual herb that grows well in hot climates up to a maximum height of seven feet. These seeds mature inside a pod which pop up once they become mature. They are widely used in making bread products, confectioneries, and as a garnishing item.', '16027sesame seeds.png', 'Active'),
(46, 3, 'Sunflower Seeds', 'The sunflower plant are cultivated annually, has large yellow flowers, broad leaves and can grow from 3-15 ft (0.91-4.6 m) high. The seeds are harvested after about 120 days, dried, roasted, salted and packaged.\r\n\r\nActually the sunflower seeds are the fruits of the sunflowers. In botanical terms sunflower seed in more accurate terms are known as an achene, however when dehulled, the edible remainder is called the sunflower kernel/seed.Across the globe the sunflower kernels/seeds are usually consummed as a nourishing refreshment rather than as part of a complete/full fledged meal. Sunflower seeds are also used as a garnish in various cuisines.\r\n ', '4664sunflower seeds.jpg', 'Active'),
(48, 3, 'Fennel Seeds', 'Fennel seeds are defined as the dried yellowish brown schizocarpic fruits that are obtained from the plant of fennel, a perennial herb in the genus Foeniculum. These seeds are about 10 cm long and about 4 mm wide. They have a sweet and aromatic flavour and emit a pleasant odour. In India, fennel seeds are available in yellow and green colour. While the green coloured fennel seeds (saunf) are chewed as a mouth freshener, the yellow variety is used for cooking purposes.\r\n\r\nFennel seeds are a rich source of minerals like potassium, manganese, magnesium, etc. There are two main constituents of fennel seeds, namely, Anethol and Fenchone. Anethol helps in controlling muscle spasms in the intestinal tract and Fenchone comprises of many medicinal properties.\r\n', '16246fennel seed.jpg', 'Active'),
(49, 3, 'Fenugreek Seeds', 'The seeds of a leguminous plant eaten as a vegetable. The seeds are used as a condiment or seasoning. The flavor of these seeds are mildly bitter and at the same time are slightly sweet. The seeds are rhombic in shape and usually they are yellow to amber in color. The Arabic word hulb ,Helba in Egypt, for the seed resembles its Mandarin Chinese counterpart hu lu ba.\r\n\r\nFenugreek is regarded as a herb native to the semi-arid regions of southeastern Europe, northern Africa, and western Asia, but is widely cultivated in other parts of the world. The word fenugreek is derived from the two Latin words foenum-graecum meaning Greek hay. It is known as Methi or Mithi in Hindi.', '6628fenugreek.jpg', 'Active'),
(50, 3, 'Tamarind Seeds', 'Botanically known as Tamarindus Indica, the tamarind plant invariably grows in the tropical regions and is highly appreciated for its ornamental qualities. Belonging to the vast plant family Caesalpiniacae, Tamarind plant has marked a distinct identity of its own due to its numerous uses in food, medicine and other arenas. Though it is for the luscious pulp of the ripened pod, that tamarind has gained immense popularity, however the plant is also cultivated for its useful bark and seeds.', '11853Tamarind seeds.jpg', 'Active'),
(52, 3, 'Jojoba Seeds', 'A seed that gives birth to an entire plant comprises in it, life giving nutrition and various other nourishing qualities. Out of the infinite number of plants on this earth, numerous plants are nourished for their seedlings. The encapsulating powers of certain seeds provide us with great benefits. Certain seeds are edible, certain are nutritious, and certain seeds are processed for their oil.\r\n\r\nJojoba is one such plant which is grown for the distinctive qualities of its seeds. The seeds of jojoba plant imbibe in them, a great powerhouse of benefits. The jojoba seed oil is completely odorless, colorless and has stable levels of oxidized elements which make this oil a great beneficiary for glowing skin.', '26131jojoba seeds.jpg', 'Active'),
(53, 3, 'Flax Seeds', 'Botanically referred to as Linum usitatissimum, Linseed is widely grown for its naturally herbal oil and fibers. Linseed oil is a yellowish colored loi which is carefully extracted from the dried seeds of the linseed plant. In various regions of the world it is also known as flax seed.', '28752linseed.jpg', 'Active'),
(54, 3, 'Castor Seeds', 'The castor plant is the source of the castor seeds. The plant is grown, mainly, for its seeds which is used to make castor oil. This oil is used in lubricants, soaps, inks, varnishers, linoleum and a host of other areas. It is a commercially important crop and is grown largely in Western India, Brazil and China. This non edible oilseed is popular as it is biodegradable and does not cause any harm to the environment. Around 50-55% oil is contained in the castor seeds.\r\n\r\nThe tiny grey seeds of the castor plant, dotted with brownish spots are contained inside the fruit. Two varieties of the castor seeds are known, one, being the red seeded and the other, white seeded. The castor oil, chiefly, consists of ricinoleate of glycerol or triricinolein along with small amounts of palmitin and stearin.', '25161castor seeds.jpg', 'Active'),
(55, 3, 'Mustard Seeds', 'Derived from the many varieties of mustard plants, mustard seeds are very small seeds, about 2 mm in diameter, and seen in colors ranging from yellowish white to black. They are one of the most important ingredients used in many regional cuisines across the world, especially in the Indian sub-continent. Mustard seeds can be used either in whole form or in powdered form. Although there exist around forty different types of mustard plants, the mustard seeds are primarily derived from three main types of mustard plants. These three plants are black mustard plant, also known as Brassica Nigra brown Indian mustard, also known as Brassica juncea and white or yellow mustard also called Brassica Hirta/Sinapis Alba.', '18254mustard seed.jpg', 'Active'),
(56, 3, 'Cotton Seeds', 'Cotton fiber is amazingly versatile, whether alone or blended, it outsells all other fibers combined. Its the leading cash crop in India, China as well as in Americas. Consumers across the world prefer fabrics made from cotton owing to the fabrics natural comfort, visual appeal, durability and value.\r\n\r\nThe Cotton industry maintains competitiveness due to the growing use of genetically modified cotton seeds, high production yields, burgeoning world demand and generous support payments from the Government. A potential new market for this industry may be biofuels produced from cottonseed oil. The popularity of cotton products is not expected to wane with consumption growing at faster rates than demand for manmade fibers', '16764cotton seed.jpg', 'Active'),
(57, 3, 'Melon Seeds', 'Man has known of the existence and uses of melons since the past 4000 years and today, a wide variety of melons are known to exist around the world. The melon is a member of the Cucurbitaceae family with its characteristic fleshy fruits. Thought to be originally from the Middle Eastern region, the melon seeds were transported to the Americas by Columbus and the Spanish explorers. In India, these cooling and nutritious fruits are found in abundance during the summer time. Being lower in calories and having high water content, the melon is a refreshing and healthy food.\r\n\r\nThe melon seed is, generally, a grayish white hard shell with a white inner kernel, which is soft and oval in shape. The seeds of the melon are rich in protein, omega-3 fatty acids, vitamins, fats and other nutrients.', '23045melon seed.jpg', 'Active'),
(58, 4, 'Pepper', 'Pepper is the dried berry of Piper nigrum. This vine which can grow up to ten feet tall is indigenous to India and Asia. Pepper is actually berries that are picked about nine months after flowering. Black Pepper, the spiciest, is berries that are picked unripe. The berries used for White Pepper are ripened on the vine and soaked so that their outer hulls are easily removed. Green Peppercorns are immature berries which are freeze-dried or packed in brine for preservation.\r\n', '23413black pepper.jpg', 'Active'),
(61, 4, 'Cinnamon', 'Cinnamon is a small tropical evergreen tree which grows 10â€“15 meters tall, belonging to the family Lauraceae. The two main varieties of cinnamon are cinnamomum cassia and cinnamomum zeylanicum, grown widely in Sri Lanka, India, Java, Sumatra, the West Indies, Brazil, Vietnam and Madagascar. Its inner bark is widely used as a spice and there are as many as 250 different varieties are found across the globe. Due to its distinct odour, it is widely used as an important ingredient of many mouth watering dishes of the world. ', '7753cinnamon.png', 'Active'),
(62, 4, 'Cloves', 'Clove, is one of the oldest spices in the world. This dried, unopened flower bud of a small evergreen tree is widely used  as an ingredient of a variety of beverages, food specialties, medicines, cosmetics, perfumery and toiletries. \r\n\r\nThe word clove originates from the Latin word clavus, which means nail, as its buds resemble small irregular nails in shape. Clove is a native to the North Moluccas, the Spice Islands of Indonesia and is widely cultivated in Brazil, the West Indies, Mauritius, Madagascar, India, Sri Lanka, Zanzibar and Pemba. Indonesia is the largest producer of cloves in the world followed by Madagascar and Tanzania.', '21326cloves.png', 'Active'),
(63, 4, 'Coriander', 'Coriander, also known as the Chinese Parsley, Cilantro, Dizzycorn and Japanese Parsley, is an annual herb in the family Apiaceae. It is among the the first spices used by mankind, having been known as early as 5000 BC. Its description is also mentioned in Sanskrit writings dating from about 1500 BC. Coriander is referred to in the Bible, in the books of Exodus and Numbers, where the colour of â€˜mannaâ€™ is compared to it. Romans introduced it to Britain and coriander was widely used in cookery and medicine until the Renaissance, when an array of new aromatic spices replaced it. Historical findings suggest that ancient physicians like Hippocratic and Pliny were familiar to it. ', '27759coriander.JPG', 'Active'),
(65, 4, 'Ginger', 'Ginger, or zingiber officinale, is a perennial plant having thick branching aromatic rhizomes and leafy reedlike stems. For centuries, ginger has been widely used as a spice throughout the world, especially in Asian countries. A native to China and India, this plant is widely cultivated in Southeast Asia, West Africa, and the Caribbean. It needs a minimum annual rainfall of 150cm, temperatures of 30Â°C or over, a short dry season and a deep fertile soil. Known for its slightly biting and hot flavour, this spice is widely used in preparing gingerbread, ginger ale, gingersnaps and Asian dishes. It adds delicacy to the dish by its rich, sweet, warm and woody aroma. \r\n', '11404ginger.jpg', 'Active'),
(66, 4, 'Dry Red Chilly', 'Dry Red Chilly or Lal Sukhi Mirch is one of the many spices used in Indian cooking. It is the fruit of the plants from the genus capsicum, which are members of the nightshade family Solanaceae. They are commercially cultivated in many part of the world as they yield better returns as compared to other varieties. The heat in all chiles, whether hot or mild, is due to the flavourless, odourless, colourless chemical known as capsaicin which is present in chilli seeds and membranes. \r\n\r\nDry red chilly is generally used as a tempering agent and is fried with other spices, then added to the dish as a final touch. In India, lentils, vegetables and many other regional cuisines are flavoured with this spice-flavoured-oil, comprising of red chilly, cumin, and other spices. Dried chillies can be stored for a longer duration-however, the tasty part of it gets lost and only the fiery part of the chili peppers remain in dried form. ', '20437dry red chilli.jpg', 'Active'),
(67, 4, 'Cardamom', 'Cardamom, an aromatic spice is a member of the ginger family Elettaria cardamomum. This small pungent seed is used worldwide for flavouring variety of items including coffee, curries and desserts. It is one of the most valued spices of the world and was the principal item of trade in the ancient world. A native to the East, it has its origin in the forests of the western ghats in southern India. This spice also grows in Sri Lanka, Guatemala and Tanzania.\r\n\r\nThere are the two main genera of the ginger family Zingiberaceae that are named as forms of cardamom, namely Elettaria and Amomum. Both varieties take the form of a small seedpod, triangular in cross-section and spindle-shaped, with a thin papery outer shell and small black seeds. Elettaria pods are light green in color, while Amomum pods are larger and dark brown.', '5098cardamom.jpg', 'Active'),
(68, 4, 'Turmeric', 'Turmeric has been used since time immoral as a food ingredient, medicine, herb, coloring agent. It is also popular as medicine popularly used as a part of home remedy, when applied on face it is said to impart a natural glow on the skin. Turmeric is one of the most popular spices of India. Almost in every dish prepared in India, Turmeric is added in it. Further, it is also regarded by the Hindus as something sacred for use in ceremonial and religious functions. With so many varied usage turmeric is a popular product all over the world. \r\n\r\nSeveral unique properties of turmeric make it an ideal choice as a food flavor. It also finds use in the preparation of liquors, dyestuffs, medicines, cosmetics and toiletries. It is used as natural colorant. ', '1400turmeric.jpg', 'Active'),
(69, 4, 'Hing', 'Asafoetida is an extremely pungent aromatic spice obtained from the rhizomes of spices ferula or giant fennel. In fact, it is is a hard aromatic resinous gum collected from certain species of giant fennels, plants of the genus ferula. It is available in blocks or pieces as a gum and more frequently as a fine powder, sometimes crystalline or granulated. Asafoetida is commonly used as a flavoring or spice in Persian and Indian cooking or as a condiment to be sprinkled over food after it has been cooked. \r\n\r\nIt is called devils dung because of its strong pungent smell due to the presence of sulfur compounds. The word asafoetida is believed to have gotten its name from the Persian word aza and a Latin word foetida meaning stinking. ', '5201hing.jpg', 'Active'),
(70, 6, 'Cashew Nuts', 'The cashew trees appear more like bushes than trees because of their small stature. They are evergreen trees, with an average height of not above 30 feet. The limbs of the tree spread fast and strike the ground to re-root themselves. The trunk of the tree is often short and irregular in shape, giving it an extremely disheveled look. The cashew trees grow abundantly in the tropics and are extensively found near the equator, as they flourish in extreme heat.', '23408cahsew nut.jpg', 'Active'),
(71, 6, 'Almonds', 'Scientifically known as the Prunus dulcis, the almond tree is the cousin of the peach, cherry and the apricot trees. It bears fruits, which have stone like seeds within, and it is these seeds, which are better known as the almond nuts. The tree is a small deciduous tree that grows to a height ranging from about 4 meters to 10 meters. \r\n\r\nIts shoots are green at first but later turn into a purple colour, when they are exposed to sunlight. The fruit is a drupe, which is about 3.5 to 6 cm long. The outer covering or the exocarp, is a leathery green-grey coat called the hull, which houses the hard shell, which contains the edible kernel. The shell is referred to as the endocarp and matures approximately seven to eight months after flowering.', '16105almond.jpg', 'Active'),
(72, 6, 'Raisins', 'Raisins are easy to pack, easy to eat and almost never go bad. Raisins could be considered one of the worlds first snack foods. Indeed historians tell us that people picked grapes more than 3,000 years ago and spread them out in the sun to dry, a process that is still prevalent to this day.\r\n\r\nRaisins are sun dried or oven dried dehydrated grapes. Raisins are of the size of small pebbles, raisins have wrinkled skins surrounding chewy flesh that tastes like a burst of sugary sweetness. While the colors of raisins vary, they are generally a deep brown color, most of the times with hints of a purple hue. These rich color and robust flavor make raisins perfect for baking or eating. Owing to these characteristics raisins are more than often called natures candy.\r\n', '30574raisins.jpg', 'Active'),
(73, 6, 'Pistachio', 'The pistachio is a member of the cashew family, and is native to the deserts of Asia Minor and West India. According to the folklore of the Middle East, young lovers who meet under pistachio trees and hear the nuts crack open on a full moon night will eventually marry. Queen Sheba liked pistachios so much she decreed that the yearly crop in her kingdom would belong solely to the royal palace. In the 20th Century, hate and turmoil in the Middle East helped boost pistachio production in California.\r\n', '3599pistachio.jpg', 'Active'),
(74, 6, 'Peanuts', 'Peanuts are a traditional snack all over the world. During the winter season, from November through March, all over India, one will see roadside stands - ranging from woodsheds to shiny trailers - offering peanuts. Sometimes they are hard to open with ones fingers and one must resort to using ones teeth, but according to most people, they are worth the trouble.\r\n\r\nUsually they are eaten outside where it doesnt matter if the shells are tossed or spit on the ground. Peanuts make for a popular snack and are also used to make cooking oil and peanut butter. They are also an ingredient in many Asian dishes.', '16028peanuts.jpg', 'Active'),
(75, 6, 'Apricot', 'Apricot is a moderate, light, or strong orange to strong orange yellow colored edible fruit of the Prunus armeniaca a deciduous Asian tree, which have alternate leaves and clusters of usually white flowers. The fleshy fruit encloses a hard nut surrounding a droplet shaped, reddish brown seed or pit. Its size ranges from small to large. \r\n\r\nTheir flavor is almost musky, with a faint tartness that is more pronounced when the fruit is dried. Some people think of the flavor as being somewhere between a peach and a plum, fruits to which they re closely related.', '29831apricot.jpg', 'Active');
INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(76, 6, 'Hazelnuts', 'Hazelnuts are a favorite among food scientists and product development specialists because of their distinct flavor and satisfying crunch. Hazelnuts, with their exotic, European perception and with the increasing consumer trend for upscale, unique products, consumers have shown hazelnuts to be perceived as special and indulgent. Romantic, benign and versatile hazelnuts are a perfect complement to any number of food products and menu items. Hazelnuts are typically produced in large quantities and are of uncompromising quality to meet burgeoning global demand. When compared to other popular nuts, hazelnuts are typically competitively priced.', '28596hazelnuts.jpg', 'Active'),
(81, 6, 'Dates', 'Dates are the fruits of Date Palms. It is a drupe. Dates are usually an oblong brown berry like fruit. Dates have long been an important food in desert regions, and are the source of syrup, alcohol, vinegar, and a strong liquor. It is crunchy, firm and juicy with relatively low astringency. It has a short shelf life.\r\n\r\nDates are oval cylindrical, 3 or 7 cm long, and 2 or 3 cm diameter. Dates when unripe are either bright red to bright yellow in color, depending on variety. It contain a single seed about 2 and 6 or 8 mm thick.', '32192dates.jpg', 'Active'),
(82, 6, 'Dried Figs', 'Moist and succulent, Dried Figs are simply great. Dried figs are all natural and one of the sweetest fruits available. Always moist and always fresh, these are tops when it comes to snacking and baking.\r\n\r\nDried figs can be part of almost any special diet, be it low fat, low sodium, high fiber, weight loss, diabetic or even the Mediterranean. They satisfy a sweet tooth without adding any fat. Their unique satiny texture and seeds provide a satisfying mouth feel and crunch. These are perfect for baking, cooking, mixes, or just snacking on.', '15097dried figs.jpg', 'Active'),
(87, 7, 'Castor Oil', 'Castor oil is an edible oil derived from the castor bean. Its scientific name is ricinus communis and this plant is not a member of the bean family. Castor seeds contain between 40% and 60% oil that is rich in triglycerides, mainly ricinolein, and helps immensely in moisturizing and lubricating the skin. Since centuries, castor oil or black castor oil has been used as remedies for many disorders. \r\n\r\nBesides being used as an edible oil, it is also used for producing cosmetics and other personal care products such as night creams, lipsticks, masks, etc. However, its seeds also contain ricin, a poison, which is also present in lower concentrations throughout the plant. Ricin does not partition into the oil because it is water soluble, therefore, castor oil does not contain ricin, provided that no cross contamination occurs during its production. India is the leading producer of castor oil in the world, followed by China and Brazil with 0.8 and 0.4 lakh tons respectively. \r\n', '6075castor oil.jpg', 'Active'),
(88, 7, 'Coconut Oil', 'Coconut or the tree of life, in tropical climates is a way of life for millions of people all around the globe. Coconut oil or coconut butter is an edible oil obtain from the copra, or dried meat of the coconut. For centuries, this oil is consumed by humans in one way or other. This vegetable oil was first developed commercially in the South Sea Islands and South Asia in the mid 19th century. Philippines is the largest exporter of the coconut oil in the world. \r\n\r\nDue to its rich fiber and nutritional content, coconut oil possesses incredible health benefits. For thousands of years, this edible oil has been consumed in tropical places. Being one of the healthiest oils on earth, it is used to treat a wide variety of health problems including abscesses, asthma, baldness, bronchitis, bruises, burns, colds, constipation, cough, dropsy, a few amongst many others. ', '17624cocnut oil.jpg', 'Active'),
(89, 7, 'Cumin Seed Oil', 'Cumin seed oil is an edible oil is extracted from the seeds of cuminum cyminum, a member of the parsley family. The main chemical components of cumin seed oil are cuminic, cymene, dipentene, limonene, phellandrene and pinene. It is an indispensable ingredient of most curry powders and spice mixtures. \r\n\r\nKnown for its spicy and extremely penetrating smell, this oil has been widely used as a spice as well as for its medicinal properties since innumerable. It is often used as a dietary supplement because it contains minerals such as calcium, potassium, iron, magnesium, selenium, copper, phosphorus and zinc. In addition, it contains high concentrations of vitamins A, B1, B2, B6, C, Niacin and Folacin.', '20529cumin seed oil.jpg', 'Active'),
(90, 7, 'Celery Seed Oil', 'Celery seed oil is obtained from seeds or seed chaff by a process of crushing and steam distillation. The essential oil of celery seed includes d limonene, selinene, sesquiterpene alcohols, sedanolide, and sedanonic anhydride. Known for its anti arthritic and anti rheumitic properties, it is recognised as a herbal and dietary supplement by herbologist in many countries of the world.', '17174celery seed oil.jpg', 'Active'),
(91, 7, 'Hazelnut Oil', 'An extensively popular nut oil Hazelnut Oil is a superb organic essential oil extracted from hazel nuts by the process of cold or expeller pressing. Since it is one of the expensive oils, it is not easily available in the market. Turkey is one of the major exporters of hazel nut oil. Being a rich source of vitamins, minerals, proteins, oleic & linoleic acids, it contains innumerable medicinal properties. \r\n\r\nIt is also used in various cooking applications including salad dressings and baked goods. Since it contains higher concentration of saturated fats, it is not the best nut oil for deep-frying.', '29847hazelnut oil.jpg', 'Active'),
(92, 7, 'Vegetable Oil', 'Vegetable oils are extracted from plants and are composed of triglycerides, a glyceride in which the glycerol is esterified with three fatty acids. Thus, any non animal oil obtained from the seeds or nuts of vegetable growth like corn, soybeans, peanuts, cottonseeds, safflower seeds, rape seeds, sunflower seeds, etc. They are pale in color and flavorless, and can be heated to high temperatures. Vegetable fats and oils are both edible and inedible. It can be flavoured by immersing aromatic food stuffs such as fresh herbs, peppers, garlic, and other spices & herbs. The vegetable oils are consumed directly, or used directly as ingredients in food - a role that they share with some animal fats, including butter and ghee. ', '22148vegetable oil.jpg', 'Active'),
(93, 7, 'Rice Bran Oil', 'Regarded as one of the healthiest cooking oils, rice bran oil is obtained from the germ and inner husk of whole brown rice. This mild and butty flavoured oil is quite popular cooking oil in several Asian countries, including Japan and China. Its high smoke point of 490Â°F makes is suitable for high temperature cooking methods such as stir frying and deep frying. It comprises of many fats, with 47% of its fats monounsaturated, 33% polyunsaturated, and 20% saturated. \r\n\r\nThough many properties of rice bran oil is similar to other common vegetable oils, yet it contains several unique properties which makes it the best among all cooking oils.', '15981rice bran oil.jpg', 'Active'),
(94, 7, 'Sesame Oil', 'Sesame oil or gingelly oil or til oil is an edible vegetable oil extracted from the seeds of a tropical plant sesamum indicum. Termed as the queen of all oils for its innumerable health benefits in ayurveda and other regional medicinal systems, sesame oil has been widely used in treating various health complexities. A popular edible oil, this vegetable oil plays a vital role in many ethnic Asian cuisines. Besides being used as a cooking oil in South India, it is often used as a flavor enhancer in Korean and Southeast Asian cuisines. The presence of sesamol, an antioxidant that keeps food fresh for a long time, makes the sesame oil a perfect choice for its use in pickles.', '25738sesame oil.jpg', 'Active'),
(95, 7, 'Sunflower Oil', 'It is the pale yellow mild flavored oil extracted from the seed of the sunflower plant. This grade of vegetable oil contains higher concentrations of polyunsaturated fat, whereas the quantity of saturated fat is low. It is rich in vitamins A,C, D, and E. The high Vitamin E content makes this oil especially helpful for delicate and dry skin. It is light in taste and appearance, and supplies more Vitamin E than any other vegetable oil. There are three types of sunflower oil available, NuSun, linoleic and high oleic sunflower oil. \r\n ', '2811sunflower oil.jpg', 'Active'),
(96, 7, 'Mustard Oil', 'Mustard oil, for the most part, contains fatty acids like oleic acids, linoleic acid and erucic acid. It has the lowest amount of saturated fats in its composition and thus is good for the heart and overall health. It is used to make vegetable oil or is further processed into the making of essential oil. \r\n\r\nThe oil is made by pressing of the seeds or by the process of grinding, whereby it is mixed with water and then further distilled. Thirty percent of the mustard seeds is composed of oil.', '22296mustard oil.jpg', 'Active'),
(97, 7, 'Corn Oil', 'Corn oil is a pale yellow oil procured from the kernel of corn. It is further refined to obtain a tasteless and odorless oil having higher degree of polyunsaturated fats with a high smoke point. It is extensively used in baking, salad dressings, frying and to make margarine. This edible oil has a milder taste and is less expensive than other types of vegetable oils. It is also used in the manufacture of alcohol and ethanol, a commonly used alternative fuel. \r\n\r\nBeing a rich source of nutrients, corn oil has ability to improve HDL and help to decrease LDL. It is also good for diet, hypertension, and coroner heart sufferer.\r\n', '5489corn oil.jpg', 'Active'),
(98, 7, 'Vanaspati Ghee', 'Before throwing light on the vanaspati ghee or the vegetable fat, lets discuss vanapati. In Sanskrit, vanaspati refers to the entire plant kingdom including herbs, flowers, seeds, etc. However, in ancient texts like Charaka SamhitÄ, Sushruta Samhita and the Vaisesikas, it is limited to plants that bear fruits but no evident flowers. But now, it includes everything about plants. \r\n\r\nVanaspati ghee or vegetable fat is obtained by controlled hydrogenation of edible liquid oils or soft oils, so that its hardness, consistency and rainy appearance resembles natural ghee. The oil is derived from plants and are composed of triglycerides, a glyceride in which the glycerol is esterified with three fatty acids. \r\n\r\n \r\nVegetable fats and oils are both edible and inedible. Edible vegetable fats are used as a cooking base, flavour base, etc., whereas in edible fats are used in many industrial sectors including lubricants, paints, cosmetics, pharmaceuticals, etc.', '16214vanaspati ghee.jpg', 'Active'),
(99, 7, 'Soyabean Oil', 'Soyabean oil is the worlds largest source of vegetable oil. This vegetable oil is a very healthy food ingredient and does not contain much saturated fat. It is also the principal source of omega 3 fatty acids and the primary commercial source of vitamin E as well. Soybean oil or soya bean oil contains natural antioxidants which remain in the oil even after extraction. \r\n\r\nOften termed as  a healthy and nutritious cooking medium, this oil has special advantage over other oils as it is low in calories due to higher level of poly unsaturates. The neutral flavor and well balanced fatty acid profile of soybean oil make it a desirable ingredient for a variety of applications from baked goods to salad dressings. \r\n ', '16039soybean oil.jpg', 'Active'),
(100, 7, 'Rapeseed Oil', 'The edible oil extracted from the seed of the rape or rapeseed plant is known as rapeseed oil. In 2000, it was the third leading source of vegetable oil in the world after soybean and oil palm. Known for its its great taste and subtle flavour, this vegetable oil is the worlds second leading source of protein meal, although only one fifth of the production of the leading soybean meal. It is one of the oldest of cultivated crops and is the source of canola oil. Natural rapeseed oil contains 50% erucic acid, which is mildly toxic to humans, if consumed in large doses but is used as a food additive in smaller doses. \r\n', '16212rapeseed oil.jpg', 'Active'),
(101, 7, 'Olive Oil', 'The Olive is a species belonging to the family Oleaceae, which is native to the coastal areas of the Mediterranean region, till areas like northern Iran. Its fruit, the olive is widely cultivated as it is an important part of the diet of these regions. Olive oil is extracted from the evergreen olive tree or shrub, which does not grow to much height and is harvested when yet unripe or even later when it starts to take purple hues at the ripening stage. The olive tree is cultivated for good quality wood, beneficial leaves and the fruit ,olive which is taken in raw form or used to extract oil. The fruit is bitter in taste due to the presence of Oleuropin, a carbohydrate and it is fermented or processed with lye or by soaking it in brine. Oleuropin is removed by use of water and/or with sodium hydroxide. Crushing and Pressing of the fruit is the main method of extracting olive oil and they are subsequently processed to create varieties of the oil.\r\n', '16125olive oil.jpg', 'Active'),
(102, 7, 'Peanut Oil', 'Peanut oil is one of the widely used vegetable oils of the world. A pretty common cooking oil in Asian countries, this oil is also used in western countries. It also has numerous  applications in Asian cooking. In west, it is widely used for frying foods, particularly french fries, turkey and chicken. This edible oil is often used in salad dressings, marinades, and baked goods. \r\n\r\nIt is the most widely used cooking oil in the South Indian state of Andhra Pradesh. It is one of the healthiest cooking oils for day to day needs and a tablespoon of peanut oil has just under 120 calories. In China, the peanut oil used is less refined, retaining a little bit more of the protein of the peanut and producing a stronger peanut flavor.', '6130peanut oil.jpg', 'Active'),
(103, 7, 'Cottonseed Oil', 'Cottonseed oil or cotton seed oil is an edible vegetable oil extracted  from the seeds of the cotton plant. This pale yellow oil is generally used for cooking. It is further refined to to remove gossypol, a naturally occurring toxin that protects the cotton plant from insect damage. Oil thus obtained, is used in combination with other oils to create many vegetable oil products. \r\n\r\nSince cottonseed oil does not require hydrogenation, it is lower in cholesterol than many other oils and has little to no trans fats per serving. Since this vegetable oil contains higher antioxidant content, it lasts for a longer period, if stored properly. It also gives fried foods a similar, yet lighter flavor when compared to other oils, and food achieves a similar color and texture. ', '7747cottonseed oil.jpg', 'Active'),
(104, 7, 'Palm Oil', 'Palm oil is the reddish orange oil extracted from the fruit and kennel of a palm tree, a native to tropical West Africa. It is the most widely produced vegetable oil in the world. This edible oil contains a very high percentage of saturated fat and used in making soaps, margarine, and lubricants, besides being used in cooking. \r\n\r\nSince palm oil has been consumed for its nutritional value and health benefits for more than 5,000 years, it is often said as natures gift to the world. Today, it is the most widely produced vegetable oil of the world. In some Asian countries, it is termed as gold oil, for its perfect balance of saturated and unsaturated fatty acids which do not adversely affect cholesterol levels. \r\n', '31936palm oil.jpg', 'Active'),
(105, 7, 'Safflower Oil', 'Safflower oil is a flavorless and colorless unsaturated vegetable oil derived from the seeds of safflower. It contains more polyunsaturates than any other oil and its higher smoke point makes it good for deep frying. Besides this, it is also used for salad dressings because it doesnt solidify when chilled. This vegetable oil is also used for the production of margarine. \r\n\r\nIt can be used in any recipe where vegetable oil is called for, with the difference that safflower oil is high in Vitamin E, which is an antioxidant. As a rich source of fatty acids, vitamins, and minerals, this oil possess great moisturizing qualities and is thought to be beneficial in applications for bruises, sprains, and painful arthritis. It may also be taken as a nutritional supplement.\r\n\r\n ', '19961safflower oil.jpg', 'Active'),
(106, 7, 'Flax Seed Oil', 'Also termed as simply flax oil or linseed oil, flaxseed oil is an amber colored oil extracted from linseed, the dried ripe seeds of the flax plant. It is obtained by the process of hydraulic pressing, followed by an optional stage of solvent extraction. Cold pressed oil obtained without solvent extraction is marketed as flax seed oil. Being an excellent source of protein, potassium, and beta carotene, this nutty flavor and delicate oil has been widely used in various forms since innumerable. \r\n', '16702flax seed oil.jpg', 'Active'),
(108, 15, 'Coffee', 'In its positive aspect, stress can help you focus, perform and reach peak efficiency. However, during the negative phase, the 5 keys to de stressing, the moment are vehemently observed. The major one being popularly endorsed is Humour the greatest and quickest device to reduce stress. This is followed by Brisk Walk or Self Talk, Rehydrate, Catnap/Powernap, Crying and Making a Cuppa. Recent studies have identified food stressors, such as sugar, caffeine, and chocolate as improving mental health, which produce a soothing feeling, tend to stimulate the body, increase heart rate and blood pressure.', '9452coffee.jpg', 'Active'),
(116, 11, 'Amla Powder', 'Amla or Indian gooseberry, is an edible fruit of a small leafy tree of the Euphorbiaceae family. It has one of the richest concentrations of natural Vitamin C of any edible plants on this planet. Every 100 gms of fresh fruit provides 470- to 680 mg s of Vitamin C. Besides this, amla is also a very powerful antioxidant agent that boosts immunity, restores the vitality and rejuvenates all bodily systems. It is undoubtedly a miraculous herb and one of the precious gifts of nature to man for day to day use.', '27335amla.jpg', 'Active'),
(117, 11, 'Rosemary', 'Rosemary is an aromatic, woody, perennial, evergreen Mediterranean herb. It has light blue or pink flowers and grayish green leaves which are used as a seasoning in cooking and to scent cosmetics. The leaves look like flat pine tree needles, deep green in color on top while silver white on their underside.', '18676rosemary.jpg', 'Active'),
(118, 11, 'Thyme', 'The aromatic and versatile leaves of the several aromatic Eurasian herbs or low shrubs, having small, white to lilac flowers grouped in head like clusters. The perennial herb is native to southern Europe and the Mediterranean.\r\n\r\nGarden thyme is the most common variety which is a bush with gray green leaves giving off a pungent minty, light lemon aroma. Sub varieties include the narrow leafed French thyme and broad leafed English thyme.', '6173thyme.jpg', 'Active'),
(119, 11, 'Basil', 'Basil can be described as a low growing aromatic perennial herb. It is native to India, Iran and to other tropical regions of Asia. The leaves of this plant used as a seasoning. Fresh basil has a pungent flavor that some describe as a cross between licorice and cloves. It has been key ingredient in Southeast Asian and Mediterranean cuisine. Actually there are many varieties of basil, that which is used in Italian food is typically called sweet basil, as opposed to Thai basil or holy basil, which are used in Asia.', '19090basil.jpg', 'Active'),
(120, 11, 'Parsley', 'Parsley is universally regarded as the all purpose green garnish. It is by far the most commonly mentioned of herbs in recipes all over the world. Parsley though regarded as a humble herb, inexpensive and usually gracing the dinner table as a garnish. In recent years this simple and plentiful herb has gained its place in gourmet dishes and cooks are depending on parsley to provide flavor, texture and intensity to many recipes. Parsley provides the chefs of France and other European countries a versatile and tasty addition to traditional preparations.', '27747parsley.jpg', 'Active'),
(121, 11, 'Sage', 'It is a shrubby perennial plant. Sage belongs to the genus Salvia of the mint family. Though in general terms sage refers to common sage i.e. Salvia officinalis. This genus includes approximately 700 to 900 species of shrubs, herbaceous perennials, and annuals with almost world wide distribution.\r\n\r\nThe center of diversity and origin appears to be Central and South Western Asia. Fresh, dried whole or powdered, sage is available throughout the year. In fact, sage is very useful both as a medicine, for the headache, when made into tea and for all kinds of stuffing, when dried and rubbed into powder. Is known to have a soft, yet sweet savory flavor.', '96sage.jpg', 'Active'),
(122, 11, 'Mint', 'Mint is a plant of the genus Mentha. It is characterized by aromatic foliage and nearly regular flowers. True mints have square stems, oppositely arranged aromatic leaves. Small flowers usually pale purple, pink, or white, are arranged in clusters, either forming separate whorls or crowded together in a terminal spike. All Mentha species contain volatile oil in resinous dots in the leaves and stems.', '6425mint.jpg', 'Active'),
(123, 11, 'Rue', 'Rue herb belonging to the genus Ruta. It is a redolent evergreen subshrub distributed throughout temperate and tropical regions and most abundant in South Africa and Australia. The leaves are used in flavorings, beverages and herb vinegars and also in the making of cosmetics and perfumes.\r\n\r\nThe leaves can be described as being bipinnate or tripinnate, with a feathery appearance and green to strongly glaucous blue green in colour. The flowers are yellow, with 4 to 5 petals, about 1 cm diameter, and borne in cymes. The fruit is a 4 to 5 lobed capsule, containing numerous seeds.', '32222rue.jpg', 'Active'),
(124, 11, 'Angelica', 'It is any of the various herbs of the genus Angelica in the parsley or Apiaceae family. These herbs usually have feather like compound leaves and small white or greenish flowers in flat-topped or rounded flower cluster. The stems are sweet in taste. The roots and fruits are used for flavoring liqueurs. It is native to temperate and subarctic regions of the Northern Hemisphere, reaching as far North as Iceland and Lapland.\r\n\r\nAngelica is used extensively in both Western healing and traditional Chinese medicine. Usually the dried root is used medicinally. The pale green, celery like stalks are most often candied and used as decorations for cakes and other desserts.\r\n', '27583angelica.jpg', 'Active'),
(125, 11, 'Bay Leaf', 'Bay leaf is the dried aromatic leaf of the laurel or bay which is known as Laurus nobilis in botanical terms. These are widely used for garnishing in soups, sauces, stews and as a seasoning for fish, meat and poultry. It is often used as a pickling spice.\r\n\r\nIt is oval, pointed and smooth, 2.5 to 8 cm long. When fresh, the leaves are shiny and dark green on top, with a lighter underside. When dried, the leaf turns a matte olive green. It feels warm and pungent when broken and its aromatic oils are released. It has a slightly bitter in flavour and is a powerful redolent.', '17036bayleaf.jpg', 'Active'),
(126, 11, 'Brahmi', 'The leaves of this plant can be suitably described as tender and juicy, and comparatively more solid. The leaves are inversely lanceolate i.e. to be precise is lance shaped but broadest above the middle and tapering toward the base. The flowers are small and white, with four or five petals.', '11733brahmi.jpg', 'Active'),
(127, 11, 'Shikakai', 'Shikakai is a prickly, scandent shrub, growing in tropical jungles shrub throughout India, particularly in Deccan. The scientific name/Latin name of shikakai is Acacia concinna. It belongs to the Leguminosae family.\r\n\r\nThe leaves of this woody plant are bipinnate. It has yellow flowers with anxillary heads. The pods are brown, wrinkled and notched when dry. There are 6 to 10 seeds in a pod usually. These days it is commercially cultivated in India and Far East Asia.', '6634shikakai.jpg', 'Active'),
(128, 11, 'Bhringraj', 'Bhringraj is a plant from the family Asteraceae. The Latin name for the plant is Eclipta alba, however it is commonly known as False Daisy and also as yerba de tago. The roots are well developed, cylindrical in shape and greyish in color. The floral heads of the plant are 6 to 8mm in diameter, solitary, white with a compressed achene and are narrowly winged. It grows in the moist places as a weed all over the world. Bhringraj is native to India, China, Thailand and Brazil.', '1243bhringraj.jpg', 'Active'),
(129, 11, 'Oregano', 'The leaves of a perennial Eurasian herb of the mint family, having aromatic leaves. The dried leaves are used as seasoning are pleasantly pungent or tart in taste kind of spicy flavor. The flavor makes it a perfect addition to traditional Italian and Mexican cuisines. Unlike some herbs, whose fresh characteristics mellow upon drying, oreganoâ€™s flavor and aroma intensify, the dried form is actually preferred to fresh in many dishes. Oregano and basil are natural complements, and combined, they are indispensable in pizzas, pastas and other Italian dishes.\r\n\r\nBotanically speaking oregano refers to the Origanum vulgare, which is known as wild marjoram in Europe owing to its close resemblance to the herb that is known as sweet marjoram. It is a small \r\n\r\nshrub with multi-branched stems covered with small grayish-green oval leaves and small white or pink flowers. In Mediterranean climates oregano grows as a perennial plant, but in the harsher climates of North America, they grow as annuals. The English used oregano as an ingredient in snuff and as a perfume in sachets.', '31608Oregano.jpg', 'Active'),
(130, 11, 'Neem', 'Neem is a tall, usually evergreen. It is widely cultivated in tropical Asian countries of Pakistan, India, Bangladesh and Myanmar for its timber, resin, bitter bark, and aromatic seed oil, which is used medicinally and as an insecticide.\r\n\r\nThe tree has small white flowers and produces a smooth, yellow-green fruit. All parts of the tree have medical uses. In India, neem is sometimes called the village pharmacy. Over 100 pharmacologically active substances have been identified in this plant, and it has many traditional applications.\r\n', '17929neem.jpg', 'Active'),
(131, 11, 'Ashwagandha', 'It is a stout shrub which has small red berries enclosed in inflated papery orange red seed cases. Ashwagandha is native to the Indian subcontinent. It grows in abundance across in India, Pakistan, Sri Lanka and Bangladesh. Though in recent times it is know to be flourishing well in the climatic conditions of North America. Apart from the arid highlands of India subcontinent and North America, it is also cultivated in northern Africa and the Middle East. Ashwagandha belongs to the Solanaceae or nightshade family. Ashwagandha is used widely to treat inflammation, fevers, and to protect against infection or illness. It is also used to boost the immune system, improve memory and to promote overall well being in matters of health.\r\n', '16398ashwagandha.jpg', 'Active'),
(132, 14, 'Honey', 'Honey is a naturally occurring syrup, which contains glucose, fructose, vitamins and minerals and is known to have many health benefits. It is produced by the honey bees by the nectar of various flowers that they pollinate. In the ancient times, it was used as an effective medicine for good health and was also considered an effective moisturizer. It was once used as currency, for paying for commodities.Even today, honey has not lost its significance and is still equally valued, and in many cultures is the first food given to an infant.', '396honey.jpg', 'Active'),
(133, 14, 'Sugarcane', 'Sugar originated from the Arabic word sharkara and is derived from the sanskrit world sharkara. Sugar is an important part of the daily diet and  forming a class of edible substances which includes  sucrose, lactose, and fructose. It provides the human body with requisite carbohydrates and is basically extracted from sugar cane and sugar beet.  Found in fruits, honey, sorghum, sugar maple and in several other sources, it is the main ingredient of candy which is loved by children the world over. ', '213sugar cane.png', 'Active'),
(134, 14, 'Coconut', 'Coconuts are classified as a fibrous one seeded drupe. A drupe is a fruit with a hard stony covering enclosing the seed and comes from the word drupa meaning overripe olive. A coconut, and all drupes, have three layers,the exocarp, the mesocarp, and the endocarp.', '13872coconut.jpg', 'Active'),
(136, 5, 'Carrot', 'The Carrot is a perennial plant of the parsley family, which is widely cultivated in many varieties in temperate and tropical regions. It is basically a root vegetable having pinnately decompound leaves and umbels of small white or yellow flowers. The edible portion of a carrot is its taproot, eaten raw or cooked. \r\n\r\nAs an important source of carotene, carrot is widely recommended by physicians for innumerable medicinal purposes. These small eatables are a goldmine of nutrients and contain Vitamin A, B and C as well as calcium pectate. Its pectin fibre is beneficial in lowering the cholesterol level of the body. ', '10292carrot1.jpg', 'Active'),
(137, 5, 'Okra', 'Okra, also termed as ladys finger, is a flowering plant in the mallow family. This plant is known for its edible green fruits, or long green pods. Its scientific name is abelmoschus esculentus and also hibiscus esculentus. For centuries, this green vegetable has been widely grown across the entire African region. The species apparently originated in the Ethiopian Highlands, though the manner of distribution from there is undocumented. African slaves brought it to USA.\r\n\r\nIt is cultivated in the entire warm temperate and tropical regions of the world for its fibrous fruits or pods containing round, white seeds. The fruits are harvested when immature and eaten as a vegetable. The plant prefers warm climate and tolerates poor soils with heavy clay and intermittent moisture. It is in the same plant family as hibiscus and cotton.\r\n', '9821okra.jpg', 'Active'),
(139, 5, 'Potato', 'Often termed as the king of all vegetables, potato is a starchy, tuberous crop vegetable of the solanaceae family. It is one of the few vegetables that mixes well with other vegetables and is known for adding a delicacy to any dish. Potato is one of the most widely used vegetables in Western temperate climates and the worlds most widely grown tuber crop as well. This starchy crop is also the fourth largest food crop of the world in terms of fresh produce after rice, wheat, and maize.\r\n\r\nDomesticated for over 10,000 years, this plant is probably native to the Andes, where it was cultivated by the Incas. There are more than one thousand known varieties, but only a fraction of this number are cultivated commercially. ', '10461potato.jpg', 'Active'),
(140, 5, 'Cucumber', 'Cucumber is a long, green and cylinder shaped edible fleshy fruit of a creeping plant. A native to India, these plants have been cultivated for thousands of years. This fruit is used primarily for pickling and for slicing as a salad. In India, salad is incomplete without this green fruit. Cucumber raita, is another popular recipe in India.\r\n\r\nBesides being widely used for culinary purposes, cucumbers are also used in facial creams, lotions, and cleansers. This anti inflammatory agent is known for its astringent and soothing properties.', '27730cucumber.jpg', 'Active'),
(141, 5, 'Lemon', 'This oval shaped yellow citrus fruit with juicy acidic flesh is a globally renowned flavouring agent used for culinary and non culinary purposes. In every corner of the world, it is a common ingredient of many cuisines, drinks and marinades. Primarily, this fruit is used for its acidic juice which contains about 5% citric acid, the substance responsible for its tart taste. The lemon is a hybrid in cultivated wild plants. The name Limonum is derived from the Arabic Limun or Limu, which in its turn probably comes from the Sanscrit Nimbuka.\r\n\r\nThe exact origin of the lemon is not known, but it is believed that this juicy fruit was originated in Asia,particularly in China and India.', '19235lemon.jpg', 'Active'),
(142, 5, 'Onion', 'Onion, one of the most widely used vegetables of the world, is a root vegetable used as a seasoning in fresh and dry forms. This underground bulb is known for its distinct or pungent flavor and aroma. It is an inseparable element of almost every meat dish. But its use is not only confined to the non vegetarian items, it also mixes well with various vegetables. Needless to explain its utility in preparing the soup, stew, stir fry, salad and sauce. Today, onions are used in a variety of dishes and rank sixth among the worlds leading vegetable crops.\r\n', '22560onion.jpg', 'Active'),
(143, 5, 'Spinach', 'Botanically termed as spinacia oleracea, spinach is a flowering plant in the family of Amaranthaceae. This annual plant is one of the most popular green leafy vegetables of Southeast Asian Countries. It can grow upto the height of 30 cm. For centuries, this dark green vegetable has been widely used as a source of food in Asia, and it had reached Europe by the eighth century CE. It gains recognition when a celebrated cartoon character of Popye uses this green vegetable as its power boosting tonic.\r\n\r\nSpinach is used in variety of ways and is extremely popular in many parts of the world. ', '30169spinach.jpg', 'Active'),
(144, 5, 'Mushroom', 'Mushroom is a fleshy fruiting body of a fungus, especially of a basidiomycete of the family Agaricaceae. In fact, mushroom is a common name for an edible agaric which has a fleshy and non fleshy texture. It can grow above or underground. Mushroom arises from the mycelium, which may live hundreds of years or a few months, depending on its food supply. Many people know that mushrooms can be used as food, but at the same time they can serve as sign of the presence of a wood decay fungus. The majority of mushrooms are edible, and only a few contains toxic agents and are poisonous. Since they does not contain chlorophyll, the pigment used by plants to produce their own food and energy mushrooms differ from plants.', '31646mushroom.jpg', 'Active'),
(145, 5, 'Asparagus', 'Botanically termed as asparagus officinalis, asparagus is a flowering plant of the lily family. A native to Europe, Northern Africa and Western Asia, it is now widely grown in both hemispheres and throughout temperate and tropical regions. The exact origin of this vegetable is not known because many wild types can be found throughout Europe and Asia. However, the most likely location is around the Mediterranean Sea where cultivation has been practiced for over 2000 years, first by the Greeks and then by the Romans.', '12473asparagus.jpg', 'Active'),
(146, 5, 'Turnip', 'Turnip or brassica rapa, is a widely cultivated root vegetable of the mustard family. This white fleshed vegetable is commonly grown in temperate climates. Since turnip is frost and drought tolerant, it is easy to grow even in extreme weather conditions. Small and tender varieties of turnip are consumed by humans, whereas larger varieties including Rutabaga are grown as feed for livestock.\r\n\r\nThis vegetable has served as a vital food source in northern nations because they keep well over the winter, providing a valuable form of vegetable nutrition. Fresh turnips are available year round, with the peak season from October through February. Its green leaves are often cooked like spinach and often used in a spring green salad mixture.', '19710turnip.jpg', 'Active'),
(147, 5, 'Radish', 'Botanically termed as raphanus sativus, the radish is a herbaceous plant grown for their crisp and peppery tasting roots. This plant of the mustard family with a pungent root was domesticated in Europe in pre Roman times. Some of the roots are long and tapering, others are globular, the latter are commonly known as turnip radishes. A native to China, this vegetable is grown and consumed in every corner of the globe.\r\n\r\nRadishes are available in various varieties, with white, red, or black roots of different shapes and sizes. Being a fast growing plant, they can be ready for harvest in less than a month.', '23647raddish.jpg', 'Active'),
(148, 5, 'Broccoli', 'Broccoli is a plant of the cabbage family which is grown for its edible immature flower panicles. It is classified as the Italica cultivar group of the species brassica oleracea which also includes vegetables like cauliflower, cabbages, brussels sprouts, turnips and many other Asian greens. The word broccoli means little sprouts in Italian. This unusual looking garden vegetable is widely cultivated in the entire temperate regions.\r\n\r\nBroccoli comprises of a number of green coloured fleshy flower heads, which are arranged in a tree-like fashion on branches sprouting from a thick, edible stalk. It was originated in the Eastern Mediterranean and Asia Minor region and was introduced to U.S. probably in colonial times. This cold climate crop is one of the most nutritious of all common vegetables.', '30380broccoli.jpg', 'Active'),
(149, 5, 'Bell Pepper', 'Bell pepper is a large, crisp, bell shaped fruit of the pepper family. This cultivar of the species capsicum annuum is consumed in raw as well as in cooked form. Available in different bright colours ncluding red, yellow, green and orange, this sweet fleshed members of the pepper family is also cultivated as an ornamental plant in many parts of the globe.\r\n\r\nA native to Northern South America, Central America and Mexico, bell peppers are sometimes grouped with less pungent pepper varieties as sweet peppers. In 1493 traders carried pepper seeds to Spain and later they were introduced in other European and Asian countries. Even today, the list of major bell pepper producers is topped by Mexico.', '8053bell pepper.jpg', 'Active'),
(150, 5, 'Chilli', 'There is hardly any dish of the world which is cooked without chili, the small green coloured vegetable which is also called as chili or chilli pepper. This little, but effective green vegetable is undoubtedly the heart and soul of many renowned recipes. Whether it is chili chicken or mutton curry, mix vegetable or salad, this finger sized pepper add a kick to every cuisine. Chutney, also chutney or a sauce or relish, prepared by mixing green chili peppers with with spices and other seasoning is quite common among the Indians.', '15114chilli.jpg', 'Active'),
(151, 5, 'Cabbage', 'The word cabbage refers to several leafy garden plants of the Mediterranean origin. These small plants have a short stem and a globular head of tightly overlapping green to purplish leaves. This cold seasoned crop is a member of the mustard family which also includes vegetables like collards, broccoli, brussels sprouts, cauliflower and kale. All members of the family differ in shapes and colour. Some are flat or round, while some are conical. As far as their heads are concerned they are compact or loose.\r\n\r\nThe word cabbage originates from the French word caboche, a colloquial term for head. ', '24443cabbage.jpg', 'Active'),
(152, 5, 'Caulifower', 'Cauliflower is a cool season vegetable that is considered a delicacy. It is an annual plant that is grown in fields. The head is eaten while the stalk and surrounding thick, green leaves are used in vegetable broth or discarded. Cauliflower originated over 2,000 years ago in gardens of Asia Minor and the Mediterranean. It was consumed throughout western Europe around 16th century. China and India are the top producers of cauliflower and broccoli. About half of all cauliflower is raised in China and one fourth in India. In Europe and USA it is grown in Spain and California respectively.', '2102cauliflower.jpg', 'Active'),
(153, 5, 'Egg Plant', 'Commonly known as brinjal or an aubergine, Eggplant is an edible purple colored fruit of the family Solanaceae. This member of the nightshade family has a shiny skin typically dark purple, but occasionally white or yellow. This egg shaped vegetable is regarded as a satisfying substitute for meat in many countries of the world. This member of the nightshade family is closely related to the tomato and potato.', '8740eggplant.png', 'Active'),
(154, 5, 'Leek', 'Leeks refers to a sweet and moderately flavored vegetable which is closely associated with onions and garlic. Scientifically termed as allium ampeloprasum var. porrum, they are a part of the Alliaceae family. Renowned for its delicate and sweeter flavor, leek adds a subtle touch to recipes without overpowering the other flavors that are present. Due to their mild flavour, many onion haters love this ground vegetable.\r\n\r\nThis sweet and mild flavoured vegetable is an inseparable element of many renowned dishes. Leeks are most commonly used in soups, most notably in vichyssoise, a lovely soup composed of potatoes and leeks and served cold excellent for summer day lunching.', '19769leek.jpg', 'Active'),
(155, 5, 'Peas', 'A peas is the small spherical seed or the seed-pod of the legume, each pod contains numerous peas that is used as a fresh vegetable. Peas are a cool weather crop whose origin goes back a long way, maybe to northern India or Burma. By 500 to 400 BCE it was common to see them in Athens and Rome. During the Middle Ages in Britain people relied on dried peas to keep them alive during long winters. Although treated as a vegetable in cooking, it is botanically a fruit. The name is also used to describe other edible seeds from the Fabaceae such as the pigeon peas, the cow pea and the seeds from several species of Lathyrus.', '28542peas.jpg', 'Active'),
(157, 5, 'Zucchini', 'Zucchini or Courgette is a variety of summer squash with smooth and dark green skin. Its cylindrical shape resembles a cucumber. Along with some other squashes, it belongs to the species Cucurbita pepo. Courgette is the British, and particularly the New Zealand name for zucchinis. It can be yellow, green or light green, and generally has a similar shape to a ridged cucumber. However, certain cultivars can produce round or bottle shaped fruit. This this oval squash like gourd is also known by the name of vegetable marrow, in some parts of the world. Like all summer squash, Zucchini also has its ancestry in the Americas.', '6093zucchini.jpg', 'Active'),
(162, 5, 'Pumpkin', 'A pumpkin is a cultivar of a squash plant, most commonly of Cucurbita pepo, that is round, with smooth, slightly ribbed skin, and deep yellow to orange coloration. The thick shell contains the seeds and pulp. Some exceptionally large cultivars of squash with similar appearance have also been derived from Cucurbita maxima. Specific cultivars of winter squash derived from other species, are also sometimes called pumpkin. In New Zealand and Australian English, the term pumpkin generally refers to the broader category called winter squash elsewhere.', '25319pumpkin.jpg', 'Active'),
(163, 5, 'Tomato', 'The tomato the edible, often red berry type fruit of the nightshade Solanum lycopersicum, commonly known as a tomato plant. The tomato is consumed in diverse ways, including raw, as an ingredient in many dishes, sauces, salads, and drinks. The English word tomato comes from the Spanish word, tomate, derived from the Nahuatl word tomatl. It first appeared in print in 1595.', '11924tomato.jpg', 'Active'),
(165, 5, 'Coriander Leaf', 'The fresh leaves are an ingredient in many South Asian food, in Chinese and Thai dishes, in Mexican cooking, particularly in salsa and guacamole and as a garnish, and in salads in Russia and other countries. Chopped coriander leaves are a garnish on Indian dishes such as dal. As heat diminishes their flavour, coriander leaves are often used raw or added to the dish immediately before serving. In Indian and Central Asian recipes, coriander leaves are used in large amounts and cooked until the flavour diminishes.The leaves spoil quickly when removed from the plant, and lose their aroma when dried or frozen.\r\n', '1461coriandar leaf.jpg', 'Active'),
(166, 5, 'Gourd', 'A gourd is a plant of the family Cucurbitaceae, particularly Cucurbita and Lagenaria or the fruit of the two genera of Bignoniaceae \"calabash tree\", Crescentia and Amphitecna. The term refers to a number of species and subspecies, many with hard shells, and some without.', '19826gourd.jpg', 'Active'),
(167, 5, 'Beetroot', 'The beetroot is the taproot portion of the beet plant, usually known in North America as the beet, also table beet, garden beet, red beet, or golden beet. It is several of the cultivated varieties of Beta vulgaris grown for their edible taproots and their leaves. These varieties have been classified as vulgaris Conditiva Group.', '26051beetroot.jpg', 'Active'),
(168, 5, 'Beans', 'Bean is sometimes used as a synonym of pulse, an edible legume, though the term pulses is more correctly reserved for leguminous crops harvested for their dry grain. The term bean usually excludes crops used mainly for oil extraction, as well as those used exclusively for sowing purposes. Leguminous crops harvested green for food, such as snap peas, snow peas, and so on, are not considered beans, and are classified as vegetable crops.', '28224beans.jpg', 'Active'),
(170, 5, 'Lettuce', 'Generally grown as a hardy annual, lettuce is easily cultivated, although it requires relatively low temperatures to prevent it from flowering quickly. It can be plagued with numerous nutrient deficiencies, as well as insect and mammal pests and fungal and bacterial diseases, sativa crosses easily within the species and with some other species within the Lactuca genus although this trait can be a problem to home gardeners who attempt to save seeds, biologists have used it to broaden the gene pool of cultivated lettuce varieties.', '9008lettuce.jpg', 'Active'),
(172, 1, 'Jackfruit', 'The jackfruit, also known as jack tree, jakfruit, or sometimes simply jack or jak is a species of tree in the mulberry and fig family.\r\nIt is native to parts of South and Southeast Asia, and is believed to have originated in the southwestern rain forests of Indian Subcontinent, in present day Goa, Kerala, Odisha, Tamil Nadu, Sri Lanka coastal Karnataka, and Maharashtra.The jackfruit tree is well suited to tropical lowlands, and its fruit is the largest tree borne fruit, reaching as much as 35 kg in weight, 90 cm in length, and 50 cm in diameter.', '5544jackfruit.png', 'Active'),
(173, 5, 'Bread Fruit', 'Breadfruit is a species of flowering tree in the mulberry family  originating in the South Pacific and that was eventually spread to the rest of Oceania. British and French navigators introduced a few Polynesian seedless varieties to Caribbean islands during the late 18th century, and today it is grown in some 90 countries throughout South and Southeast Asia, the Pacific Ocean, the Caribbean, Central America and Africa. Its name is derived from the texture of the moderately ripe fruit when cooked, similar to freshly baked bread, it has a potato like flavor.', '6337breadfruit.jpg', 'Active'),
(174, 1, 'Mango', 'Mango trees grow up to 35 to 40 m tall, with a crown radius of 10 m. The trees are long lived, as some specimens still fruit after 300 years.In deep soil, the taproot descends to a depth of 6 m, with profuse, wide spreading feeder roots, the tree also sends down many anchor roots, which penetrate several feet of soil. The leaves are evergreen, alternate, simple, 15 to 35 cm long, and 6 to 16 cm broad, when the leaves are young they are orange pink, rapidly changing to a dark, glossy red, then dark green as they mature. The flowers are produced in terminal panicles 10 to 40 cm long, each flower is small and white with five petals 5 to 10 mm long, with a mild, sweet odor suggestive of lily of the valley. Over 400 varieties of mangoes are known, many of which ripen in summer, while some give double crop. The fruit takes three to six months to ripen.', '2931mango.jpg', 'Active'),
(175, 1, 'Sweet Lemon', 'Sweet Lemon is a small tree up to 8 m in height, with irregular branches and relatively smooth, brownish to grey bark. It has numerous thorns, 1.5 to 7.5 cm  long. The petioles are narrowly but distinctly winged, and are 8 to 29 mm  long. Leaves are compound, with acuminate leaflets 5 to 17 cm  long and 2.8 to 8 cm  wide. Flowers are white, 2 to 3 cm  wide. Fruits are oval and green, ripening to yellow, with greenish pulp. The pith is white and about 5 mm thick. Despite the name sweet lime, the fruit is more similar to a greenish orange in appearance.', '6704Sweet lemon.jpg', 'Active'),
(176, 1, 'Lychee', 'A lychee is a rare sub tropical fruit originating in South China where the lychee is very important in their culture and is famed as the King of Fruits.\r\n\r\nThe lychee fruit is about 1Â½ to 2 inches in size, oval to rounded heart shaped and the bumpy skin is red in color. Once you peel the skin off, the crisp juicy flesh of a lychee fruit is white or pinkish, translucent and glossy like the consistency of a grape, but the taste is sweeter. Lychees have a sub acid sweet taste and have a wonderful freshness to them that is hard to describe. Lychee fruit is high in the antioxidant Vitamin C and the essential mineral Potassium.', '19709lychee.jpeg', 'Active');
INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(177, 1, 'Cherry', 'A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe. The cherry fruits of commerce usually are obtained from a limited number of species such as cultivars of the sweet cherry, Prunus avium. The name cherry also refers to the cherry tree, and is sometimes applied to almonds and visually similar flowering trees in the genus Prunus, as in ornamental cherry, cherry blossom, etc. Wild Cherry may refer to any of the cherry species growing outside of cultivation, although Prunus avium is often referred to specifically by the name wild cherry in the British Isles.', '3570cherry.jpg', 'Active'),
(178, 1, 'Bor or Jujube', 'Ziziphus mauritiana, also known as Chinese date, ber, Chinee apple, jujube, Indian plum, Regi pandu, Indian jujube and masau, is a tropical fruit tree species belonging to the family Rhamnaceae.', '23619jujube.jpg', 'Active'),
(179, 1, 'Toddy Palm', 'Borassus flabellifer is a robust tree and can reach a height of 30 metres . The trunk is grey, robust and ringed with leaf scars, old leaves remain attached to the trunk for several years before falling cleanly. The leaves are fan shaped and 3 m long, with robust black teeth on the petiole margins.', '25280toddy palm.jpg', 'Active'),
(180, 4, 'Curry Leaf', 'The leaves of curry leaf tree is a spice. The aromatic curry tree(Chalcas koenigii), a member of the Rutaceae family is five meter in height, 15-40 cm in diameter. It is cultivated mainly in homesteads but to a certain extent on a plantation scale.', '1845curry leaves.jpg', 'Active'),
(182, 14, 'Areca Nut', 'The areca nut is not a true nut, but rather a fruit categorized as a drupe. It is commercially available in dried, cured and fresh forms. When the husk of the fresh fruit is green, the nut inside is soft enough to be cut with a typical knife. In the ripe fruit, the husk becomes yellow or orange and, as it dries, the fruit inside hardens to a wood like consistency. At that stage, the areca nut can only be sliced using a special scissors like cutter ', '30214areca nut.jpg', 'Active'),
(183, 14, 'Natural Rubber', 'Natural rubber, also called India rubber or caoutchouc, as initially produced, consists of polymers of the organic compound isoprene, with minor impurities of other organic compounds plus water. Malaysia is a leading producer of rubber. Forms of polyisoprene that are used as natural rubbers are classified as elastomers. Natural rubber is used by many manufacturing companies for the production of rubber products. ', '6900natural rubber.jpg', 'Active'),
(184, 3, 'Asparagus Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '20227asparagus seed.jpg', 'Active'),
(185, 3, 'Beetroot Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '19641beetroot seed.jpg', 'Active'),
(186, 3, 'Bell Pepper Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '22623bell pepper seed.jpg', 'Active'),
(187, 3, 'Bitter Gourd Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '31605bitter gourd.jpg', 'Active'),
(188, 3, 'Bottle Gourd Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '7035bottle gourd seed.jpg', 'Active'),
(189, 3, 'Bread Fruit Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '23025bread fruit see.jpg', 'Active'),
(190, 3, 'Broccoli Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '29783Broccoli Seeds.JPG', 'Active'),
(191, 3, 'Cabbage Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '9261cabbage seed.jpg', 'Active'),
(192, 3, 'Carrot Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '32499carrot seed.jpg', 'Active'),
(193, 3, 'Caulifower Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '22057cauliflower seeds.jpg', 'Active'),
(194, 3, 'Chilli Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '5967chilli seed.jpg', 'Active'),
(195, 3, 'Coriander Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '11237coriander seed.jpg', 'Active'),
(196, 3, 'Cucumber Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '22891cucumber sed.jpg', 'Active'),
(197, 3, 'Egg Plant Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '8545egg plant seed.jpg', 'Active'),
(198, 3, 'French Beans Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '8519french beans.jpg', 'Active'),
(199, 3, 'Green Beans Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '29341green bean seed.jpeg', 'Active'),
(200, 3, 'Leek Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '2787leek seed.jpg', 'Active'),
(201, 3, 'Lemon Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '7065lemon.JPG', 'Active'),
(202, 3, 'Lettuce Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '29247lettuce seed.jpg', 'Active'),
(203, 3, 'Okra Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '22613okra seed.jpg', 'Active'),
(204, 3, 'Peas Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors\r\n', '29531peas seed.jpg', 'Active'),
(205, 3, 'Pumpkin Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '9425pumpkin seed.jpg', 'Active'),
(206, 3, 'Raddish Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '27191radish seed.jpg', 'Active'),
(207, 3, 'Red Spinach Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '15629red spinach seed.jpg', 'Active'),
(208, 3, 'Ridge Gourd Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '29395ridge gourd seed.jpg', 'Active'),
(209, 3, 'Round Gourd Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '7433round gourd seed.jpg', 'Active'),
(210, 3, 'Spinach Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '26927spinach seed.jpg', 'Active'),
(211, 3, 'Tomato Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '197tomato seed.jpg', 'Active'),
(212, 3, 'Turnip Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '26955turnip seed.jpg', 'Active'),
(213, 3, 'Yard Long Beans Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '25665yard long beans.jpg', 'Active'),
(214, 3, 'Zucchini Seeds', 'The most common vegetables seeds used include tomatoes, beans, corn, cabbage, carrots, potatoes, pumpkins, cucumbers, and zucchini. Vegetables seeds vary in sizes, shapes, and colors', '20263zucchini seed.jpg', 'Active'),
(215, 15, 'Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to Asia. ', '13351tea1.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `img_5` varchar(100) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `quantity_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `uploaded_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `seller_id`, `category_id`, `produce_id`, `title`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `quantity`, `quantity_type`, `description`, `uploaded_date`, `status`) VALUES
(3, 1, 1, 174, 'Alphonso Mangoes', '24024rooibos.jpg', '30001', '1046', '8599', '32644', 6.00, 'Kilogram', 'Fresh and Delicious Alphonso Mangoes', '0000-00-00', 'Inactive'),
(5, 2, 2, 30, 'Pearl Millets', '21030barnyard millet.jpg', '15975finger milelt.jpg', '9236foxtail millet.jpg', '9405', '27314', 5500.00, 'Gram', 'Pearl Millets High Quality', '2016-03-02', 'Active'),
(6, 1, 1, 16, 'Chandler Blueberry', '926Blueberry Top Hat.jpg', '24191Blueberry-Brigitta.jpg', '7756Blueberry-Chandler.jpg', '16021Blueberry-Earliblue.jpg', '15274Blueberry Top Hat.jpg', 446.00, 'Gram', 'fresh blueberry directly from the farms', '2016-03-03', 'Active'),
(7, 1, 15, 215, 'Green Tea', '25506black.jpg', '30771green.jpg', '26608', '4457mate.jpg', '6126', 0.00, 'Gram', 'High Quality green tea hand picked', '0000-00-00', 'Inactive'),
(8, 1, 6, 70, 'Cashew Nuts', '20894cashew nut.jpg', '5247cahsew nut.jpg', '7244', '25749', '27050', 126.00, 'Gram', 'High Quality.. hand picked', '2016-03-14', 'Active'),
(9, 2, 2, 31, 'aaaaaaaaaa', '1380031879Untitled.png', '2019543108ONLINE CORONA TRACKER.png', '890261302', '1270836597', '2028688378', 323.00, 'Gram', 'tes', '2020-05-12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `purchase_order_date` date NOT NULL,
  `purchase_order_time` time NOT NULL,
  `purchase_amt` float(10,2) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `product_id`, `purchase_request_id`, `customer_id`, `seller_id`, `purchase_order_date`, `purchase_order_time`, `purchase_amt`, `quantity`, `status`) VALUES
(1, 3, 1, 1, 1, '2016-03-02', '07:01:33', 3500.00, 300.00, 'Paid'),
(2, 4, 3, 1, 1, '2016-03-02', '07:11:29', 12000.00, 950.00, 'Paid'),
(3, 5, 4, 1, 2, '2016-03-02', '03:45:16', 3500.00, 200.00, 'Paid'),
(4, 4, 5, 1, 1, '2016-03-02', '07:36:09', 5000.00, 30.00, 'Paid'),
(5, 4, 6, 1, 1, '2016-03-02', '07:42:03', 2500.00, 20.00, 'Paid'),
(6, 3, 7, 1, 1, '2016-03-03', '03:36:57', 67787.00, 111.00, 'Paid'),
(7, 6, 10, 2, 1, '2016-03-03', '03:41:56', 679879.00, 500.00, 'Pending'),
(8, 6, 9, 1, 1, '2016-03-04', '09:06:51', 37242.00, 300.00, 'Pending'),
(9, 6, 11, 1, 1, '2016-03-04', '09:07:26', 3535.00, 54.00, 'Paid'),
(10, 5, 12, 1, 2, '2016-03-04', '03:49:09', 60000.00, 800.00, 'Paid'),
(11, 5, 16, 1, 2, '2016-03-05', '05:34:39', 1500.00, 500.00, 'Paid'),
(12, 3, 18, 1, 1, '2016-03-11', '04:49:40', 65000.00, 80.00, 'Paid'),
(13, 3, 19, 1, 1, '2016-03-11', '07:19:39', 2600.00, 9.00, 'Paid'),
(14, 7, 21, 2, 1, '2016-03-12', '01:03:32', 1500.00, 700.00, 'Paid'),
(15, 8, 22, 1, 1, '2016-03-14', '11:11:02', 2000.00, 43.00, 'Pending'),
(16, 8, 27, 1, 1, '2016-03-15', '06:24:03', 8798.00, 74.00, 'Paid'),
(17, 8, 28, 1, 1, '2016-03-18', '05:18:44', 10000.00, 100.00, 'Paid'),
(18, 8, 29, 1, 1, '2016-03-18', '06:47:05', 2000.00, 3.00, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_bill`
--

CREATE TABLE `purchase_order_bill` (
  `purchase_order_bill_id` int(10) NOT NULL,
  `purchase_order_id` int(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_description` text NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_bill`
--

INSERT INTO `purchase_order_bill` (`purchase_order_bill_id`, `purchase_order_id`, `payment_type`, `payment_description`, `paid_date`, `paid_amt`, `status`) VALUES
(1, 1, 'Visa', 'Card Holder name: Renata D Souza Card Number: 7563982046227861 Expiry date: 2017-04 CVV No.387', '2016-02-10', 3500.00, 'Active'),
(2, 2, 'Master', 'Card Holder name: Renata D Souza Card Number: 9587632200176480 Expiry date: 2021-12 CVV No.658', '2016-03-02', 12000.00, 'Active'),
(3, 3, 'Debit Card', 'Card Holder name: Renata D Souza Card Number: 7890362500446782 Expiry date: 2019-06 CVV No.398', '2016-03-02', 3500.00, 'Active'),
(4, 4, 'Debit Card', 'Card Holder name: Renata D Souza Card Number: 7680047363773950 Expiry date: 2025-04 CVV No.296', '2016-03-02', 5000.00, 'Active'),
(5, 5, 'Credit Card', 'Card Holder name: Renata D Souza Card Number: 9587432800931540 Expiry date: 2020-09 CVV No.323', '2016-03-02', 2500.00, 'Active'),
(6, 6, 'Visa', 'Card Holder name: Renata D Souza Card Number: 7469992738492889 Expiry date: 2023-09 CVV No.329', '2016-02-23', 67787.00, 'Active'),
(7, 10, 'Credit Card', 'Card Holder name: Renata D Souza Card Number: 9876547977400213 Expiry date: 2020-02 CVV No.328', '2016-03-04', 60000.00, 'Active'),
(8, 11, 'Master', 'Card Holder name: Renata D Souza Card Number: 4567523489965433 Expiry date: 2020-04 CVV No.348', '2016-03-05', 1500.00, 'Active'),
(9, 12, 'Master', 'Card Holder name: Renata D Souza Card Number: 1234567891234567 Expiry date: 2020-02 CVV No.467', '2016-03-05', 65000.00, 'Active'),
(10, 13, 'Master', 'Card Holder name: Renata D Souza Card Number: 6788998776546534 Expiry date: 2030-02 CVV No.678', '2016-03-11', 2600.00, 'Active'),
(11, 14, 'Master Card', 'Card Holder name: Sujal Raut Card Number: 6758394767564875 Expiry date: 2020-09 CVV No.604', '2016-03-12', 1500.00, 'Active'),
(12, 9, 'Visa', 'Card Holder name: Renata D Souza Card Number: 4365435365764653 Expiry date: 2020-04 CVV No.784', '2016-03-14', 3535.00, 'Active'),
(13, 17, 'Visa', 'Card Holder name: raj kiran Card Number: 2345328745683212 Expiry date: 2016-12 CVV No.345', '2016-03-18', 10000.00, 'Active'),
(14, 16, 'Visa', 'Card Holder name: Renata D Souza Card Number: 1122334455443322 Expiry date: 2016-12 CVV No.323', '2016-03-18', 8798.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `request_date_expire` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`purchase_request_id`, `customer_id`, `product_id`, `quantity`, `request_date`, `request_date_expire`, `note`, `status`) VALUES
(1, 1, 3, 300.00, '2016-03-02', '2016-03-09', '', 'Active'),
(3, 1, 4, 950.00, '2016-03-02', '2016-03-09', 'Contact Soon', 'Active'),
(4, 1, 5, 200.00, '2016-03-02', '2016-03-09', 'Price Negotiable', 'Active'),
(5, 1, 4, 30.00, '2016-03-02', '2016-03-09', 'No Comments', 'Active'),
(6, 1, 4, 20.00, '2016-03-02', '2016-03-09', 'Test Round', 'Active'),
(7, 1, 3, 111.00, '2016-03-02', '2016-03-09', '', 'Active'),
(9, 1, 6, 300.00, '2016-03-03', '2016-03-10', 'test', 'Active'),
(10, 2, 6, 500.00, '2016-03-03', '2016-03-10', 'second test', 'Active'),
(11, 1, 6, 54.00, '2016-03-04', '2016-03-11', '', 'Active'),
(12, 1, 5, 800.00, '2016-03-04', '2016-03-11', 'immediately needed', 'Active'),
(13, 2, 3, 89.00, '2016-03-04', '2016-03-11', 'test', 'Pending'),
(16, 1, 5, 500.00, '2016-03-05', '2016-03-12', 'test', 'Active'),
(18, 1, 3, 80.00, '2016-03-11', '2016-03-18', '', 'Active'),
(19, 1, 3, 9.00, '2016-03-11', '2016-03-18', '', 'Active'),
(21, 2, 7, 700.00, '2016-03-12', '2016-03-19', '', 'Active'),
(22, 1, 8, 43.00, '2016-03-14', '2016-03-21', '', 'Active'),
(27, 1, 8, 74.00, '2016-03-14', '2016-03-21', '', 'Active'),
(28, 1, 8, 100.00, '2016-03-18', '2016-03-25', 'This is test note', 'Active'),
(29, 1, 8, 3.00, '2016-03-18', '2016-03-25', 'kindly deliver it', 'Active'),
(31, 8, 9, 250.00, '2020-05-13', '2020-05-20', 'test purchase request', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_branch` varchar(50) NOT NULL,
  `bank_IFSC` varchar(25) NOT NULL,
  `bank_acno` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `seller_address`, `state_id`, `city_id`, `pincode`, `contact_number`, `mobile_no`, `email_id`, `password`, `bank_name`, `bank_branch`, `bank_IFSC`, `bank_acno`, `status`) VALUES
(1, 'Felix D Souza', 'Lawrence Villa, Seetahngoli', 18, 199, '327658', '080420822111', '8748981173', 'remesha4@gmail.com', '123456789', 'State Bank of Kerala', 'Payyanur', '12659830278', '342736462738', 'Active'),
(2, 'Rovina D Souza', 'Karinja House, Ednad Post', 48, 43, '400989', '9324850432', '9538445084', 'rinirovina@gmail.com', 'sellerrovina', 'Central Bank Of India', 'Beijing', 'CBBNJ730001', '009856774562986', 'Active'),
(3, 'Ankith jeshn', 'msil karn, bangalroe', 8, 54, '456789', '7894561230', '9876543210', 'ankithjeshn@gmail.com', '123456789', 'icic bank', 'bangalore', 'AAS45123456', '1234567890123456', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state`, `description`, `status`) VALUES
(3, 'Kainuu', 'Kainuu is one of the 19 Regions of Finland . There are 18 regions in mainland Finland, and the autonomous Ã…land Islands. Kainuu borders the regions of Northern Ostrobothnia, North Karelia and Northern Savonia. In the east it also borders Russia.', 'Active'),
(4, 'North Karelia', 'North Karelia is a region in eastern Finland. It borders the regions of Kainuu, Northern Savonia, Southern Savonia and South Karelia, as well as Russia. ', 'Active'),
(5, 'Northern Savonia', 'Northern Savonia is a region in eastern Finland. Kuopio is the largest city in the region. ', 'Active'),
(6, 'Southern Savonia', 'Southern Savonia is a region in the south-east of Finland. It borders on the regions Northern Savonia, North Karelia, South Karelia, Kymenlaakso, PÃ¤ijÃ¤nne Tavastia, and Central Finland. ', 'Active'),
(7, '	Southern Ostrobothnia', 'Southern Ostrobothnia is one of the 19 regions of Finland. SeinÃ¤joki is the regional centre and by far the largest city in the area.', 'Active'),
(8, 'Andhra Pradesh', 'Andhra Pradesh is a state bordering Indias southeastern coast. Tropical forests, rivers, hills and caves make it a popular ecotourism destination. Beaches line the Bay of Bengal, offering spots for swimming and surfing. Major cultural landmarks include ', 'Active'),
(9, 'Arunachal Pradesh', ' it holds the most north-eastern position among the states in the north-east region of India.', 'Active'),
(10, 'Assam', 'Assam is a state in Northeast India. Located south of the eastern Himalayas, Assam comprises the Brahmaputra Valley and the Barak Valley along with the Karbi Anglong and Dima Hasao districts with an area of 30,285 square miles. ', 'Active'),
(11, 'Chhattisgarh', 'Chhattisgarh is a state in central India. It is the 10th largest state in India, with an area of 135,194 kmÂ². With a population of 25.5 million, Chhattisgarh is the 16th most-populated state of the nation.', 'Active'),
(12, 'Goa', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved', 'Active'),
(13, 'Haryana', 'Haryana is a North Indian state surrounding New Delhi on 3 sides. The Yamuna River runs along its eastern border with Uttar Pradesh. Shared with Punjab, the state capital', 'Active'),
(14, 'Himachal Pradesh', 'Himachal Pradesh, a northern Indian state in the Himalayas, is known for its trekking, climbing and skiing, and scenic mountain towns and resorts such as Dalhousie. Host to the Dalai Lama, Himachal Pradesh also has a strong Tibetan presence, reflected in its Buddhist temples and monasteries, cuisine heavy on noodles and dumplings, and vibrant Tibetan New Year celebrations.', 'Active'),
(15, 'Jammu and Kashmir', 'Jammu and Kashmir is a state in northern India. It is located mostly in the Himalayan mountains, and shares a border with the states of Himachal Pradesh and Punjab to the south', 'Active'),
(16, 'Jharkhand', 'Jharkhand is a state in eastern India carved out of the southern part of Bihar on 15 November 2000. The state shares its border with the states of Bihar to the north,', 'Active'),
(17, 'Karnataka', 'Karnataka is a state in southwest India with Arabian Sea coastlines. The capital, Bengaluru (formerly Bangalore), is a high-tech hub known for its shopping and nightlife. To the southwest, Mysore is home to lavish temples including Mysore Palace, former seat of the regionâ€™s maharajas. Hampi, once the medieval Vijayanagara empireâ€™s capital, contains ruins ', 'Active'),
(18, 'Kerala', 'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and its backwaters, a network of canals popular for cruises. Its many upscale seaside resorts include specialists in Ayurvedic treatments.', 'Active'),
(19, 'Madhya Pradesh', 'Madhya Pradesh, a large state in central India, retains landmarks from eras throughout Indian history. Begun in the 10th century, its Hindu and Jain temples at Khajuraho are renowned for their carvings of erotic scenes, most prominently Kandariya Mahadeva, a temple with more than 800 sculptures', 'Active'),
(20, 'Maharashtra', 'Maharashtra, a state spanning west-central India, is best known for its fast-paced capital, Mumbai (formerly Bombay). This sprawling metropolis is the seat of the Bollywood film industry. Itâ€™s also famed for sites like the British Raj-era Gateway of India monument and the cave temples at nearby Elephanta Island. To the south is the rustic, beach-lined Konkan coast, and its temple town of Ganpatipule.', 'Active'),
(21, 'Manipur', 'Manipur is a state in northeastern India, with the city of Imphal as its capital. Manipur is sometimes called alternative names such as Kangleipak or Sanaleibak', 'Active'),
(22, 'Meghalaya', 'Meghalaya is a state in north-east India. The name means \"the abode of clouds\" in Sanskrit.', 'Active'),
(23, 'Mizoram', 'Mizoram is one of the states of Northeast India, with Aizawl as its capital.', 'Active'),
(24, 'Nagaland', 'Nagaland /ËˆnÉ‘ËÉ¡É™lÃ¦nd/ is a state in Northeast India. It borders the state of Assam to the west, Arunachal Pradesh and part of Assam to the north, Burma to the east and Manipur to the south. ', 'Active'),
(25, 'Orissa', 'Odisha (formerly Orissa), an eastern Indian state on the Bay of Bengal, is known for its tribal cultures and its many ancient Hindu temples.', 'Active'),
(26, 'Punjab', 'Punjab, a state bordering Pakistan, is the heart of Indiaâ€™s Sikh community. Its city of Amritsar, founded in 1577 by Sikh guru Ram Das, is the site of Harmandir Sahib, the holiest gurdwara (Sikh temple). Pilgrims visit its gilded Hari Mandir sanctuary and bathe in the surrounding Pool of Nectar. Also in Amritsar is Durgiana Temple, a Hindu shrine with engraved silver doors.', 'Active'),
(27, '	Rajasthan', 'Rajasthan is a northern Indian state bordering Pakistan. Its palaces and forts are reminders of the many kingdoms that historically vied for the region. In its capital, Jaipur, are the 18th-century City Palace and Hawa Mahal, a former cloister for royal women, fronted by a 5-story sandstone screen. Amer Fort, atop a nearby hill, was built by a Rajput prince in the 1600s.', 'Active'),
(28, 'Sikkim', 'Sikkim is a small state in northwest India, bordered by Bhutan, Tibet and Nepal. Part of the Himalayas, the area has a dramatic landscape including Indiaâ€™s highest mountain, 8,586m Kanchenjunga. Sikkim is also home to glaciers, alpine meadows and thousands of varieties of wildflowers. Steep paths lead to hilltop Buddhist monasteries such as Pemayangtse, which dates to the early 1700s.', 'Active'),
(29, 'Tamil Nadu', 'Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. ', 'Active'),
(30, 'Telangana', 'Telangana is a state in South India and one of the 29 states in India. It was formed on 2 June 2014 with the city of Hyderabad as its capital.', 'Active'),
(31, '	Tripura', ' is a state in Northeast India. The third-smallest state in the country, it covers 10,491 kmÂ² and is bordered by Bangladesh to the north, south, and west, and the Indian states of Assam and Mizoram to the east', 'Active'),
(32, 'Uttar Pradesh', 'Uttar Pradesh is a state in northern India. Its city of Agra is home to the iconic Taj Mahal monument, a colossal, domed, white-marble mausoleum honoring the wife of Mughal ruler Shah Jahan. Named Mumtaz Mahal, she died in childbirth in 1631. Nearby are the 20m-high, red-brick walls of Agra Fort, a Mughal fortress and palace dating to the 16th and 17th centuries.', 'Active'),
(33, 'Uttarakhand', 'Uttarakhand, a state in northern India crossed by the Himalayas, is known for its Hindu pilgrimage sites', 'Active'),
(34, 'West Bengal', 'West Bengal is a state in eastern India, between the Himalayas and the Bay of Bengal. Its capital, Kolkata retains architectural and cultural remnants of its past as an East India Company trading post and the capital of the British Raj.', 'Active'),
(35, 'Bihar', 'Bihar is a state in East India, bordering Nepal. It is divided by the River Ganges, which floods its fertile plains', 'Active'),
(36, 'Gujarath', 'Gujarat, Indias westernmost state, has varied terrain and numerous sacred sites.', 'Active'),
(37, 'Alabama', 'Alabama is a southeastern U.S. state thats home to significant landmarks from the American Civil Rights Movement.', 'Active'),
(38, 'Alaska', 'Alaska, northwest of Canada, is the largest and most sparsely populated U.S. state.', 'Active'),
(39, 'Arizona', 'Arizona, a southwestern U.S. state, is best known for its reliably sunny weather and as home to the Grand Canyon, the mile-deep chasm carved by the Colorado River', 'Active'),
(40, 'Arkansas', 'Arkansas is a southeastern U.S. state bordering the Mississippi River. ', 'Active'),
(41, 'California', 'California, a western U.S. state, stretches from the Mexican border along the Pacific for nearly 900 miles.', 'Active'),
(42, 'Colorado', 'Colorado, a western U.S. state, is known for its geographic diversity, with snow-covered mountains, arid desert lands and river canyons. ', 'Active'),
(43, 'Connecticut', 'Connecticut is a southern New England state thats a mix of coastal cities and rural areas dotted with small towns', 'Active'),
(44, 'Moscow Oblast', 'Moscow Oblast, or Podmoskovye, is a federal subject of Russia. Its area, at 45,900 square kilometers, is relatively small compared to other federal subjects, but it is one of the most densely populated', 'Active'),
(45, 'Murmansk Oblast', 'Murmansk Oblast is a federal subject of Russia, located in the northwestern part of Russia', 'Active'),
(46, 'Nenets Autonomous Okrug', 'Nenets Autonomous Okrug is a federal subject of Russia. Its administrative center is the town of NaryanMar.', 'Active'),
(47, 'Nizhny Novgorod Oblast', ' colloquially shortened to Nizhny, is, with a population of 1,250,619', 'Active'),
(48, 'Anhui', 'Located across the basins of the Yangtze River and the Huai River, it borders Jiangsu to the east, Zhejiang to the southeast, Jiangxi to the south, Hubei to the southwest,', 'Active'),
(49, 'Fujian', 'Fujian is a southeastern Chinese province known for its mountains and coastal cities.', 'Active'),
(50, 'Gansu', 'Gansu is a province of the Peoples Republic of China, located in the northwest of the country', 'Active'),
(51, 'Guangdong', ' a coastal province of southeast China, borders Hong Kong and Macau. Its capital, Guangzhou', 'Active'),
(52, 'Guizhou', 'Guizhou is a mountainous province in southwest China.', 'Active'),
(53, 'Hainan', 'Hainan, an island province of China', 'Active'),
(54, 'BadenWurttemberg', 'Baden-WÃ¼rttemberg is a state in southwest Germany bordering France and Switzerland.', 'Active'),
(55, 'Bavaria', '', 'Active'),
(56, 'Berlin', '', 'Active'),
(57, 'Brandenburg', '', 'Active'),
(58, 'Bremen', '', 'Active'),
(59, 'Hamburg', '', 'Active'),
(60, 'Hesse', '', 'Active'),
(61, 'Delhi', '', 'Active'),
(62, 'Pondicherry', '', 'Active'),
(63, 'Meghalaya', 'Meghalaya', 'Active'),
(64, '', '', 'Active'),
(65, 'Manipur', 'Manipur', 'Active'),
(66, 'Liverpool', 'with 864,122 population', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `worker_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `work_profile` text NOT NULL,
  `biodata` varchar(100) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `login_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `expected_salary` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`worker_id`, `name`, `address`, `state_id`, `city_id`, `pincode`, `work_profile`, `biodata`, `contactno`, `date_of_birth`, `login_id`, `password`, `expected_salary`, `status`) VALUES
(1, 'Mahesh', 'Karinja House, Ednad Post', 16, 16, '765990', 'Harvesting Coconuts', '25372Final Resume.docx', '8748922442', '1989-12-24', 'atkison@gmail.com', 'workmahesh', 800.00, 'Active'),
(2, 'Chandan', 'Faridabad, Room no.09', 17, 189, '463879', 'Wood cutting', '24142Final Resume.docx', '8748222273', '1989-08-22', 'rdsr2s94@gmail.com', 'workchandan', 700.00, 'Active'),
(3, 'Raj kirana', 'apes court, enry road', 8, 54, '5896741', 'Hello, This i srec', '1018215814Synopsissopi.docx', '080256789', '1998-05-04', 'rajkiran23@gmail.com', 'q1w2e3r4', 12000.00, 'Active'),
(4, 'Brijesh', 'apes court, enry road', 8, 54, '5896741', 'Rent worker', '1018215814Synopsissopi.docx', '080256789', '1998-05-04', 'rajkiran23@gmail.com', 'q1w2e3r4', 12000.00, 'Active'),
(5, 'Anand', '3rd floor', 8, 58, '575002', 'Hello this is my test profile', '5085056529562Table Design.pdf', '7894561230', '1998-09-16', 'anand@gmail.com', 'q1w2e3r4', 5000.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `worker_request`
--

CREATE TABLE `worker_request` (
  `worker_request_id` int(10) NOT NULL,
  `worker_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `task` text NOT NULL,
  `country_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `salary` float(10,2) NOT NULL,
  `salary_type` varchar(20) NOT NULL,
  `seller_status` varchar(20) NOT NULL,
  `worker_status` varchar(20) NOT NULL,
  `seller_comment` text NOT NULL,
  `worker_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `worker_request`
--

INSERT INTO `worker_request` (`worker_request_id`, `worker_id`, `seller_id`, `from_date`, `to_date`, `task`, `country_id`, `state_id`, `city_id`, `salary`, `salary_type`, `seller_status`, `worker_status`, `seller_comment`, `worker_comment`) VALUES
(1, 1, 1, '2016-03-03', '2016-03-05', 'Harvest Produces', 1, 18, 17, 800.00, 'Wage', 'Approved', 'Approved', '11-Mar-2016 05:37:30 - ok done \n Supplies will be provided', '02-Mar-2016 03:09:18 - test comment \n 02-Mar-2016 03:07:51 - Thank You Again \r\n 02-Mar-2016 03:07:23 - Work time: 9 AM to 3 PM \r\n 02-Mar-2016 03:05:12 - Thank You For Providing Supplies.. \r\n '),
(2, 1, 2, '2016-03-11', '2016-03-14', 'Harvesting & Composting', 1, 9, 7, 950.00, 'Wage', 'Approved', 'Rejected', 'Machinery provided', '02-Mar-2016 03:49:44 - Location is inconvinient \n '),
(3, 1, 1, '2016-03-11', '2016-03-14', 'Fertilizing', 1, 11, 10, 790.00, 'Wage', 'Approved', 'Rejected', 'testing', '02-Mar-2016 04:16:13 - Thank you for the opportunity \n '),
(4, 1, 2, '2016-03-11', '2016-03-14', 'Composting and manure', 2, 39, 35, 950.00, 'Salary', 'Approved', 'Rejected', 'testing comment', ''),
(5, 1, 2, '2016-03-18', '2016-03-19', 'test task', 2, 37, 33, 5000.00, 'Salary', 'Approved', 'Rejected', 'test recruiter comment', ''),
(6, 2, 2, '2016-03-04', '2016-03-05', 'test task', 1, 9, 7, 8000.00, 'Wage', 'Approved', '', 'tes', ''),
(7, 1, 1, '2016-03-07', '2016-03-09', 'rubber tapping', 1, 22, 21, 500.00, 'Wage', 'Approved', 'Approved', 'teta', '05-Mar-2016 05:31:47 - test \n '),
(8, 1, 1, '2016-03-18', '2016-03-19', 'composting', 1, 4, 6, 750.00, 'Wage', 'Approved', 'Rejected', 'test', ''),
(9, 1, 1, '2016-03-22', '2016-04-02', 'chopping', 1, 4, 6, 600.00, 'Wage', 'Approved', 'Approved', 'done test', ''),
(10, 1, 1, '2016-03-18', '2016-03-19', 'sowing', 1, 17, 191, 243.00, 'Wage', 'Approved', 'Rejected', 'equipments probided', ''),
(11, 1, 1, '2016-03-15', '2016-03-17', 'Wood cutting', 1, 16, 16, 750.00, 'Wage', 'Approved', '', '', ''),
(12, 1, 1, '2016-03-18', '2016-03-20', 'Farming', 1, 8, 55, 300.00, 'Wage', 'Approved', 'Rejected', '18-Mar-2016 07:28:34 - vv \n test', '18-Mar-2016 07:09:13 - ret \n 18-Mar-2016 07:06:37 - ges \r\n '),
(13, 0, 1, '2016-04-03', '2016-04-10', 'Test task', 1, 8, 54, 10000.00, 'Salary', 'Approved', '', 'test comment', ''),
(14, 2, 1, '2016-04-01', '2016-04-03', 'Test task request', 1, 24, 207, 7000.00, 'Wage', 'Approved', 'Approved', 'Test comment', '18-Mar-2016 07:35:58 - Test message1 \n '),
(15, 1, 1, '2020-05-20', '2020-05-27', 'Multiplier work', 1, 19, 209, 500.00, 'Salary', 'Approved', '', '15-May-2020 11:01:33 - kindly update \n This is for new rec', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`produce_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  ADD PRIMARY KEY (`purchase_order_bill_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`purchase_request_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`worker_id`);

--
-- Indexes for table `worker_request`
--
ALTER TABLE `worker_request`
  ADD PRIMARY KEY (`worker_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produce`
--
ALTER TABLE `produce`
  MODIFY `produce_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  MODIFY `purchase_order_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `purchase_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `worker_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `worker_request`
--
ALTER TABLE `worker_request`
  MODIFY `worker_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
