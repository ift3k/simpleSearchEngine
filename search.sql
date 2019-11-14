-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2017 at 07:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `site_title` varchar(200) NOT NULL,
  `site_link` varchar(400) NOT NULL,
  `site_key` varchar(200) NOT NULL,
  `site_des` text NOT NULL,
  `site_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `site_title`, `site_link`, `site_key`, `site_des`, `site_img`) VALUES
(1, 'Facebook', 'www.facebook.com', 'facebook login,facebook signup, www.facebook.com', 'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates', '124010.png'),
(2, 'How to Train Your Dragon (film) - Wikipedia', 'https://en.wikipedia.org/wiki/How_to_Train_Your_Dragon_(film)', 'Dragon, Movies, Animation, 2010, imdb, how to train your dragon, Wikipedia, film', 'How to Train Your Dragon is a 2010 American 3D computer-animated action-fantasy film produced by DreamWorks Animation and distributed by Paramount Pictures.', 'How To Train Your Dragon1.jpg'),
(3, 'How to Train Your Dragon (2010) - IMDb', 'http://www.imdb.com/title/tt0892769/', 'Dragon, Movies, Animation, 2010, imdb, how to train your dragon, film', 'A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed. ', 'how to train your dragon.jpg'),
(4, 'How To Train Your Dragon | Official Website | DreamWorks Animation', 'https://www.howtotrainyourdragon.com/', 'Dragon, Movies, Animation, 2010, official, how to train your dragon, Wikipedia, film', 'Hiccup & Toothless welcome you to the world of DreamWorks Dragons, the home of How To Train Your Dragon, Riders of Berk, Defenders of Berk & School of', 'How To Train Your Dragon2.jpg'),
(5, 'How to Train Your Dragon (2010) - Rotten Tomatoes', 'https://www.rottentomatoes.com/m/how_to_train_your_dragon/', 'Dragon, Movies, Animation, 2010, Rotten Tomatoes, how to train your dragon, film', 'An encyclopedia of all your favorite dragons', 'dragon.jpg'),
(6, 'How to Train Your Dragon - Home | Facebook', 'https://www.facebook.com/HowToTrainYourDragon/', 'facebook login,facebook, dragon, how to train your dragon, movie, animation', 'How to Train Your Dragon. 9.6M likes. The official Facebook page.', 'dragon3.jpg'),
(7, 'How to Train Your Dragon Reviews - Metacritic', 'http://www.metacritic.com/movie/how-to-train-your-dragon', 'Dragon, Movies, Animation, 2010, how to train your dragon.Metacritic', 'How to Train Your Dragon movie reviews & Metacritic score: Set in the mythical world of burly Vikings and wild dragons, and based on the book by Cressid', 'How-to-Train-Your-Dragon-2-Movie-Poster.jpg'),
(10, 'Google', 'https://www.google.com/', 'search engine, google, web, search, www.google.com', 'Search the world\'s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you\'re looking for.', '1200px-Google_2015_logo.svg.png'),
(11, 'YouTube', 'https://www.youtube.com/', 'youtube,video, music, audio, media, movies, www.youtube.com', 'Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube.', 'youtube.png'),
(12, 'DIU', 'http://diu.ac/', 'dhaka international university,diu,education,student', 'Join with us now ! Dhaka International University, rated among the top private universities of Bangladesh, is an institution that promotes eastern culture and values, and meaningfully blends eastern and western thought and innovation.', 'diu.jpg'),
(13, 'Dhaka International University', 'web.diu.ac', 'diu, dhaka international university, education, student, portal, archive, old', 'As an institution of higher learning that promotes and inculcates ethical standards, values and norms, Dhaka International University (DIU) is committed to the ideals of equal opportunity, transparency, and non-discrimination. The primary mission of DIU is to provide, at a reasonable cost, tertiary education characterized by ...', 'Web-100.png'),
(14, 'Dhaka International University Facebook', 'https://www.facebook.com/diu.net.bd/', 'diu, dhaka international university, education, student, portal, archive, old', 'Facebook page of DIU.\r\nAddress: House # 4, Road #1, Block-F, Banani,\r\nDhaka, Bangladesh 1213\r\n+88-02-55040891-7', 'diu.jpg'),
(15, 'Yahoo', 'https://www.yahoo.com/', 'search engine, yahoo, web, search, www.yahoo.com', 'News, email and search are just the beginning. Discover more every day. Find your yodel.', 'default-notif-img.png'),
(16, 'à¦•à¦¾à¦²à§‡à¦° à¦•à¦£à§à¦  | kalerkantho', 'www.kalerkantho.com/', 'kalerkantho, news, current, bangladesh, kaler, kantho, www.kalerkantho.com', 'Strongest panel of journalist in Bangladesh put their hands together to reveal the best out of the facts for the nation Kaler kantho.', 'Kaler_Kantho_logo.svg.png'),
(17, 'Bangladesh English Newspaper - The Daily Prothom Alo English', 'en.prothom-alo.com/', 'prothom, alo, news, current, bangladesh, prothomalo, prothom alo, www.prothom-alo.com', 'Prothom Alo English brings you the Bangladesh news, analysis, opinion, edit and videos on entertainment, latest lifestyle, culture & new technologies emerging ...', 'dc5a51021b9c4eb8ef5e86dc794054e1-palo-logo.jpg'),
(18, 'à¦ªà§à¦°à¦šà§à¦›à¦¦ - BD24Live.com', 'bd24live.com/bangla/', 'bd24live, news, current, bangladesh, bd, news, www.bd24live.com', 'Best E online newspaper in Bangladesh...', '48bvydqa.jpg'),
(19, 'Online Shopping In Bangladesh: Fashion, Electronics, Mobiles - Daraz ...', 'https://www.daraz.com.bd', 'daraz.com, daraz, shop, shopping, cheap, price, fashion, electronic, mobiles, bd, bangladesh, www.daraz.com.bd', 'Daraz.com.bd online shopping in bangladesh with free home delivery. Buy latest electronics, mobiles, fashion apparels. âœ“Cash On Delivery âœ“Low Prices.', 'Daraz-Bangladesh.png'),
(20, 'Wikipedia', 'https://www.wikipedia.org', 'wikipedia, encyclopedia, knowledge, www.wikipedia.org, www.wikipedia.com', 'Wikipedia is a free online encyclopedia, created and edited by volunteers around the world and hosted by the Wikimedia Foundation.', '1200px-Wikipedia-logo-v2-en.svg.png'),
(21, 'bdjobs.com :: Largest Job Site in Bangladesh', 'www.bdjobs.com', 'jobs, bd, bangladesh, carrier, www.bdjobs.com', 'Search jobs & apply online at Bdjobs, including training & more. Bdjobs has many features to help you find your desired job or fill your company\'s hiring needs.', 'bdjobs-logo.png'),
(22, 'Grameenphone | Go Beyond', 'https://www.grameenphone.com', 'grameen, grameenphone, phone, mobile, gp, www.grameenphone.com', 'Grameenphone is the leading telecom operator with highest number of subscribers & widest network in Bangladesh, providing best 3G internet service nationwide.', 'GP.jpg'),
(23, 'Microsoft - Official Home Page', 'https://www.microsoft.com/', 'microsoft, windows, technology, tech, www.microsoft.com', 'At Microsoft our mission and values are to help people and businesses throughout the world realize their full potential.', 'microsoft.png'),
(24, 'Test Result', 'www.test.com', 'test, demo', 'This is a demo query for this application.', '24296689_1959659710727191_6256806075078839787_n.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
