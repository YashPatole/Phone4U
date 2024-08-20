-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2022 at 05:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phone4u2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `brand_review` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_review`) VALUES
(1, 'Oneplus', 'Known for its special Oxygen OS providing a clean UI for android users , During its early  days Oneplus turned out to be  the most popular smartphone brand in India under premiuim segment providing excellent flagship experience with good cameras at  comparatively low prices than its competition which gave oneplus the  term \"Flagship Killer\". Recently they have completely changed their game by introducing \" pro\" series of smartphones making no compromises and  changed from \"flagship killer\" to \"Flagship\". Established in 2013, Oneplus has service centers in most of the major cities in the country. The company is one of the three subsidiaries of BKK Electronics, the other two being Oppo and Vivo.'),
(2, 'Oppo', 'Oppo is a Chinese Smartphone Brand launched in 2004 and owned by BBK Electronics. Oppo entered the Indian Market in early 2014. Oppo Smartphones run on ColorOS, which comes with a lot of bloatware and ads. The brand has been among the competitive Chinese Brands providing good pricing for most of its smartphones. Oppo has diversified its smartphone offering, ranging from low-end to high-end devices. The brand has provided one of the best after sales service in the Indian Market. The smartphones have shined in the hardware department while lacking in the software.'),
(3, 'Samsung', 'The Samsung Galaxy brand started just a decade ago in 2009 and is now a household name. Samsung has had its own share of problems like the Galaxy Note 7 being recalled and competitive pricing by the Chinese Brands. But, even after all the trouble Samsung still has the Second Largest Market Share which is increasing at a high speed. Samsung phones use the Android OS with a custom user interface called One UI. This surely doesn’t provide the purest Android experience but has its own fan following. The Brand provides smartphones in almost all budget categories. Service Centres are wide spread across the country. So, one can be most certain to get proper service for their phone. Even though the Samsung brand is one of the best, every phone from Samsung can’t hold the same tag. As Samsung Galaxy has a long history of providing good and bad phones.'),
(4, 'Google', 'Google Pixel is a name which speaks for itself. Pixel phones have always provided the purest Android Experience with some exclusive features sprinkled on top. With a great combination for software and hardware, Google never disappoints in the Camera Department. Google provides a long-lasting software support for all its devices. We can expect software updates for at least 3 years for any Pixel Device since its release date. Google doesn’t have any physical service centre in India however they have partnered with B2X. B2X provides doorstep service. But, the cost and duration for it can be high at times.'),
(5, 'Realme', 'Established on May 4, 2018 by Sky Li, Realme is certainly the fastest growing smartphone brand in the whole world , they\'ve targeted the entry level segment of smartphone where 80% percent of the market lies , with  their smartphones  having excellent CPUs and great cameras with aggressive pricing , they have forced  competitors like xiaomi and samsung  to work harder.Although, Realme UI is not the best User Interface which contains ads and bloatware to cover the brands costs, However,  most people don\'t seem to complain about it while it annoys the others . Realme is now a Big Brand and makes good phones in each segment from entry level to Flagships. Being a sub brand of oppo , it has tons of exclusive stores and authorised service centers in the country.'),
(6, 'Nokia', 'Delivering monthly security updates for 3 years and Android™️ software upgrades for 2 years, Nokia smartphones top the 2020 Counterpoint Research trust rankings. And with device testing that exceeds the industry average,  Nokia Smartphones are also ahead of other smartphone brands for build quality in their segment. Nokia smartphones are one of a kind with android one and long lasting durability. Apart from excellent User Interface and great build quality, Nokia Smartphones are not Easy to Recommend, They have certainly failed to establish themselves in the market because their smartphones lack basic cutomer demands like a  good processor, decent camera , fast charging and speakers that are good to hear. Competitors like xiaomi, Realme , Poco  and Samsung have way better performing devices than Nokia, Not to forget that they always fail to get the  pricing right. Being a reputed brand ,nokia has numerous service centers than the amount of Phones it sells.If you\'re a person on a tight budget looking for a smartphone without ads that can last for 3 years, Nokia is the One For You.'),
(7, 'Apple', 'Apple is one of the leading smartphone companies in the world. I mean, who here hasn’t heard of Apple. Everything Apple does in their phone is copied by all other brands in the world, irrespective of how good or bad it is. In India, Apple is treated as a luxury brand, partly because how premium their products are and partly due to the mindset of the Indian consumers. Apple phones are the best in their class in terms of build quality, camera performance and how they look and feel in hand. The areas where no other brand can be compared with Apple are software support and privacy of the end consumers. Apple phones get 6 six years of software support from the date of launch which is absolutely amazing and Apple is the only company to keep the end user’s privacy in mind. All that being said, Apple phones are not at all perfect. Apple’s software is not so great in terms of providing the users with the ability to customize their phones at all. The only thing you can readily customize about your phone are the wallpaper and the ringtone! Also, iOS can be limiting at times. If you are user who has no issues with iOS, the iPhone is the best phone for you and if you own some other Apple product, you would be highly impressed with the Apple Ecosystem. It is important to note that iPhones from the iPhone 13 won’t be shipping with a charger in the box and if you are one of the crazy persons who charges their phone, you’ll have to pay extra to do that.'),
(8, 'Iqoo', 'iQOO is fairly new in the Indian Smartphone industry. The company was founded on 12 February 2019 as a subsidiary of the smartphone manufacturer Vivo but now it operates fully independently in India. The timing of iQOO’s arrival in India couldn’t have been better as the budget flagship segment was turning stagnant. With brands like Oneplus entering the premium segment and becoming flagships, the consumers really needed the ‘flagship-killer’ brand. That is what iQOO aims to do in India. iQOO provides smartphones with really-competitive flagship level specs at half the price. Their software which is based on Vivo’s Funtouch OS also provides a really good experience as it is much cleaner and has little bloatware which can be easily removed. But, as it a new smartphone company, nothing can be said about the delivery of android updates over the years and this is something only time can tell. All in all, iQOO is a really promising brand which keeps all kinds of users in mind by providing really good phones in various price segments.'),
(9, 'Asus', 'On June 8,2018 Asus ROG announced India\'s first dedicated gaming smartphone. The ASUS ROG Smartphones are the most ambitious approach at a gaming smartphone to date, they offers an entire ecosystem of accessories and adapters to create a truly unique gaming experience on mobile. The ROG smartphones are designed to impress gamers and has multiple design elements that draw inspiration from ASUS ROG series of laptops. ROG left no stone unturned when it comes to hardware and it is evident in the performance. ROG has taken the same approach for software as it has with hardware. It runs on stock android with a custom ROG UI on top. Another customisation that ROG has made is its Game Center app. This is a hub for all performance-related tweaks on the phone.'),
(10, 'Sony', ''),
(11, 'Infinix', ''),
(12, 'Vivo', 'Vivo is  based in Dongguan, Guangdong, China. It was founded in 2009. Vivo smartphones are known to take  quality selfies with unique beautification filters.Vivo is also known for experimental hardware features that it often shows off in concept form before shipping in commercial products. In-display fingerprint sensors and pop-up selfie cameras are examples of it.Vivo smartphones are always in eye-catching glossy colours which looks good, but they are made form  plastic so it does not feel premium in hand.Their FuntouchOS  is their heavily skinned OS based on Android. Its just a unprofessional mixing of Android and iOS. Talking about the software updates Vivo is horrible providing consistent software maintenance and updates, expect no significant Android upgrade because they don’t make one, once it’s Android Pie, it always is Android Pie.Vivo is continuously trying to decrease the price and give a better product to us. But still, they need more improvements. One thing I like about these smartphones is the after-sale service. If you find any issue with these smartphones, you can go to the nearest mobile shop, and the problem will be fixed very soon.'),
(13, 'Xiaomi', 'Xiaomi was declared the \'Most Reputed Smartphone Brand\' of India which says all about the brand.  There are plenty of Xiaomi phones released all the time, as the Chinese tech company never sleeps by the sounds of it, and that means this list is constantly changing.  These loads of top phones cover up plenty of price tags, from the affordable Redmi phones to the top-end Mi devices.  Xiaomi phones often have impressive specs and features, with prices lower than you\'d expect.  If you\'re looking for great value for money, Xiaomi is a great pick over most of the options out there. Despite having great hardware capabilities, these phones shortfall in the software section as it adds bloatware and a fair share of ads. Other than that, abundance of service centers along with the other perks, these phones satisfy most users.'),
(14, 'Poco', 'Poco was introduced as a smartphone series from Xiaomi with an aim to disrupt the affordable flagship smartphone market in India. Poco India is now among the top three online smartphone brands in the country. Initially, poco was introduced as a sub-brand of the Chinese electronics giant Xiaomi but Poco went the independent route on January 17, 2020. Poco continues using the MIUI skin on its smartphones, something we still see on Poco smartphones.  Nonetheless, Poco did tweak the User Interface a little bit by eliminating ads and adding the Poco launcher instead of the default MIUI launcher which is appreciated by many. This brand is known for offering top of the line specifications at an affordable price.  Poco astonished the market by introducing Poco f1 and Poco X3 PRO with flagship level chipset and we hope that they continue to do so.'),
(15, 'Motorola', 'Motorola is a reputed smartphone brand which is now under Lenovo. Motorola is one of the very few companies that offer near stock Android experience and are always ahead in software updates. The best Motorola phones are all excellent value for money. They are best known for their G series. Even though we are seeing fewer number of smartphones from Motorola nowadays but we are still hopeful for what the future holds for this brand'),
(16, 'Micromax', 'Once a dominant player in the smartphone segment, Micromax gradually faded away from the homegrown smartphone space. The Indian brand has made a grand comeback with two new phones, priced as aggressively as its Chinese contemporaries. Micromax, is attempting a comeback with a nationalistic vigour. With Micromax IN 1 they showed real potential. Micromax promises near stock android experience with their smartphones which gives them a head start against their Chinese competitors. However this alone wont be enough to prevail over the Chinese monopoly in the budget section. Will Micromax be able to keep their rivals on their toes and actually make a respectable place in the busy Indian market? Time will tell.');

-- --------------------------------------------------------

--
-- Table structure for table `buy_link`
--

CREATE TABLE `buy_link` (
  `buy_link_id` int(11) NOT NULL,
  `buy_link_url` varchar(2048) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buy_link`
--

INSERT INTO `buy_link` (`buy_link_id`, `buy_link_url`, `phone_id`) VALUES
(1, 'https://www.amazon.in/Test-Exclusive_2020_1168-Multi-3GB-Storage/dp/B089MT2CNG/ref=sr_1_4?dchild=1&keywords=oneplus+9+pro&qid=1622623916&sr=8-4', 1),
(2, ' https://www.oneplus.in/oneplus-9-pro', 1),
(5, 'https://www.flipkart.com/realme-8-pro-illuminating-yellow-128-gb/p/itmaa9c73f5a987c?pid=MOBGYV98QH6HZ9NF&lid=LSTMOBGYV98QH6HZ9NFOQWL7C&marketplace=FLIPKART&q=realme+8+pro+&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=debd5486-8772-4622-80fe-9256f53a9e17.MOBGYV98QH6HZ9NF.SEARCH&ppt=pp&ppn=pp&ssid=7cq75qvyv40000001620462241644&qH=31561332f6af1e07', 4),
(6, ' https://www.realme.com/in/realme-8-pro', 4),
(7, ' https://www.amazon.in/Test-Exclusive_2020_1180-Multi-3GB-Storage/dp/B089MT34QL/ref=sr_1_3?dchild=1&keywords=oneplus+9r&qid=1622880933&sr=8-3', 5),
(8, ' https://www.oneplus.in/oneplus-9r', 5),
(9, 'https://www.flipkart.com/realme-8-cyber-black-128-gb/p/itm63bda3bf5b1db', 6),
(10, ' https://buy.realme.com/in/goods/322?id=843 ', 6),
(11, 'https://www.flipkart.com/google-pixel-4a-just-black-128-gb/p/itm023b9677aa45d', 7),
(12, 'https://www.realme.com/in/realme-narzo-30-pro', 8),
(13, 'https://www.flipkart.com/realme-c25-watery-blue-64-gb/p/itm62d25188ea98a?pid=MOBGFZ7VHNHCA9UH&lid=LSTMOBGFZ7VHNHCA9UHMHHH6R&marketplace=FLIPKART&q=realme+C25&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=cc4aacf1-f3e8-4db6-83f8-0a75c0d967d0.MOBGFZ7VHNHCA9UH.SEARCH&ppt=pp&ppn=pp&ssid=jm4h2tdwe80000001623053912299&qH=cd8c1af4c146943c', 9),
(14, ' https://buy.realme.com/in/goods/336?id=869  ', 9),
(17, 'https://www.flipkart.com/realme-x7-5g-space-silver-128-gb/p/itm3973962c2c7bb ', 12),
(18, ' https://www.realme.com/in/realme-x7/specs ', 12),
(19, 'https://www.flipkart.com/realme-x7-max-asteroid-black-128-gb/p/itm9321fdf5ebc65?pid=MOBG2BE8Y3JRWBBB&lid=LSTMOBG2BE8Y3JRWBBBUG9BN2&marketplace=FLIPKART&sattr[]=color&sattr[]=storage&sattr[]=ram&st=color&otracker=AS_QueryStore_HistoryAutoSuggest_1_7_na_na_na', 13),
(20, ' https://buy.realme.com/in/goods/359?id=898', 13),
(21, 'https://www.amazon.in/iQOO-Storm-Black-128GB-Storage/dp/B085J1RJV6/ref=sr_1_2?dchild=1&keywords=iQOO%2B7&qid=1623232157&sr=8-2&th=1', 14),
(23, 'https://www.flipkart.com/motorola-g40-fusion-frosted-champagne-64-gb/p/itmaa22c25971ee0?pid=MOBFWSF8KRVUGH9W&lid=LSTMOBFWSF8KRVUGH9WJ4EGIM&marketplace=FLIPKART&q=MOTOROLA+G40&store=tyy%2F4io&srno=s_1_2&otracker=search&otracker1=search&fm=SEARCH&iid=efef2b85-1868-4059-8a68-08ad80bc640b.MOBFWSF8KRVUGH9W.SEARCH&ppt=pp&ppn=pp&ssid=p2fvsdo81c0000001623267020630&qH=6fd4808012d77edd', 16),
(29, 'https://www.flipkart.com/realme-c25s-watery-blue-64-gb/p/itm3546940d1cedb?pid=MOBG39HUHPSJGHRK&lid=LSTMOBG39HUHPSJGHRKLPO5QX&marketplace=FLIPKART&sattr[]=color&sattr[]=storage&st=color&otracker=search ', 22),
(30, '  https://buy.realme.com/in/goods/364', 22),
(31, 'https://www.flipkart.com/realme-8-5g-supersonic-blue-64-gb/p/itm8a548578d136e?pid=MOBG2CE4NAKFGHAE&lid=LSTMOBG2CE4NAKFGHAEWPE9ZD&marketplace=FLIPKART&q=realme+8+5g&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=5d52f8ff-bbc1-45d6-aee6-22d09f61640e.MOBG2CE4NAKFGHAE.SEARCH&ppt=pp&ppn=pp&ssid=s54rbynxow0000001623313604880&qH=21b503bf498ed0c2', 23),
(32, ' https://www.realme.com/in/realme-8-5g/specs ', 23),
(33, 'https://www.amazon.in/Samsung-Phantom-Storage-Additional-Exchange/dp/B08LRCQTCT/ref=sr_1_5?dchild=1&keywords=s21&qid=1622979016&s=electronics&sr=1-5&th=1', 24),
(34, ' https://www.flipkart.com/samsung-galaxy-s21-phantom-violet-128-gb/p/itm916d671b27b8d?pid=MOBFZ3TM5FT52G79&lid=LSTMOBFZ3TM5FT52G79OCVZSV&marketplace=FLIPKART&q=s21&store=tyy%2F4io&srno=s_1_8&otracker=search&otracker1=search&fm=SEARCH&iid=ad0ee8b8-2110-46fb-9878-6e0ea04d79f8.MOBFZ3TM5FT52G79.SEARCH&ppt=hp&ppn=homepage&ssid=s1qxdkdue80000001623075921275&qH=c655c94ce843d593', 24),
(35, 'https://www.amazon.in/Samsung-Galaxy-Phantom-Storage-Active/dp/B08LRDHLQF/ref=sr_1_5?dchild=1&keywords=s21%2Bplus&qid=1623073592&sr=8-5&th=1   ', 25),
(36, '  https://www.flipkart.com/samsung-galaxy-s21-plus-phantom-black-128-gb/p/itm9a7e14ec0799d?pid=MOBFZ3TMYQ8WTHJE&lid=LSTMOBFZ3TMYQ8WTHJE7MWZ1U&marketplace=FLIPKART&q=s21+plus&store=tyy%2F4io&srno=s_1_4&otracker=search&otracker1=search&fm=SEARCH&iid=4a86696e-e148-4cc0-a2b4-d047bc71cf89.MOBFZ3TMYQ8WTHJE.SEARCH&ppt=hp&ppn=homepage&ssid=prp134w3hs0000001623073609812&qH=7ba93a67751ad665 ', 25),
(37, 'https://www.amazon.in/Samsung-Galaxy-Phantom-Silver-Storage/dp/B08LRFZ4LZ/ref=sr_1_3?dchild=1&keywords=s21&qid=1622979016&s=electronics&sr=1-3  ', 26),
(38, ' https://www.flipkart.com/samsung-galaxy-s21-ultra-phantom-silver-256gb/p/itm33747d3aa16d9?pid=MOBFZ3TMAHBPXYNZ&lid=LSTMOBFZ3TMAHBPXYNZS9EVOI&marketplace=FLIPKART&q=S21+ULTRA&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=27c3c908-a29e-4b35-892e-5c5e023be377.MOBFZ3TMAHBPXYNZ.SEARCH&ppt=pp&ppn=pp&ssid=fxuqeh2rg00000001622981239688&qH=85f0db4eb55d7a93', 26),
(39, 'https://www.flipkart.com/motorola-g60-frosted-champagne-128-gb/p/itm9154ecfab780b?ocmpid=BrandAd_Motorola_motog60_GoogleSearch_India-27_Apr-Prodspec-Paid?force_app=1&gclid=Cj0KCQjw8IaGBhCHARIsAGIRRYpJwBa91jvjHbb1v5zJOffSMRKs8YZagEa-ZHBCY0lSXlbxrUBgCnkaAvXWEALw_wcB', 27),
(40, 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B08V9ZPY6M/ref=as_li_ss_tl?dchild=1&keywords=galaxy+a52&qid=1617859233&sr=8-2&th=1&linkCode=sl1&tag=gr24-21&linkId=8faeb91b135ad20923a20c5adca9f9f5&language=en_IN', 28),
(41, ' https://www.flipkart.com/samsung-galaxy-a52-awesome-black-128-gb/p/itm5feabe9940402?pid=MOBGF8GPQMN4YGPN&lid=LSTMOBGF8GPQMN4YGPNZEEZTZ&marketplace=FLIPKART&q=galaxy+a52&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=cdf15f87-0fb6-4db8-85c4-224407f97bc3.MOBGF8GPQMN4YGPN.SEARCH&ppt=sp&ppn=sp&ssid=5w7ze9knq80000001623326041908&qH=02a65f4de7507a98', 28),
(42, 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B08VB2KYDB/ref=sr_1_1_sspa?dchild=1&keywords=galaxy+a72&qid=1623329879&s=electronics&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzRlRVRUg0MDQxUVYzJmVuY3J5cHRlZElkPUEwNDYyNzM5MzhNR0xXQkpVT1NQUCZlbmNyeXB0ZWRBZElkPUEwNDQxODIwMTZLRE9VRVBYQ0JQSCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', 29),
(43, ' https://www.flipkart.com/samsung-galaxy-a72-awesome-black-128-gb/p/itme6d14bf36c7af?pid=MOBGF8GPFCD25ZU5&lid=LSTMOBGF8GPFCD25ZU5JZAVTA&marketplace=FLIPKART&q=galaxy+a72&store=tyy%2F4io&srno=s_1_2&otracker=search&otracker1=search&fm=SEARCH&iid=5a419df7-dbcf-4ad7-aed9-4fbcae81480f.MOBGF8GPFCD25ZU5.SEARCH&ppt=pp&ppn=pp&ssid=09tk4npvv40000001623329762808&qH=12e8851415d2f5bf', 29),
(44, 'https://www.amazon.in/Test-Exclusive_2020_1140-Multi-3GB-Storage/dp/B089MT36T8/ref=sr_1_1?dchild=1&keywords=Redmi+Note+10&qid=1623330869&sr=8-1', 30),
(45, 'https://www.amazon.in/Redmi-Shadow-Black-128GB-Storage/dp/B08LRDM44F/ref=sr_1_1?dchild=1&keywords=redmi%2Bnote%2B10s&qid=1623336123&sr=8-1&th=1', 31),
(46, 'https://www.amazon.in/Test-Exclusive_2020_1149-Multi-3GB-Storage/dp/B089MS8NWP/ref=sr_1_2?crid=1Z26GYPGCLMUV&dchild=1&keywords=redmi+10+pro&qid=1623354990&sprefix=redmi+%2Caps%2C292&sr=8-2', 32),
(47, 'https://www.amazon.in/Test-Exclusive_2020_1157-Multi-3GB-Storage/dp/B089MV3Q2G/ref=sr_1_2?crid=5CZ4DVIPSD0K&dchild=1&keywords=redmi+10+pro+max&qid=1623358895&sprefix=r%2Caps%2C293&sr=8-2', 33),
(48, 'tps://www.oneplus.in/9/specs', 34),
(49, ' https://www.amazon.in/Test-Exclusive_2020_1176-Multi-3GB-Storage/dp/B089MV1ZSM/ref=sr_1_2?dchild=1&keywords=Oneplus+9&qid=1623424700&s=electronics&sr=1-2', 34),
(50, 'https://www.amazon.in/Samsung-Storage-Additional-Exchange-Offers/dp/B08VB2R5P2/ref=sr_1_1_sspa?dchild=1&keywords=a32&qid=1623498316&s=electronics&sr=1-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyVEFNWTlCVVZTVzBQJmVuY3J5cHRlZElkPUEwNzUzNjA0MkZQVDFVTTBZWkxCRSZlbmNyeXB0ZWRBZElkPUEwMTg1NjYwMklZOU5VSFRQODVTMyZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', 35),
(51, ' https://www.flipkart.com/samsung-galaxy-a32-awesome-black-128-gb/p/itm3629d34759a4d ', 35),
(52, 'https://www.amazon.in/Samsung-Galaxy-Storage-Additional-Exchange/dp/B08WCCM58G/ref=sr_1_4?dchild=1&keywords=galaxy+a+12&qid=1623502440&s=electronics&sr=1-4', 36),
(53, ' https://www.flipkart.com/samsung-galaxy-a12-black-128-gb/p/itm0f88a3c0cb309', 36),
(54, 'https://www.flipkart.com/poco-x3-pro-graphite-black-128-gb/p/itm736059fa07afb?pid=MOBGFKNFRJDN3DS4&lid=LSTMOBGFKNFRJDN3DS4PPS28U&marketplace=FLIPKART&q=poco+x3+pro&store=tyy%2F4io&srno=s_1_1&otracker=AS_Query_OrganicAutoSuggest_3_5_na_na_na&otracker1=AS_Query_OrganicAutoSuggest_3_5_na_na_na&fm=SEARCH&iid=ca326de5-8be3-47fe-8cfc-8be8d33cbb6d.MOBGFKNFRJDN3DS4.SEARCH&ppt=hp&ppn=homepage&ssid=5pnksj5t9s0000001623576159541&qH=5fa2a9dbeb17d9d2', 37),
(55, 'http://dl.flipkart.com/dl/asus-rog-phone-5-black-128-gb/p/itm8e381f6b8521f?pid=MOBGYSZM3YT4ZEGZ&cmpid=product.share.pp ', 38),
(56, 'http://www.flipkart.com/asus-rog-phone-3-black-128-gb/p/itm93ba84fa7cce9', 39),
(57, 'https://www.amazon.in/dp/B085J1QWFV/ref=mh_s9_acsd_al_c2_x_0_i?pf_rd_m=A1K21FY43GMZF8&pf_rd_s=mobile-hybrid-1&pf_rd_r=W3DNYWK775PP9SQ6ZHMT&pf_rd_t=1201&pf_rd_p=74b78958-d911-4a91-803a-f846df333a97&pf_rd_i=26163708031', 40),
(58, 'https://www.amazon.in/dp/B089MVC437/ref=cm_sw_r_cp_awdb_imm_N21GWW79A2SFTK0628R9', 41),
(59, 'https://www.amazon.in/Vivo-X60-Pro-12GB-256GB/dp/B08V9VMRKV/ref=mp_s_a_1_2?adgrpid=69146524009&dchild=1&ext_vrnc=hi&gclid=CjwKCAjw_JuGBhBkEiwA1xmbReX_wjCQ1w52-_VMxzInD0JGMUO7YKGWFi4XgkBETy5EXP9dCsPUhRoCX9sQAvD_BwE&hvadid=398120831432&hvdev=m&hvlocphy=9040234&hvnetw=g&hvqmt=e&hvrand=13859986133769891541&hvtargid=kwd-934237747158&hydadcr=13074_1996836&keywords=vivo+x60+pro&qid=1623684074&sr=8-2', 42),
(60, 'https://www.amazon.in/Vivo-V21-8GB-RAM-128GB/dp/B08ZJVK7RS/ref=mp_s_a_1_1_sspa?dchild=1&keywords=vivo+v21&qid=1623726633&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzOTMwRjFMMzlOQkZMJmVuY3J5cHRlZElkPUEwNTEzNzU4MjJFS1BRWEVETE9UQSZlbmNyeXB0ZWRBZElkPUEwNDgwNDA4NDYzNlRGUFgzUEI2JndpZGdldE5hbWU9c3BfcGhvbmVfc2VhcmNoX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', 43),
(61, 'https://dl.flipkart.com/dl/infinix-note-10-95-black-64-gb/p/itmdfe2cc90afc4c?pid=MOBG3KHEKHJHABMS&cmpid=product.share.pp', 44),
(62, 'http://dl.flipkart.com/dl/infinix-note-10-pro-95-black-256-gb/p/itm4c42328f92487?pid=MOBG3KHEPEPH7GMV&cmpid=product.share.pp', 45),
(63, 'https://www.amazon.in/Samsung-Galaxy-Prism-Black-Storage/dp/B092J3P3RD/ref=sr_1_2?dchild=1&keywords=galaxy+m42&qid=1623516228&sr=8-2', 46),
(64, ' https://www.flipkart.com/samsung-galaxy-m42-5g-prism-dot-black-128-gb/p/itm384dffcf3c416?pid=MOBG2VGGFYZU99GU&lid=LSTMOBG2VGGFYZU99GUIJRY7K&marketplace=FLIPKART&q=m42&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=07efe374-a561-4e80-8e4d-f6c5562c1c94.MOBG2VGGFYZU99GU.SEARCH&ppt=hp&ppn=homepage&ssid=7himxzu4gw0000001623516251872&qH=b32119c817c8d7ca', 46),
(65, 'https://www.amazon.in/Samsung-Galaxy-M12-Storage-Processor/dp/B08XJCMGL7/ref=sr_1_2?dchild=1&keywords=m12&qid=1623583178&s=electronics&sr=1-2', 47),
(66, ' https://www.flipkart.com/samsung-galaxy-m12-black-64-gb/p/itm425898eedc4ce?pid=MOBGFG8H4A32HTKJ&lid=LSTMOBGFG8H4A32HTKJTIUFAY&marketplace=FLIPKART&q=m12&store=tyy%2F4io&srno=s_1_1&otracker=search&otracker1=search&fm=SEARCH&iid=e2f982a3-1b8b-43d2-b56d-3a2757785740.MOBGFG8H4A32HTKJ.SEARCH&ppt=sp&ppn=sp&ssid=uv8o6lnd8g0000001623583208658&qH=abeccf9ae147d854', 47),
(67, 'https://www.amazon.in/Samsung-Galaxy-Cloud-128GB-Storage/dp/B08VB57558/ref=sr_1_2?dchild=1&keywords=S20+FE&qid=1623586160&s=electronics&sr=1-2', 48),
(69, 'https://www.amazon.in/Samsung-Galaxy-Blue-32GB-Storage/dp/B08T2NBQRH/ref=sr_1_3?dchild=1&keywords=m02&qid=1623600062&s=electronics&sr=1-3', 49),
(70, ' https://www.flipkart.com/samsung-galaxy-m02-blue-32-gb/p/itm6bafd2df167b9', 49),
(71, 'https://www.amazon.in/Samsung-Galaxy-Storage-Triple-Camera/dp/B08RSWQ6YZ/ref=sr_1_6?dchild=1&keywords=m02s&qid=1623654060&s=electronics&sr=1-6', 50),
(72, ' https://www.flipkart.com/samsung-m02s-black-32-gb/p/itme9edd93df8425?pid=MOBFZG4CZGKXZBQ2&lid=LSTMOBFZG4CZGKXZBQ268XNRA&marketplace=FLIPKART&q=m02s&store=search.flipkart.com&srno=s_1_5&otracker=search&otracker1=search&fm=SEARCH&iid=ad42b08c-cb9e-43f2-b3ac-c1e2d1db9413.MOBFZG4CZGKXZBQ2.SEARCH&ppt=pp&ppn=pp&ssid=b287mwpqhc0000001623654126895&qH=6369e8067e454c44', 50),
(73, 'https://www.oneplus.in/nord-ce-5g/specs ', 51),
(74, ' https://www.amazon.in/b/?_encoding=UTF8&ie=UTF8&node=21695419031&store_ref=SB_A0904187BMTPCWPUVECM&pd_rd_plhdr=t&aaxitk=51cf7493dcd2e6c6c38b9630c184f478&hsa_cr_id=4536772030902&lp_query=oneplus%20nord%20ce&lp_slot=auto-sparkle-hsa-tetris&ref_=sbx_be_s_sparkle_nafd_cta&pd_rd_w=1Ib7G&pf_rd_p=088a4896-4e55-4a9c-9e96-fdb109ea7578&pd_rd_wg=WCRdx&pf_rd_r=3SRHA1T4KP44N53AD564&pd_rd_r=1ecadece-a4c7-4523-80b2-6ff7a9d13a1b', 51),
(75, 'https://shop.iqoo.com/in/product/2008', 53),
(76, ' https://www.amazon.in/dp/B07WHR5RKH/ref=s9_acsd_al_bw_c2_x_0_t?pf_rd_m=A1K21FY43GMZF8&pf_rd_s=merchandised-search-2&pf_rd_r=NKQ5XPFVHA1TZNZHQF6E&pf_rd_t=101&pf_rd_p=ded1c691-dfaa-404c-8b64-d9c61d510b69&pf_rd_i=26286181031', 53),
(77, 'https://www.amazon.in/Micromax-1-4-64-Purple/dp/B0936WPK8C/ref=sr_1_1?dchild=1&keywords=in+1&qid=1623960667&sr=8-1 ', 54),
(78, ' https://www.flipkart.com/micromax-1-blue-64-gb/p/itm4ffcd06222cfe?pid=MOBGF75YKFMGNNAM&lid=LSTMOBGF75YKFMGNNAM0OV2SR&marketplace=FLIPKART&sattr[]=color&sattr[]=storage&sattr[]=ram&st=ram', 54),
(79, 'https://www.amazon.in/Test-Exclusive_2020_1113-Multi-3GB-Storage/dp/B089MS8XQ3/ref=sr_1_1?crid=1CF52A7866RZD&dchild=1&keywords=redmi+9+power&qid=1623961983&sprefix=redmi+%2Caps%2C278&sr=8-1 ', 55),
(80, ' https://www.flipkart.com/redmi-9-power-electric-green-64-gb/p/itmca7d78e222ed7?pid=MOBFYZ7AVAXXB2TH&lid=LSTMOBFYZ7AVAXXB2THVSNL0U&marketplace=FLIPKART&q=redmi+9+power&store=tyy%2F4io&srno=s_1_1&otracker=AS_QueryStore_HistoryAutoSuggest_1_2_na_na_na&otracker1=AS_QueryStore_HistoryAutoSuggest_1_2_na_na_na&fm=SEARCH&iid=10f82423-2451-4a36-bedf-efcb746bc3ef.MOBFYZ7AVAXXB2TH.SEARCH&ppt=sp&ppn=sp&ssid=1o5vfbplyo0000001623961041718&qH=636f38d734b1a1de', 55),
(81, 'https://www.flipkart.com/poco-m2-reloaded-mostly-blue-64-gb/p/itmc50149a5b8e51?pid=MOBG25SQQBWTVPZS&lid=LSTMOBG25SQQBWTVPZSAGDHGT&marketplace=FLIPKART&q=poco+m2+reloaded&store=tyy%2F4io&srno=s_1_1&otracker=AS_QueryStore_OrganicAutoSuggest_1_9_na_na_na&otracker1=AS_QueryStore_OrganicAutoSuggest_1_9_na_na_na&fm=SEARCH&iid=2f1763c4-1119-4d9a-b523-c5ffab279105.MOBG25SQQBWTVPZS.SEARCH&ppt=hp&ppn=homepage&ssid=eck7t0j5y80000001624565500032&qH=9b85a2d2960dcbf2', 56),
(82, 'https://www.flipkart.com/mi-11-lite-vinyl-black-128-gb/p/itmac6203bae9394', 57),
(83, 'https://www.amazon.in/iQOO-Legend-Legendary-Design-Storage/dp/B08697MJFD', 58);

-- --------------------------------------------------------

--
-- Table structure for table `con`
--

CREATE TABLE `con` (
  `con_id` int(11) NOT NULL,
  `con_content` varchar(512) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `con`
--

INSERT INTO `con` (`con_id`, `con_content`, `phone_id`) VALUES
(1, 'Battery Life seems to be worse than the Previous Models', 1),
(2, ' Camera Performance is not as good as the Competition ', 1),
(3, ' Phone gets Heated while gaming or Video recording ', 1),
(4, ' Out dated Front Camera ', 1),
(9, 'Outdated Processor ', 4),
(10, ' No Stereo Speakers ', 4),
(11, ' Average Camera  sometimes causing over Exposure of images ', 4),
(12, ' feels slightly overpriced at 17', 4),
(13, '999', 4),
(14, 'No Dust or Water Resistance Rating', 5),
(15, ' Average low light camera performance ', 5),
(16, ' Outdated Front Camera ', 5),
(17, ' Other camera sensors feel like a gimmick ', 5),
(18, 'No Stereo Speakers ', 6),
(19, ' DARE TO LEAP logo on the back is a topic of discussion ', 6),
(20, ' Image Processing is not great and takes some time ', 6),
(21, 'Some Bloatware and ADS in the UI ', 6),
(22, '60hz Display', 7),
(23, ' No Expandable Storage', 7),
(24, ' No Face Recognition ', 7),
(25, 'No AMOLED screen ', 8),
(26, ' Android 11 Update Situation not clear ', 8),
(27, ' Better cameras from competition ', 8),
(28, ' Preinstalled Bloatware  with Realme UI', 8),
(29, 'Below Average Speakers ', 9),
(30, ' No FHD+ screen ', 9),
(31, ' Preinstalled Bloatware in UI ', 9),
(32, ' Average Cameras ', 9),
(45, '60Hz display ', 12),
(46, ' Preinstalled Bloatware in UI  ', 12),
(47, ' Average Camera performance ', 12),
(48, ' Most Games Don\'t Support Dimensity 800U  ', 12),
(49, ' No Expandable Storage ', 12),
(50, ' No Stereo Speakers or a 3.5 mm headphone jack ', 12),
(51, 'polycarbonate back ', 13),
(52, ' Colors are not natural on photos and videos ', 13),
(53, ' preinstalled bloatware in the UI ', 13),
(54, ' Can\'t get too close with the Macro camera ', 13),
(59, 'Software needs some refinement', 14),
(60, 'No Audio jack', 14),
(61, 'No water or dust resistance', 14),
(62, 'Only a single 5g band support', 14),
(63, 'Thick and heavy', 16),
(64, ' Slow charging', 16),
(65, ' Average camera performance', 16),
(66, ' No Amoled display', 16),
(88, ' Speakers sound a bit harsh sometimes ', 22),
(89, ' 720p display ', 22),
(90, ' Preinstalled Bloatware in the UI ', 22),
(91, 'LCD display feels cheap ', 23),
(92, ' No wide angle camera ', 23),
(93, ' 4k video shooting not supported ', 23),
(94, '  Only 18W charging Supported ', 23),
(95, ' Preinstalled Bloatware in the  UI ', 23),
(96, 'No Bundled Charger', 24),
(97, ' 1080p Display', 24),
(98, ' Only 25W Fast Charging', 24),
(99, ' Plastic Body', 24),
(100, 'No Bundled Charger', 25),
(101, ' 1080p Display', 25),
(102, ' Only 25W Fast Charging', 25),
(103, 'No Bundled Charger', 26),
(104, ' 25W Max Charging Speed', 26),
(105, ' Very High Pricing in India', 26),
(106, 'Thick and heavy design', 27),
(107, '  Slow charging', 27),
(108, ' Average camera performance', 27),
(109, ' No Amoled display', 27),
(110, ' No stereo speakers', 27),
(111, 'Cheap Build Quality', 28),
(112, ' 25W Max Charging Speed and even slower 15W charger provided', 28),
(113, ' Slower 720G chipset for this price point', 28),
(114, ' Bad front camera photography in low light conditions', 28),
(115, 'Shared SIM slot for SD card', 28),
(116, 'Plastic Build', 29),
(117, ' 25W Max Charging Speed', 29),
(118, ' Slower 720G chipset for this price point', 29),
(119, ' Bad front camera photography in low light conditions', 29),
(120, ' Shared SIM slot for SD Card', 29),
(121, 'Average camera performance during the night', 30),
(122, ' Software with bloatware and ads', 30),
(123, ' No NFC connectivity available', 30),
(124, ' Low calibration on stereo speakers', 30),
(125, 'Average camera performance', 31),
(126, ' Screen has regular 60Hz refresh rate', 31),
(127, ' 4K video lacks stabilization', 31),
(128, ' Software with bloatware and ads', 31),
(129, '', 31),
(130, 'Software contains bloatware and ads', 32),
(131, ' No reverse charging', 32),
(132, ' The low-light camera quality is mediocre', 32),
(133, ' Image stabilization works only on 1080p resolution', 32),
(134, 'Software contains bloatware and ads', 33),
(135, ' Average low-light camera performance', 33),
(136, ' No reverse charging', 33),
(137, ' No 5G support', 33),
(138, ' EIS works only on 1080p resolution', 33),
(139, 'Quite Average Cameras ', 34),
(140, ' No Official IP water or Dust Resistance Rating ', 34),
(141, ' Overheating issue while gaming or shooting videos ', 34),
(142, ' Plastic frame on the back ', 34),
(143, ' No wireless Charging ', 34),
(144, 'Extremely Overpriced', 35),
(145, ' Slow Charging Speed', 35),
(146, ' Weak Processor', 35),
(147, ' Poor Videography', 35),
(148, ' Slow Finger Print Reader', 35),
(149, 'Slow Charging Speed', 36),
(150, ' Weak Processor', 36),
(151, ' No Night Mode and Video Stabilization', 36),
(152, ' Bad Display Quality', 36),
(153, ' Performance is not good', 36),
(154, 'Software contains bloatware and ads', 37),
(155, ' Average camera performance', 37),
(156, ' Thick and heavy design', 37),
(157, ' No 5g support', 37),
(158, ' No Amoled display\r\n', 37),
(159, 'No water or dust resistance', 38),
(160, '\r\nAvailable accessory ecosystem is on expensive side', 38),
(161, '\r\nNo wireless charging', 38),
(162, '\r\nLack of secondary storage', 38),
(163, 'Average lowlight camera performance', 39),
(164, '\r\nNo 3.5mm headphone jack', 39),
(165, '\r\nBulky and heavy', 39),
(166, '\r\nLacks wireless charging', 39),
(167, '\r\nNo optical image stabilisation', 39),
(168, '', 39),
(169, 'Gets hot while charging', 40),
(170, '\r\nUi with lots of bloatware', 40),
(171, '\r\nLack of 3.5mm Headphone Jack', 40),
(172, 'MIUI software needs more refinement', 41),
(173, '\r\nBig and Heavy', 41),
(174, '\r\nLCD Display', 41),
(175, 'Lacks IP rating', 42),
(176, ' \r\nwireless charging', 42),
(177, '\r\nSoftware needs some polishing', 42),
(178, 'Occasional heating issues', 43),
(179, '\r\nBloatware apps', 43),
(180, '\r\nAverage performance', 43),
(181, 'Average Cameras', 44),
(182, '\r\nPlastic Build', 44),
(183, '\r\nComplicated UI', 44),
(184, '\r\n', 44),
(185, 'Heating issues', 45),
(186, '\r\nSpeakers need to improve', 45),
(187, 'Extremely Overpriced', 46),
(188, ' Slow 15W Charging Speed', 46),
(189, ' Extremely Bad Display Quality', 46),
(190, ' Plastic Build', 46),
(191, ' Standard 60 Hz refresh rate', 46),
(192, 'Slow Charging Speed', 47),
(193, ' 720p Display', 47),
(194, ' Average Performing Processor', 47),
(195, 'Slow 15W charger provided in the box', 48),
(196, ' 1080p Display', 48),
(197, ' Supports only up to 25W Fast charging', 48),
(198, ' Plastic Back in a premium smartphone', 48),
(199, 'Slow Charging Speed', 49),
(200, ' 720p Display', 49),
(201, ' Average Cameras', 49),
(202, ' Bad Gaming Performance', 49),
(203, 'Slow Charging Speed', 50),
(204, ' 720p Display', 50),
(205, ' Average Cameras', 50),
(206, ' Decent Performance', 50),
(207, 'Cheap Build Quality with no glass protection', 51),
(208, ' Average Cameras ', 51),
(209, ' Only One 5g Band ', 51),
(210, ' No Stereo Speakers ', 51),
(211, ' No Value For Money ', 51),
(216, 'No Stereo Speakers', 53),
(217, ' Average build Quality with  polycarbonate back and  panda glass protection ', 53),
(218, ' Pre-installed bloatware in the UI', 53),
(219, ' No AMOLED Screen', 53),
(220, 'Poor low light photography', 54),
(221, ' No gorilla glass protection', 54),
(222, ' No Stereo speakers', 54),
(223, 'Moderate processing speed', 55),
(224, ' Not suitable for high-end games', 55),
(225, ' Software contains bloatware and ads', 55),
(226, ' Phone takes considerable amount of time to charge', 55),
(227, 'Average photo and video quality', 56),
(228, '\r\nNo EIS support', 56),
(229, '\r\nSoftware contains bloatware and ads', 56),
(230, '\r\nPhone takes considerable amount of time to charge', 56),
(231, 'No headphone jack', 57),
(232, '\r\nRelatively small battery size', 57),
(233, '\r\nUi has bloatware', 57),
(235, 'FunTouch OS v11 needs more refinement', 58),
(236, 'No headphone jack', 58),
(237, 'When shooting videos at 4k 60fps there is no video stabilization ', 58),
(238, 'Many models have a green tint issue', 58);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL,
  `phone_name` varchar(256) NOT NULL,
  `phone_image_name` varchar(256) NOT NULL,
  `phone_price` int(32) NOT NULL,
  `phone_price_char` varchar(32) NOT NULL,
  `portfolio_name` varchar(512) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_id`, `phone_name`, `phone_image_name`, `phone_price`, `phone_price_char`, `portfolio_name`, `brand_id`) VALUES
(1, 'Oneplus 9 Pro', 'oneplus 9 pro.png', 64999, '64,999', 'OnePlus 9 Pro 5G (Morning Mist, 8GB RAM, 128GB Storage)', 1),
(4, 'Realme 8 pro', 'realme 8 pro.png', 17999, '17,999', 'realme 8 Pro (Illuminating Yellow, 128 GB)  (6 GB RAM)', 5),
(5, 'OnePlus 9R', 'oneplus 9r.png', 39999, '39,999', 'OnePlus 9R 5G (Lake Blue, 8GB RAM, 128GB Storage)', 1),
(6, 'Realme 8', 'realme 8.png', 14999, '14,999', 'Realme 8 (Cyber Black, 128 GB)  (4 GB RAM)', 5),
(7, 'Google Pixel 4a', 'google pixel 4a.jpeg', 29999, '29,999', 'Google Pixel 4a 6GB RAM, 128GB ROM', 4),
(8, 'Realme Narzo 30 Pro 5G', 'realme narzo 30 pro 5g.png', 15999, '15,999', 'Realme Narzo 30 Pro 5G (Sword Black, 64 GB)  (6 GB RAM)', 5),
(9, 'Realme C25 ', 'realme c25 .png', 9999, '9,999', 'Realme C25 (Watery Blue, 64 GB)  (4 GB RAM)', 5),
(12, 'Realme X7 5g', 'realme x7 5g.png', 17999, '17,999', 'Realme X7 5G (Space Silver, 128 GB)  (6 GB RAM)', 5),
(13, 'Realme X7 Max 5g', 'realme x7 max 5g.png', 26999, '26,999', 'Realme X7 Max 5G (Asteroid Black, 8GB+128GB)', 5),
(14, 'iQOO 7 5G ', 'iqoo 7 5g .jpg', 31990, ' 31,990.00', 'iQOO 7 5G (Storm Black, 8GB RAM, 128GB Storage)|Upto 6 Months NCEMI| 3GB Extended RAM', 8),
(16, 'Motorola G40 Fusion', 'motorola g40 fusion.jpeg', 14499, '14,499', 'Motorola G40 Fusion', 15),
(22, 'Realme C25s', 'realme c25s.png', 9999, '9,999', 'Realme C25s (Watery Blue 4GB+64GB)', 5),
(23, 'Realme 8 5g', 'realme 8 5g.png', 13999, '13,999', 'Realme 8 5G (Supersonic Blue, 64 GB)  (4 GB RAM)', 5),
(24, 'Samsung Galaxy S21', 'samsung galaxy s21.jpg', 69990, '69,990', 'Samsung Galaxy S21 8GB RAM, 128GB Storage', 3),
(25, 'Samsung Galaxy S21+', 'samsung galaxy s21+.jpg', 71990, '71,990', 'Samsung Galaxy S21+ 8GB RAM, 128GB Storage', 3),
(26, 'Samsung Galaxy S21 Ultra', 'samsung galaxy s21 ultra.jpg', 105990, '1,05,990', 'Samsung Galaxy S21 (12GB RAM, 256GB Storage)', 3),
(27, 'Motorola G60', 'motorola g60.jpeg', 17999, '17,999', 'MOTOROLA G60 (6 GB RAM, 128 GB Storage)', 15),
(28, 'Samsung Galaxy A52', 'samsung galaxy a52.jpg', 27999, '27,999', 'Samsung Galaxy A52 (6GB RAM, 128GB Storage)', 3),
(29, 'Samsung Galaxy A72', 'samsung galaxy a72.jpg', 34999, '34,999', 'Samsung Galaxy A72 (8GB RAM, 128GB Storage)', 3),
(30, 'Xiaomi Redmi Note 10', 'xiaomi redmi note 10.jpeg', 12499, '12,499', 'Xiaomi Redmi Note 10 (4 GB RAM| 64GB ROM)', 13),
(31, 'Xiaomi Redmi Note 10S', 'xiaomi redmi note 10s.jpeg', 14999, '14,999', 'Xiaomi Redmi Note 10S ( 6GB RAM, 64GB Storage)', 13),
(32, 'Xiaomi Redmi note 10 pro', 'xiaomi redmi note 10 pro.jpeg', 15999, '15,999', 'Xiaomi Redmi note 10 pro  ( 6GB RAM, 64GB Storage)', 13),
(33, 'Xiaomi Redmi note 10 pro max ', 'xiaomi redmi note 10 pro max .jpeg', 19999, '19,999', 'Xiaomi Redmi note 10 pro max ( 6GB RAM, 128GB Storage)', 13),
(34, 'Oneplus 9 5g', 'oneplus 9 5g.png', 49999, '49,999', 'OnePlus 9 5G (8GB RAM, 128GB Storage)', 1),
(35, 'Samsung Galaxy A32', 'samsung galaxy a32.jpg', 20499, '20,499', 'Samsung Galaxy A32 (6GB RAM, 128GB Storage)', 3),
(36, 'Samsung Galaxy A12', 'samsung galaxy a12.jpg', 12999, '12,999', 'Samsung Galaxy A12 (4GB RAM, 128GB Storage)', 3),
(37, 'Poco X3 pro', 'poco x3 pro.jpeg', 18999, '18,999', 'Poco X3 pro (6GB RAM | 128GB ROM )', 14),
(38, 'ROG Phone 5', 'rog phone 5.jpeg', 49999, '49,999', 'ROG Phone 5 (8 GB RAM, 128 GB Storage)  ', 9),
(39, 'ROG Phone 3', 'rog phone 3.jpeg', 41999, '41,999', 'ROG Phone 3 (8 GB RAM, 128 GB Storage)  ', 9),
(40, 'Mi 11x 5g', 'mi 11x 5g.webp', 29999, '29,999', 'Mi 11X 5G (6GB RAM,128GB ROM)', 13),
(41, 'Mi 10i 5g', 'mi 10i 5g.webp', 21999, '21,999', 'Mi 10i 5G (6GB RAM, 128GB Storage)', 13),
(42, 'Vivo x60 pro ', 'vivo x60 pro .webp', 49990, '49,990', ' Vivo X60 Pro (12GB RAM, 256GB Storage)', 12),
(43, 'Vivo V21 5G ', 'vivo v21 5g .webp', 29990, '29,990', 'Vivo V21 5G (8GB RAM, 128GB Storage) ', 12),
(44, 'Infinix Note 10', 'infinix note 10.jpeg', 10999, '10,999', 'Infinix Note 10 (4GB RAM, 64GB ROM)', 11),
(45, 'Infinix Note 10 Pro', 'infinix note 10 pro.jpeg', 16999, '16,999', 'Infinix Note 10 Pro (8 GB RAM, 256 GB ROM)  ', 11),
(46, 'Samsung Galaxy M42', 'samsung galaxy m42.jpg', 21999, '21,999', 'Samsung Galaxy M42 (6GB RAM, 128GB Storage)', 3),
(47, 'Samsung Galaxy M12', 'samsung galaxy m12.jpeg', 10499, '10,499', 'Samsung Galaxy M12 (4GB RAM, 64GB Storage)', 3),
(48, 'Samsung Galaxy S20 FE 5G', 'samsung galaxy s20 fe 5g.jpg', 47999, '47,999', 'Samsung Galaxy S20 FE 5G (8GB RAM, 128GB Storage) ', 3),
(49, 'Samsung Galaxy M02', 'samsung galaxy m02.jpg', 7499, '7,499', 'Samsung Galaxy M02 (2GB RAM, 32GB Storage)', 3),
(50, 'Samsung Galaxy M02s', 'samsung galaxy m02s.jpg', 8999, '8,999', 'Samsung Galaxy M02s (3GB RAM, 32GB Storage)', 3),
(51, 'Oneplus Nord CE', 'oneplus nord ce.png', 24999, '24,999', 'OnePlus Nord CE 5G (8GB RAM, 128GB Storage)', 1),
(53, 'IQOO Z3', 'iqoo z3.png', 19990, '19,990', 'IQOO Z3(6GB Ram, 128GB storage)', 8),
(54, 'Micromax IN 1', 'micromax in 1.jpeg', 9999, '9,999', 'Micromax IN 1 (4 GB RAM , 64 GB ROM)', 16),
(55, 'Xiaomi Redmi 9 Power', 'xiaomi redmi 9 power.jpeg', 10499, '10,499', 'Xiaomi Redmi 9 Power (4GB RAM , 64GB ROM)', 13),
(56, 'Poco M2 Reloaded', 'poco m2 reloaded.jpeg', 9499, '9,499', 'POCO M2 Reloaded (4GB RAM , 64GB ROM)', 14),
(57, 'Mi 11 Lite', 'mi 11 lite.jpeg', 21999, '21,999', 'Mi 11 Lite (6 GB RAM, 128 GB)  ', 13),
(58, 'iQOO 7 Legend ', 'iqoo 7 legend .jpg', 39999, '39,999', 'iQOO 7 Legend 5G (Legendary Track Design, 8GB RAM, 128GB Storage) |', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `pro_id` int(11) NOT NULL,
  `pro_content` varchar(512) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`pro_id`, `pro_content`, `phone_id`) VALUES
(1, 'Excellent Display', 1),
(2, ' Clean UI and Software Without any Bloatware or Ads', 1),
(3, ' Good Build Quality', 1),
(4, ' 65watt Super Fast Charging ', 1),
(12, 'Great Display with HDR10 certification', 4),
(13, ' Good Battery Life with Fast Charging ', 4),
(14, ' Dedicated Micro SD card slot ', 4),
(15, ' Good  Gaming Performance ', 4),
(16, 'superior build quality gives premium in-hand feeling ', 5),
(17, ' Super Fast 65watt Dart Charging', 5),
(18, ' Display Looks Good ', 5),
(19, ' best in class Software and UI  ', 5),
(20, 'Good Stereo Speakers ', 5),
(21, 'Super AMOLED display with HDR10 support', 6),
(22, ' Decent Battery Backup with 30W fast charging ', 6),
(23, ' Good day to day Performance ', 6),
(24, ' Dedicated 3.5mm headphone jack and SD card Slot ', 6),
(25, ' In Display Finger Print Scanner', 6),
(26, 'Best Android Experience', 7),
(27, ' Long Battery Life', 7),
(28, ' Excellent Camera', 7),
(29, ' Good Stereo Speakers', 7),
(30, ' Has Headphone Jack', 7),
(31, 'Smooth 120hz  Display ', 8),
(32, ' 5g ready processor with Five  5g bands ', 8),
(33, ' Excellent Battery Backup with 30W fast Charging', 8),
(34, ' Decent Gaming Performance ', 8),
(35, '6000mah big battery with 18W fast charging ', 9),
(36, ' Mediatek helio G70 CPU ', 9),
(37, 'Dedicated Micro SD card Slot ', 9),
(48, 'Super AMOLED screen with 600nits of peak brightness ', 12),
(49, ' Sleek design and light weight ', 12),
(50, ' 50W superfast charging ', 12),
(51, ' Four 5g bands ', 12),
(52, ' power efficient  CPU resulting Very Good battery life ', 12),
(53, 'Immersive 120Hz SAMOLED display ', 13),
(54, ' Highly Detailed Photos and videos ', 13),
(55, ' Excellent performance and Great Battery life ', 13),
(56, ' Seven 5g bands ', 13),
(57, ' Lightweight and good in-hand feel', 13),
(63, 'Excellent performance', 14),
(64, 'Good Camera Performance', 14),
(65, ' Excellent AMOLED display', 14),
(66, ' Long lasting battery with excellent fast charging', 14),
(67, 'Elegant design', 14),
(68, 'Long-lasting battery', 16),
(69, ' clean software', 16),
(70, ' 120hz display', 16),
(71, ' Decent performance hardware', 16),
(72, ' Dedicated Google Assistant Key ', 16),
(98, 'Decent performance with Helio g85 ', 22),
(99, ' Excellent Battery Life with 600mAh Battery ', 22),
(100, ' Highly Customizable UI ', 22),
(101, 'great  Battery Life ', 23),
(102, ' Power efficient CPU with good performance ', 23),
(103, ' Strong Primary camera Sensor ', 23),
(104, ' Five 5g bands ', 23),
(105, 'Light Weight', 24),
(106, ' Great Portrait Photography', 24),
(107, ' Long Battery Life', 24),
(108, ' Good Stereo Speakers', 24),
(109, 'Good Build Quality', 25),
(110, ' Great Portrait Photography', 25),
(111, ' Long Battery Life', 25),
(112, ' Good Stereo Speakers', 25),
(113, 'Premium Build Quality', 26),
(114, ' Best AMOLED Display', 26),
(115, ' Good Battery Life', 26),
(116, ' Great Performance', 26),
(117, ' Outstanding Cameras', 26),
(118, ' Good Stereo Speakers', 26),
(119, 'Long-lasting battery', 27),
(120, ' clean software', 27),
(121, ' 120hz display', 27),
(122, ' Decent performance hardware', 27),
(123, ' Dedicated Google Assistant Key', 27),
(124, 'Amazing Camera Performance', 28),
(125, ' Great Display Quality', 28),
(126, ' IP67 Rating Water/Dust Resistance Rating', 28),
(127, ' Good Battery Life', 28),
(128, 'Offers a 3.5 mm jack and stereo speakers', 28),
(129, 'Bright and Great Display Quality', 29),
(130, 'IP67 dust/water resistant support', 29),
(131, 'Amazing Camera Performance', 29),
(132, 'Offers a 3.5 mm jack and stereo speakers', 29),
(133, 'Amoled dispaly', 30),
(134, ' Stereo speakers', 30),
(135, ' Fast charging', 30),
(136, ' Slim and light design', 30),
(137, ' Dedicated sd card slot', 30),
(138, ' IP53 dust and water resistance', 30),
(139, 'Amoled dispaly', 31),
(140, ' Stereo speakers', 31),
(141, ' Good battery life and fast charging', 31),
(142, ' Slim and light design', 31),
(143, 'Great camera performance', 32),
(144, ' Good battery life', 32),
(145, ' Amoled Display with 120 hz refresh rate', 32),
(146, ' pleasing design with glassback and IP53 rating', 32),
(147, ' Dedicated SD card slot', 32),
(148, 'Great camera performance', 33),
(149, ' Good battery life', 33),
(150, ' Amoled Display with 120 hz refresh rate', 33),
(151, ' Pleasing design with glassback ', 33),
(152, ' IP53 rating', 33),
(153, ' Dedicated SD card slot', 33),
(154, 'Excellent Display  with  great colors ', 34),
(155, ' 65W fast charging ', 34),
(156, ' Clean and Optimized UI ', 34),
(157, ' Loud Speakers ', 34),
(158, 'Excellent Photography under Natural Lighting', 35),
(159, ' Good 90hz AMOLED Display', 35),
(160, ' Includes 3.5mm Headphone Jack', 35),
(161, ' Long Lasting Battery Life', 35),
(162, 'Includes 3.5mm Headphone Jack', 36),
(163, ' Long Lasting Battery Life', 36),
(164, ' Daylight Photography is good', 36),
(165, ' Has ultra-wide camera which is uncommon in this price range', 36),
(166, ' Nice Textured Back', 36),
(167, 'Very powerful performance', 37),
(168, ' Good battery life', 37),
(169, ' 120 Hz refresh rate with 240 Hz touch sampling rate', 37),
(170, ' Corning gorilla glass 6 and IP53 rating', 37),
(171, ' 3.1 UFS fast storage', 37),
(172, 'Superb AMOLED screen with 144Hz refresh rate', 38),
(173, '\r\nGood stereo speaker performance with gaming-specific sound tweaks', 38),
(174, '\r\nGreat battery life with fast charging upto 65W', 38),
(175, '\r\nGreat UI almost close to stock android', 38),
(176, '\r\nROG-inspired gamer\'s design with great build quality', 38),
(177, '\r\nGreat performance with an amazing thermal management', 38),
(178, '\r\nSolid daylight photos as well as low-light images', 38),
(179, 'Powerful hardware', 39),
(180, '\r\nExcellent Gaming experience', 39),
(181, '\r\nGood quality display', 39),
(182, '\r\nExcellent battery mileage', 39),
(183, '', 39),
(184, 'Crisp display', 40),
(185, ' \r\nGood stereo speakers', 40),
(186, '\r\nExcellent performance', 40),
(187, '\r\nGood cameras', 40),
(188, '\r\nIP53 rating', 40),
(189, 'Camera with decent output', 41),
(190, '\r\nGood battery life', 41),
(191, '\r\nStereo speakers are quite nice', 41),
(192, '\r\nHeadphone jack', 41),
(193, 'Excellent design', 42),
(194, '\r\nGimbal camera is quite impressive', 42),
(195, '\r\nExcellent performance', 42),
(196, '\r\nGreat quality AMOLED screen with 120Hz', 42),
(197, 'Sleek and stylish design', 43),
(198, '\r\nAMOLED display with HDR support', 43),
(199, '\r\nOIS-enabled selfie camera', 43),
(200, '', 43),
(201, 'Big Display Size', 44),
(202, '\r\nBigger Battery', 44),
(203, '\r\n', 44),
(204, 'Big display', 45),
(205, '\r\nCapable hardware performance', 45),
(206, '\r\nDecent cameras', 45),
(207, '\r\nLong battery life', 45),
(208, '5G Support', 46),
(209, ' Includes 3.5mm Headphone Jack', 46),
(210, ' Long Battery Life', 46),
(211, ' Decent Processor ', 46),
(212, '90Hz Refresh Rate on a budget', 47),
(213, ' Includes 3.5mm Headphone Jack', 47),
(214, ' 6000mAH Long Battery Life', 47),
(215, ' Dedicated memory card Slot', 47),
(216, 'Smooth 120Hz Super AMOLED Display', 48),
(217, ' Long Lasting Battery Life', 48),
(218, ' IP68 Rating for water and dust protection', 48),
(219, ' Top-tier Performance', 48),
(220, ' Supports 5G with 9 Bands', 48),
(221, 'Includes 3.5mm Headphone Jack', 49),
(222, ' 5000mAH Long Battery Life', 49),
(223, ' Dedicated Memory Card Slot', 49),
(224, ' Good Photography in Daylight ', 49),
(225, 'Includes 3.5mm Headphone Jack', 50),
(226, ' 5000mAH Long Battery Life', 50),
(227, ' Dedicated Memory Card Slot', 50),
(228, ' Good Photography in Daylight ', 50),
(229, 'Clean Stock Android like UI ', 51),
(230, ' Healthy Battery Life ', 51),
(231, ' Good Looking Display ', 51),
(232, ' Headphone Jack Comes Back', 51),
(236, 'Excellent performance with Snapdragon 768G ', 53),
(237, ' Great  Battery life and 55W superfast charging ', 53),
(238, ' good cameras and video stabilization ', 53),
(239, 'Full HD+ display with punch-hole cutout', 54),
(240, ' Long battery life', 54),
(241, ' Dedicated SD card slot', 54),
(242, ' Decent image and video quality in daylight', 54),
(243, ' Clean Stock Android experience', 54),
(244, 'Corning Gorilla Glass 3 protection', 55),
(245, ' Full HD+ display', 55),
(246, ' Massive 6', 55),
(247, '000 mAh battery', 55),
(248, ' Dedicated SD Card Slot', 55),
(249, ' Stereo speaker setup', 55),
(250, ' Decent camera experience ', 55),
(251, '\r\nHuge 5000 mAh battery', 56),
(252, ' \r\nGorilla Glass 3 protection', 56),
(253, '\r\nIPS LCD Full HD display', 56),
(254, '\r\nDedicated micro SD card slot', 56),
(255, 'Excellent display with 10 bit colour gamut', 57),
(256, '\r\nCorning Gorilla Glass 5 protection', 57),
(257, '\r\nCompact and Premium design', 57),
(258, '\r\nDecent rear camera', 57),
(260, 'Stunning design', 58),
(261, 'Excellent performer', 58),
(262, 'Capable cameras', 58),
(263, '66 W wired charging', 58);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_content` mediumtext NOT NULL,
  `youtube_link` varchar(1024) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `review_content`, `youtube_link`, `phone_id`) VALUES
(1, 'Oneplus 9 pro comes with everything one could ask for , Good Smartphone with Excellent screen quality but average battery life and heating issues here and there .The camera Performance is just  Above average but certainly not as good as they hyped it . With a 64,999inr price tag, this smartphone doesn\'t stand in this segment, the samsungs and iphones in this price range have certainly better camera performances.  ', 'https://www.youtube.com/embed/zEXkX8Q-4jQ', 1),
(4, 'The Qualcomm Snapdragon 720g does its job but it does feel outdated, apart from 33W type-C fast charging ,4500mah battery lasts for almost a day . The camera is just average and struggles in low light ,daylight photos are little bit over exposed and  the portrait mode tends to cut  edges of the subject .Realme 8 pro does not do everything wrong apart from pricing , the 17,999 price tag just  makes it hard to recommend , while competitors like xiaomi and poco have cheaper phones with better CPUs and excellent cameras. ', 'https://www.youtube.com/embed/CiHK_wmlyCQ&t=11s', 4),
(5, ' Very few Phones  in this price range feel Premium in Hand, One of them is the OnePlus 9r, Excellent in Looks ,OnePlus has worked pretty hard for the design and in-hand feel. Snapdragon 870 works pretty well , providing good day to day performance and excellent gaming with a decent battery, not to forget the 65W superfast charging which charges the phone within 40 mins.  However, Competitors like  Xiaomi and IQOO provide Snapdragon 888 and better  cameras in this segment , The Oneplus 9r Struggles in low light photography and selfies aren\'t too good, Although, Oxygen OS protects oneplus and Shines in the Software department providing much Cleaner UI and Stock Android Experience. Overall , It is not a Bad phone but there are Some Good Competitors in the market which are not a bad choice either. ', 'https://www.youtube.com/embed/-R1tSEt-8_I', 5),
(6, '\r\nOverall , A great All round Value For Money SmartPhone with almost Everything One Could Ask For .Although a bit old, Mediatek G95 seems a good choice while qualcomm is busy making  expensive 5g chips.The  Camera Does  A decent job in natural light , however, While using portrait mode edge detection misses out sometimes, starry mode is a good to have feature.Competitors like Xiaomi provide better cameras at a cheaper price,If you are looking for a phone under 15k , Realme 8 is not a bad phone to consider.\r\n', 'https://www.youtube.com/embed/DPEVeWSSdUs&t=99s', 6),
(7, 'Google Pixel 4a is a mid-range phone running its own race. The race of providing the best Software Experience. Without a doubt it wins this race. The Software doesn’t just provide a great android experience but also helps in capturing stunning photos. Pixel 4a has a great battery life which for most users will easily last for more than a day. The stereo speakers are excellent and leave no room for criticism. Pixel 4a has a compact design which makes it fit great in hand and gives it a fairly good look. Google is going all in with its 6GB RAM | 128GB ROM variant as it is the only variant available for sale. It also comes with a 3.5mm Headphone Jack, those are rare to find nowadays. Customers can expect regular Software Updates for at least 3 years. The phone does not have Wireless Charging and Water Resistance, such compromises have been made to keep the phone’s price low. There is no option for expandable storage. Also, Competitors are providing better hardware in this price range. So overall Pixel 4a is a perfect pick for someone interested in the Purest Android experience and getting those crispy photos.', 'https://www.youtube.com/embed/k4DypieamcE', 7),
(8, 'Mediatek\'s Dimensity 800U is a great power efficient processor and Realme does a fantastic job using it in the  Narzo 30 pro, with excellent battery life , this phone will easily last for a day even with heavy use and also get charged up in 65mins as claimed by realme.120hz screen feels very smooth ,Although Not AMOLED , it\'s a good quality LCD. The cameras do a decent job, but nothing exceptional, Xiaomis do have better cameras at this price point. However, With Five 5g bands, this phone is future ready, If you are the one who uses their phone for 2 to 3 years , At 15,99 this is undoubtedly the perfect Phone4u.', 'https://www.youtube.com/embed/ru5bked6uTk', 8),
(9, 'Decent Performance by mediatek’s helio G70 for day to day Work , Some Frame Drops noticed while gaming on medium settings , Average cameras , the Micromax in 1 has better cameras, the good thing about the Realme C25 is the huge 6000mah battery which can last easily for 1.5 to 2 days with the 720p HD+ screen  consuming very low power , Speakers on this phone are not pretty good . Realme UI 2.0 provides a lots of customizations in the UI but has some Bloatware preinstalled in the device which send unwanted notifications . Overall , If Battery life is your Priority over Everything else , then Realme C25 is the phone you should go for. Else , There Are better options Available. ', 'https://www.youtube.com/embed/N_E___0Y8fU', 9),
(12, 'The First Thing you Notice About this device is the 6.43 inches Super AMOLED FHD+ display which is from Samsung and  is a pretty good display ,however it is only 60Hz. Cameras on this smartphone are sub par and  do nothing exceptional , portrait mode photos are a bit soft and sometimes the photos are over exposed. Video Quality from the front Camera is just okay. However, This Phone has Four 5g Bands and is future ready with the dimensity 800U which provides excellent battery life even with the 4130Mah battery and also  has 50W Superfast Charging.\r\nThere is some bloatware preinstalled on the device , some of them can be deleted , If you are ready to sacrifice a good  camera and 5g is a priority , you can consider buying this phone. \r\n', 'https://www.youtube.com/embed/Y9f_mcIinDg', 12),
(13, 'Realme X7 max is the first Smartphone with mediatek’s new dimensity 1200 5g chipset, which gives excellent performance and great battery life with 50W superfast charging. with seven 5g bands, this phone is future ready in terms of connectivity. The 64MP primary censor captures high details, however, Colors are not natural and sometimes the white balance is not quite good, in low light the camera performs well. Running Android 11 out of the box supported by Realme UI 2.0 is extremely customizable and user friendly but has some bloatware preinstalled in the UI. Overall , priced at 26,999 this phone provides excellent value for money and  is a great choice if you need a good performing phone and want to use It 2-3 years.  ', 'https://www.youtube.com/embed/WR92Ew1TIJY', 13),
(14, 'Performance is the strongest suit of the iQOO 7. In India, it’s powered by Qualcomm Snapdragon 870 octa-core chipset that’s almost similar to the Snapdragon 865 from last year. Further adding to its gaming credentials are up to 12GB LPDDR4X RAM and up to 256GB of the latest UFS 3.1 storage. That’s indeed a very powerful configuration and the same is reflected in practical usage. The gaming experience is simply fabulous. It also comes with added gaming features like 4d game vibration, Game frame interpolation, and Display enhancement, the last two of which are powered by a separate display chip which are good to have. The thing to know is that even though it has all these gaming features, it lacks a headphone jack. Talking about the display, iQOO has done a fabulous job here too. With a 6.62 inches full HD+ (1080 x 2400 px) AMOLED panel that supports a 120Hz refresh rate and a 300Hz touch sampling rate, the experience is really wonderful. With a glass sandwich design, it looks and feels premium in hand. When it comes to the camera department, iQOO has really put thought into the cameras of their smartphone. The camera performance from all the three cameras is great in daylight as well as well-lit indoor lighting. When it comes to low- light and night photography, the performance is not perfect but is the best among other phones in the price segment. It also has a 4400 mAH battery which gives a 6hr screen of time and can last an entire day easily. Plus it also has a 66w fast charger which can charge the phone fully  in 30 minutes which is insane. It also features stereo speakers which provide a decent experience.  The software experience on the other hand is not so great. It is based on the vivo’s funtouch Os and comes with a lot of bloatware pre-installed. Even though most of it can be removed but you are stuck with vivo’s own apps and software experience could have been more cleaner.  One more important thing to note is that, it does not come with any sort of dust or water resistance which is found on other smartphones in this segment. Although it has 5g support, it only supports a single 5g band which is not at all  great.  The brand promises 3yrs of software updates but that is something only time can tell. To summarize, the iQOO 7 is the best phone you can get under the 35k price segment if you don’t care about water or dust resistance and can deal with the lack of a headphone jack.', 'https://www.youtube.com/embed/8nYpq9oZtdY', 14),
(16, 'In many aspects, the Moto G40 Fusion is a solid phone. \r\nWhether its the clean stock android software or the smooth performance with the 732g chipset.\r\nAlso the feature which will definitely attract many prospective buyers is the massive 6.8-inch with 120Hz LCD panel.\r\nAlthough,The camera quality is lacking and the phone’s substantial weight makes it a not-so-enticing option.\r\nFinally, there is a massive 6,000mAh battery that contributes to the phone’s bulky design.\r\nOverall, the Moto G40 Fusion does a satisfactory job at this price range.\r\nBuy the G40 Fusion for its capable display, clean software and decent performance but for better optics, the Redmi Note 10S or Realme 8 deserve a closer look.', 'https://www.youtube.com/embed/QAg2p2Pi2AU&t=2s', 16),
(22, 'The Realme C25s is Basically the C25 only with the new Helio G85 which doesn’t make much of a difference. Decent Performance by mediatek’s helio G85 for day to day Work , Some Frame Drops noticed while gaming on medium settings , Average cameras , the Micromax in 1 has better cameras, the hood thing about the Realme C25s is the huge 6000mah battery which can last easily for 1.5 to 2 days with the 720p HD+ screen  consuming very low power , Speakers on this phone are not pretty good . Realme UI 2.0 provides a lot of customizations in the UI but has some Bloatware preinstalled in the device which send unwanted notifications. Overall, If Battery life if your Priority over Everything else, then Realme C25s is the phone you should go for. Else , There Are better options Available. ', 'https://www.youtube.com/embed/N_E___0Y8fU', 22),
(23, 'With Five 5g bands, The Realme 8 5g Compromises a lot of features for the 5g connectivity, first of all, the display, though 90Hz it is still a LCD screen which feels a bit cheap at this price point. Dimensity 700 provides good overall performance and is very power efficient which results in great battery life with the 5000mAH battery, however the other compromise is fast charging, we only get 18W charger out of the box as compared to 30W even 50W chargers from other phones. The Primary sensor takes good photos but we don’t have support for 4k videos and realme doesn’t even provide a wide angle camera with it. all in all if you want a good performing phone with 5g and a decent battery life, Realme 8 5g is worth considering, however, hard to recommend over xiaomi phones in this price range. ', 'https://www.youtube.com/embed/L4x_eLpqP0M', 23),
(24, 'Samsung Galaxy S21 has made a lot of compromises over its previous model like the plastic body, a 1080p display and these changes are the ones which for most will go unnoticed. The S21 comes with the Samsung One UI which has some bloatware. This phone has great cameras and can take amazing portraits. The phone has great specifications, but the price is pretty huge too. Competitors like The Oneplus 9 Pro provides better stuff for a lesser price. So overall Samsung Galaxy S21 is a great phone for someone who is interested in buying one of the best Samsung out there.\r\n', 'https://www.youtube.com/embed/dhAmMXCBIcg ', 24),
(25, 'Samsung Galaxy S21+ is very similar to Galaxy S21. Both the phones share almost everything in common from great cameras, software, and specifications. But, S21+ has a bigger Screen and a better build quality with aluminum finish. S21+ too doesn’t provide a charger in the box. Also comes with the Samsung One UI which has some bloatware. The portrait photography on S21+ is marvelous. Samsung guarantees 3 major Android OS updates for S21+ and four years of security updates. Anyone interested in a bigger screen and a better build quality than S21 should go for the S21+ which is a few thousands more.', 'https://www.youtube.com/embed/7gRuKZzC0dc', 25),
(26, 'Samsung Galaxy S21 Ultra simply does everything right. S21 Ultra comes with great performance, great battery life, great all-round cameras and also the best display out in the market. Someone just can’t go wrong with the S21 Ultra. But all of this comes at a price tag, a big-big price tag. People in India will have to give a lot of premium for this premium smartphone and still it has no bundled charger. The maximum charging speed for the device is at 25W which for such a premium model seems really low. The device is also a bit bulky, so those who love light phones might need to think again. Although Samsung’s One UI has got better and better over time, still the bloatware might annoy some. People with specific needs from the phone can buy a smartphone for those criteria at almost half. Samsung’s S21 Ultra is one of the most premium device only for the ones who want to get the best of the best and price is not an issue.', 'https://www.youtube.com/embed/u1ufEMBlgbw', 26),
(27, 'With Moto g60 comes with the smooth 120Hz experience, the 732G which is a capable chipset, delightful software experience and the battery life is also seriously good. 	\r\nHowever the camera setup, while exciting on paper, doesn’t really translate to anything mind-blowing in real life.\r\nThe sheer bulk of this phone, at 9.8mm in thickness and 225g in weight, makes it hard to use one-handed. \r\nOverall, there’s nothing really *wrong* with the Moto G60. That being said, there are quite a few things that could have been better.\r\nInclusion of stereo speakers being one, plus the fact that a side-mounted fingerprint scanner would have been better. \r\nThe screen, while perfectly usable, doesn’t hold a candle to the 120Hz AMOLED delights that we find on the Redmi and Realme phones.', 'https://www.youtube.com/embed/PfN8dwcmuSs', 27),
(28, 'Samsung Galaxy A52 is Mid Range Smartphone where we pay a bit extra for the Samsung Brand. Galaxy A52 provides some amazing cameras and to view those gorgeous pics we get a stunning display. Battery Life for Galaxy A52 is fairly good and will easily last for more than a day for most. The phone does provide a good Gaming Performance, but its not the best for it. Many Chinese Brands are providing better specs for the same price or even less. Samsung provides 3 Years of Android Update and 4 Years of Security Updates for Galaxy A52. We also get IP67 rating which makes the phone water resistant and this is uncommon in this price bracket. Samsung Galaxy A52 is for the people looking for a great display and camera in their next phone.', 'https://www.youtube.com/embed/K3C13blNf0I', 28),
(29, 'Samsung Galaxy A72 is currently the top-end phone in the A series from Samsung. Galaxy A72 has IP67 dust/water resistant. Battery Life for Galaxy A72 is good enough to last more than a day at full charge. The cameras for A72 are great and also the display. Smartphones in this price range are providing better specs and performance. Samsung provides 3 Years of Android Update and 4 Years of Security Updates for Galaxy A72. Samsung Galaxy A72 is great if you want a smartphone with great display and good cameras. But, do note that you are providing a premium for this device. Samsung A52 provides almost the same features as A72 for a cheaper price with just a bit smaller screen.', 'https://www.youtube.com/embed/Gir-FHDMXtM', 29),
(30, 'Redmi Note 10 is a very competent phone and offers good value for money in 2021. This smartphone presents a \'handy\' and fresh new design. With Features like the AMOLED display, decent camera performance, stereo speakers and good battery at this price range makes this phone very difficult to ignore.\r\nUsers also get IP53 dust and water resistance on the Redmi Note 10 which isn\'t very common in this price range. Although this phone comes with MIUI which isnt very promising but overall it is a good featured packed budget smartphone.', 'https://www.youtube.com/embed/qE3t97VBFys', 30),
(31, 'Redmi Note 10S offers a slim and light new design, solid performance for everyday tasks and good battery life with 33W fast charging. Little touches such as the AMOLED display, stereo speakers and the IP53 rating are what set the Redmi Note 10S makes this phone noticeable.This phone also has NFC and IR connectivity.Optimization of this phone could be better as it has considerable amount of bugs with MIUI 12.5.Hopefuly future updates will solve this problem. The cheaper Redmi Note 10 is better value for money overall and the Redmi Note 10 Pro offers better features and performance for slightly more money.It\'s difficult to tell if there could be any particular reason to consider this model over the other two. All these phones come with MIUI which contains bloatware and ads which should be kept in mind. ', 'https://www.youtube.com/embed/WCKC7AjnKdU', 31),
(32, 'The Redmi Note 10 Pro, at a starting price of Rs 15,999, is currently the budget phone that has it all. \r\nThe user gets a pretty good-looking phone with a good and smooth display experience, decent performance, great camera setup and a battery life that will help you through both easy and rough times. This phone is simply great at every aspect but one, the software. Since MIUI comes with bloatware and annoying ads, it isn\'t people\'s favourite. If software isn\'t a major concern then the Redmi Note 10 Pro could definitely be a solid choice.\r\n', 'https://www.youtube.com/embed/AGdGTcPwhmo', 32),
(33, 'The Redmi Note 10 Pro Max is identical to the Redmi Note 10 Pro in every single aspect but one, the camera. The top-end Redmi Note 10 Pro Max introduces a 108-megapixel camera where as Redmi Note 10 Pro comes with 64-megapixel camera. This camera upgrade costs around three thousand rupees and its not entirely convincing that this will be worth the Rs. 3,000 premium over the Redmi Note 10 Pro. Otherwise, its a pretty good-looking phone with a good and smooth display experience, decent performance, great camera setup and a battery life that will help you through both easy and rough times. Ignoring the MIUI software which is accompanied by bloatware and annoying ads, this phone is a killer.\r\n', 'https://www.youtube.com/embed/YZy3RWF_hvE', 33),
(34, 'The “Fluid AMOLED“ display, as Oneplus calls it , is pretty good with the 120Hz refresh rate and gets quite bright. The Hassleblad Cameras are just average and seem lacking while taking selfies and shooting videos with both front and the back cameras, in fact, the Vivo X60 pro crushes the Oneplus 9 in terms of cameras. However, the snapdragon 888 does an excellent job in terms of raw performance although I can heat up the plastic panel on the back quite a bit while gaming and recording videos for a long time. The 65W fast charging seems to be a blessing when need a pop up for the 4500mAH battery which provides a decent battery backup. At the price point of 49,999, the Oneplus 9 is not a bad buy considering the display and raw performance, However, an official IP rating seems to be missing.', 'https://www.youtube.com/embed/RY63Nw0w33w', 34),
(35, 'Samsung Galaxy A32 provides very decent specifications for the pricing. The performance will do fine for normal daily usage, but for more intensive tasks will not perform well. The cameras shine in photography under natural lighting. Low-light photography and shooting videos is its weak point. A32 comes with a long lasting battery life but charging it is very slow as it supports only 15W charging speed. Competitors like Xiaomi Poco X3 and Redmi Note 10 Pro are better phones in the same price bracket. Samsung provides 3 Years of Android Update and 4 Years of Security Updates for Galaxy A32. One should prefer Galaxy A32 over others if they want to buy a phone from the Samsung brand and are interested in its UI.', 'https://www.youtube.com/embed/JUoWMWdBcjs', 35),
(36, 'Samsung Galaxy A12 comes with a long lasting battery and good camera setup for the pricing. Although the phone takes good pics under day light conditions, night photography is not good at all. Videos taken on A12 are also not gonna look that good. The build quality is pretty good for the A12. The display on the other hand is worse than expected, it comes with a 720p screen and has 270 ppi pixel density which is not expected even from low-end smartphones like the A12. Competing Smartphones like Realme 8 and Redmi Note 10 provide much much better specs and performance in this price bracket. Samsung provides 3 Years of Android Update and 4 Years of Security Updates for Galaxy A12. Someone who wants to buy a smartphone from the Samsung brand should prefer A12 over the others, else there is no decision changing strong point for the phone.', 'https://youtube.com/embed/aE1QVP5fHcE', 36),
(37, 'Poco is back with yet another flagship performer at entry level buck. The snapdragon 860 Soc with  Adreno 640 GPU brought by the Poco X3 Pro is simply the deal breaker. Moreover, this piece offers good battery life with 33W fast charging, stereo speakers and a good display. Poco has also strengthened this phone\'s durability by adding Corning Gorilla 6 and IP53 rating. However, this phone has it\'s downsides too. Firstly the camera performance is not very promising. Secondly, this phone is very bulky which makes it very hard to use Single-handedly. Also, everybody\'s favourite Amoled display is missing in this phone\'s spec sheet which is offered by it\'s competitors. Poco continues using the MIUI skin on its smartphones, something we still see on Poco smartphones. Nonetheless, Poco did tweak the User Interface a little bit by eliminating ads and adding the Poco launcher instead of the default MIUI launcher. This phone serves good for gamers and power users. If camera is a priority then Redmi and Realme phones in this price range deserve a look.', 'https://www.youtube.com/embed/na9iUxvpoxY', 37),
(38, 'At a starting price of Rs 49,999, the ROG Phone 5 is a pretty solid smartphone. It offers almost everything a gaming smartphone should offer without sacrificing much on other aspects like designs and features. At the same time, it misses out on something which also matters to people who are willing to pay this hefty price.Like the ROG Phone 5 features a decent set of rear camera that offers acceptable outputs in both photos and videos. But, we certainly feel that for a smartphone of this price, there should have been more.Keeping everything aside for a moment, the ROG Phone 5 offers everything any user might want in their smartphone whether gamer or not gamer.It has the right design, performance and display which is truly amazing. It is also among the most customisable smartphones in the market.So who should get this smartphone? Anyone who\'s looking for a smartphone that offers powerful performance, good display, decent camera and good battery life can definitely go for Asus ROG Phone 5.', 'https://youtube.com/embed/a-1yAKxcoqo', 38),
(39, 'Rog Phone 3:\r\nThe ROG Phone 3 is an attractive gaming-focused smartphone. The combination of sci-fi looks, powerful performance, 144Hz screen, the speakers are loud and spatial, and long battery life makes the ROG Phone 3 a powerhouse. With a starting price of Rs 49,999. you get the most powerful Android smartphone on the market. And gamers will be happy to use the side-mounted charging port. The performance, cameras, and UI are excellent. \r\nOverall, the Asus ROG Phone 3 is for someone who doesn\'t mind a massive sized device and loves long mobile gaming sessions.', 'https://youtube.com/embed/Hs99lGQiFhk', 39),
(40, 'The Xiaomi Mi 11X is quite a performer at a starting price of Rs 29,999. It gives a tough competition to the direct rivals with a noteworthy performance besides the much lower price. But, we can\'t ignore some of the misses on part of the phone. You won\'t get the best camera performance, the fast charging can be better, it lacks on the display brightness part, and if this bothers, the device is a dust magnet.\r\n\r\nThat said, the Mi 11X still manages to take forward the concept of a flagship killer. This is quite a reason for you to add the phone to your cart if that\'s the budget you got.', 'https://youtube.com/embed/awgbTPRDH7k', 40),
(41, 'The Mi 10 is a very strong contender to set the bar for the mid range segment in 2021. It brings a number of \'expensive features to a phone that\'s priced lower than most of its competitors. Users get a 108MP primary camera which has good performance and a 120Hz IPS LCD display with very impressive colours. The phone itself is a stunning device thanks to its elegant design. The side-mounted fingerprint sensor works really well and the IP53 rating lends to the notion of curability when it comes to the Mi 101. You also gel a headphone jack on the phone, which is really nice. What doesn\'t work for the VI 101, however, is the display, which has a fairly low peak brightness, and suffers from reflection issues when using outdoors or in places with strong ambient lighting.', 'https://youtube.com/embed/evdJwytFDrA', 41),
(42, 'Vivo X60 Pro is a premium and enjoyable phone. It has got powerful performance hardware, a good quality display, a delightful design and a capable camera system. The only downside is that the software needs some refinements.The main strength of the Vivo X60 Pro is its gimbal stabilisation system which helps it deliver better video performance than the competition. So if you are looking to shoot a lot of video with your smartphone, the Vivo X60 Pro will fit the bill just fine.', 'https://youtube.com/embed/64N3ugqo6iM', 42),
(43, 'The vivo V21 5G manages to build upon and actually expand on the formula set forth by its V20 predecessor without giving up on the core design and feature goals. It remains a very slick and classically stylish device, with a clear focus on selfie photography and video capture.The 44MP autofocus selfie is great and pretty unmatched in this price segment. Now with the addition of OIS, it delivers a great video experience and a solid photo one.\r\nThe competition vivo is facing in the midranger space is as fierce as ever, though, and the V21 5G does skip on at least a few noteworthy features that others deliver on at a similar price. Things like an official IP rating, stereo speakers and a 3.5mm jack, to name a few. Plus, even in its relatively mature state, Funtouch OS may not appeal to everyone.', 'https://youtube.com/embed/rhF75i0X3uQ', 43),
(44, 'Infinix Note 10 is a decent phone at the price of 10,999.\r\nIt offers a good battery which will give about 1.5 days of battery life, in the end, it also depends on how you use the phone daily. Also, it has an HD+ LCD display which won’t use too much battery. Sad to say, Infinix Hot 10 doesn’t have the best camera.It can take good images but it won’t be sharp and well-detailed.If you want an only a bigger display for media consumption and you don’t care about anything else then you can take look at Infinix note 10 but if you want value for money device then Infinix note 10 not worth buying ', 'https://youtube.com/embed/x5a8D4PqtmE', 44),
(45, 'Infinix Note 10 Pro gives you a decent package for the price. It sports a modern and durable design, with a large display at 1080p quality. The built-in chipset offers decent performance with 8GB RAM and you get ample storage onboard which is further expandable. The quad rear cameras deliver in most conditions, and the built-in battery offers long back and 33W fast charging support. But lack of high refresh rate for the screen is a big miss. Worth buying it but you have better options with 5G support in the market right now.', 'https://youtube.com/embed/UD8DVwvbP4E', 45),
(46, 'Samsung Galaxy M42 comes with a good chipset capable of running games at default settings. It comes with a decent camera setup and will perform good under day light conditions. The battery life is good but just like most Samsung phones charging it is extremely slow. The display has always been Samsung\'s plus point but with M42 it seems to be a thing of the past. M42 is comes with a 720p display with 60herts of refresh rate for such a huge price. Feels like I am writing this for the millionth time, but here we go again - Competitors like Xiaomi Poco X3 and Redmi Note 10 Pro are better phones in the same price bracket. This phone is only worth it if you want a Samsung phone which supports 5G.', 'https://youtube.com/embed/5kmM-689gec', 46),
(47, 'Samsung Galaxy M12 is a low-end smartphone by Samsung with its own highs and lows. The phone provides some highly appreciated features like a 90Hz display in this price bracket. The battery is humongous too along with a dedicated memory card slot and a headphone jack. But the phone only has a 720p Display, while the competitors are providing a 1080p display in this price range. The performance of the phone is decent along with the cameras. The charging speed is only 15W, but that seems like a standard for Samsung phones - Providing Big Battery and Slow Charging Speed. Competing phones in this same price bracket are providing better display and performance. But if you want to go for a Samsung Smartphone and are on a low budget then you can look into the Samsung Galaxy M12.', 'https://youtube.com/embed/BM1BwCy-_P0', 47),
(48, 'Samsung Galaxy S20 FE 5G is an excellent smartphone for the price. It comes with the a great chipset and specifications. So, gaming and other intensive tasks should not be a problem at all. The display is pretty good too, coming in with 120Hz and the Samsung\'s special Super AMOLED. A 1440p display would have been greatly appreciated over the current 1080p. The phone also shines in the camera department. Samsung will provide 3 years of Software Updates and 4 years of security updates with the S20 FE 5G. The phone comes with a plastic back which could have been better in this premium smartphone. The battery is a long lasting one, for a casual user it can even last upto 2 days. But like all the Samsung phones, S20 FE 5G also comes with a slow charger supporting 15W and the phone supports maximum charging speed only upto 25W. While other smartphones are providing charging speeds around 50W. Samsung is still stuck with in its slow charging race. That might be the only big negative for the phone as it shines in almost all the departments. If charging speed and build quality is not a concern then The Samsung Galaxy S20 FE 5G is an all rounder made for you. ', 'https://youtube.com/embed/v79_onk-esI', 48),
(49, 'Samsung Galaxy M02 is a very low-end phone where its hard to complain about anything. The phone provides decent performance in all criteria\'s. But, on basis of the price it can be said that it does good. The phone comes with a average processor and we can play games at very low settings on it. There should not be high expectations from its performance. The cameras are capable of taking good pictures for the price. The phone comes with 5000mAH long battery life but there is no Fast Charging available. So The Samsung Galaxy M02 is very average phone and won\'t be able to give extraordinary performance, but its expected for this price. This is a good phone for someone with just the need of a smartphone for normal usage.', 'https://youtube.com/embed/ql-1V7wCBRM', 49),
(50, 'Samsung Galaxy M02s is a low-end device above the likes of M02. It provides average specs and the performance on the device is decent, which is expected at this price. The chipset is capable of running average tasks given to it, this phone is not made for intensive tasks. The cameras will take good pics during the day-light but will struggle in low-light conditions. The videography is also pretty average for the price. The battery is a huge one but the charging speed is low and will take around 2 hours to charge to 100%. The phone comes with a big display which is of low quality. The pixel density of this 720p display is very low. This phone should be your preference if you have a very normal usage and don\'t need a lot of processing power. If you want a more powerful smartphone and don\'t care about the brand or UI then phones like redmi 9 can be considered by you.', 'https://youtube.com/embed/HimaZLKiEEU', 50),
(51, 'Oneplus Nord CE 5g feel alright just before you hear its Retail Price, For 24,999 it offers a cheap plastic back with no glass protection, No Stereo Speakers, No Video Stabilization. Although it offers decent performance with snapdragon 750G and good Battery backup, the Competition seems to offer much more in the given segment. 5g in the title seems more like a gimmick with only One 5g band in India. Cameras on this device aren’t too good when we compare to the competition. Overall, Oxygen OS keeps oneplus alive in the market with the clean UI  although update situation is unknown.', 'https://www.youtube.com/embed/a0HAgF8EY7A', 51),
(53, 'IQOO first phone in this segment comes with Snapdragon 768G which is also the first in India and checks every box there is in terms of performance, day to day tasks and medium to heavy gaming is handled flawlessly by this chipset. Cameras on this device are good given the 19,990 rupees price point, however, the colours are not as punchy or boosted as on the Redmi note 10 Pro, IQOO keeps it close to natural. Videos are quite stable and are supported up to 4k 60fps.The Camera, However, struggles during night time and photos aren’t too good. Battery life is good with 55W superfast charging. Other than that, good Stereo speakers, nice glass back and an AMOLED display are few important things that IQOO Z3 misses out.  Talking about the UI, Fun touch OS is now close to stock android but has enormous Bloatware installed that send unwanted notifications to the user. As in the name itself, this phone does support 5g but has only two 5g bands Overall, this is not a bad phone if you are a gamer who takes some photos and videos here and there.', 'https://www.youtube.com/embed/-qLF4URnKPY', 53),
(54, 'The Micromax In 1 offers some impressive features and specs such as a Full HD+ display with Widevine L1 certification, an eye-catching design, a 5,000mAh battery, and a powerful MediaTek Helio G80 processor. This phone\'s camera performs admirable in broad daylight. Moreover it provides the clean Stock Android experience with no ads and bloatware which is rare to find in budget phones these days. However, it does falter in some areas such as low light photography, lack of stereo speakers, and delivers slow charging speed. This phone is definitely a great value for money. As it stands, it is a decent affordable phone that faces stiff competition from the likes of the Realme Narzo 30A, Poco M3, and a few others.', '', 54),
(55, 'Redmi 9 power is a great value for money undoubtedly.The budget device provides a massive 6000 mAh battery and stereo speakers which is the selling point. A few other intriguing features include a good camera setup, a dazzling display with Widevine L1 certification and gorilla glass protection which is very good at this price point. Now coming to the cons, it takes up alot of time to charge the huge battery. Competitors in this price range have better chipsets. Also, MIUI which sits atop Android 10 is still as aggressive as ever when it comes to ads and bloatware, so keep that in mind when making your purchase decision. ', 'https://www.youtube.com/embed/86NLn7M4jQk', 55),
(56, 'The Poco M2 Reloaded is one of the most-feature packed smartphones currently available in the sub Rs. 10,000 segment. The FHD+ LCD display makes it suitable for multimedia, while the 13MP quad-lens setup with dedicated wide-angle, macro and depth lens enhances the imaging experience. The device uses a gaming-oriented chipset which performs well with other tasks at hand as well. Its big battery unit is sufficient to deliver a backup of an entire day. The camera experience isn\'t extra ordinary but considering the price range it is really good. Like other Poco phones this one too comes with MIUI which has annoying ads and bloatware. Overall this phone is a great value for money and a considerable option for all users.\r\n', 'https://www.youtube.com/embed/zTDO6TPXVJw', 56),
(57, 'The Mi 11 Lite, surprisingly, is among the few smartphones in its price range that sport a glass body.What will make the in-hand feel better is the device\'s 157-gram weight. The Mi 11 Lite is unusually slim at 6.81mm.  With that combo, the Mi 11 Lite is a treat for those who crave slim and lightweight phones.For a phone this slim, it delivers a solid battery life.Things are quite good at the front as well. The Mi 11 Lite sports a 10-bit AMOLED display which  is sharp and offers vibrant colours. The screen is also HDR10-certified to offer excellent contrast and brightness levels.When it comes to gaming, Snapdragon 732G can handle most of the popular games out there.If you are into casual gaming, this one gets the job done without breaking a sweat. Talking about the cameras, The main camera shoots great quality photos with ample detail.But the photos taken by  ultrawide sensor lacks details and is generally soft around the edges. The Mi 11 Lite belongs to the rare breed of devices suitable to an audience that wants lightweight phones without compromising on the specs.\r\n', 'https://www.youtube.com/embed/MYQ_R1cvU2s', 57),
(58, 'The iQOO 7 and the iQOO 7 Legend draw a lot of parallels to one another, and both the devices come toting a stunning all-glass design with an AG matte finish. That said, the iQOO 7 Legend sets itself apart from the herd of other glass-back phones as the smartphone features BMW’s iconic racing stripes towards the back. Coupled with the blue accents on the power button, the company has managed to add a touch of panache to the iQOO 7 Legend’s otherwise understated appearance.Coming to the smartphone’s display, the iQOO 7 Legend shares the same 6.62-inch Super AMOLED panel as seen on the iQOO 7.What’s more, much like its watered-down sibling, the iQOO 7 Legend’s screen also refreshes at 120Hz, which sets the scene for buttery smooth animations and transitions. Oh, and the panel gets satisfactorily bright too at 800nits and I for one didn’t face any difficulties using the screen under the sun. Unfortunately, despite the company’s claims, the iQOO 7 Legend doesn’t relay HDR media via OTT services as of yet. But, you do get WideVine L1 certification with the phone so streaming content in HD shouldn’t pose any problems. Camera-wise, the iQOO 7 Legend ships with Sony’s IMX 589 sensor which has been paired with a 13MP telephoto shooter with 2x optical zoom capabilities and a 13MP wide-angle sensor. It’s noteworthy that the company has retrofitted the wide-angle shooter with macro capabilities too. For selfies, the device gets a 16MP shooter up front. The main sensor keeps exposure in check and you’ll seldom find instances of highlight clipping in the shots. That said, the device doesn’t bring out satisfactory details from the shadows or the darker parts of a composition. Still, for the most part, the iQOO 7 Legend’s primary camera will not disappoint you under ideal lighting conditions. Coming to the wide-angle sensor, the images offer ample details around the centre, however, there’s noticeable grainy-ness towards the edges of the frame. Thankfully, the macro shots look superb through the iQOO 7 Legend’s wide-angle lens and offer exceptional clarity. \r\nThe telephoto sensor, on the other hand, could do with some tweaks. I was quite satisfied with the performance of the iQOO 7 Legend’s selfie shooter. The images were crisp, the skin tone was acceptable and the smartphone managed to create a rather convincing blur effect around my face in portrait mode as well. \r\nLowlight images look stellar too and while the phone struggled to capture adequate details with the night mode disabled, enabling the feature allowed the sensor to squeeze out every bit of details from the shadows.It’s time to talk about the iQOO 7 Legend’s performance. Simply put, for the price, the iQOO 7 Legend thwarts the competition and is the fastest Android phone under Rs 40K. Software-wise, the device ships with FunTouch OS v11 out of the box which is based on Android 11. Expect a UI which looks very close to stock Android. However, there’s tons of bloatware and not enough customisation options. As for the phone’s battery life, you should know that the iQOO 7 Legend lasts a full day off a single charge on moderate usage, however, performance users might have to top up the phone’s 4,000mAh cell by the evening. One would assume that iQOO is wet behind the ears, seeing how the company has but three phones under its belt. Well, nothing could be further from the truth as iQOO’s latest contenders are amongst the most well-rounded smartphones I’ve reviewed this year. The iQOO 7 Legend, for instance, offers excellent performance, a high-quality display and uber-fast wired charging, all bundled in a handsome, luxurious package.\r\n ', 'https://www.youtube.com/watch?v=K_P55Bu8CBo', 58);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `battery_life` int(11) NOT NULL,
  `camera` int(11) NOT NULL,
  `build_quality` int(11) NOT NULL,
  `software` int(11) NOT NULL,
  `performance` int(11) NOT NULL,
  `display` int(11) NOT NULL,
  `5g` int(11) NOT NULL,
  `average` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `phone_id`, `battery_life`, `camera`, `build_quality`, `software`, `performance`, `display`, `5g`, `average`) VALUES
(1, 1, 7, 7, 9, 10, 8, 10, 0, 8.5),
(4, 4, 7, 7, 7, 7, 7, 8, 0, 7.16667),
(5, 5, 8, 7, 9, 10, 8, 9, 0, 8.5),
(6, 6, 8, 7, 8, 7, 8, 8, 0, 7.66667),
(7, 7, 9, 9, 8, 10, 8, 8, 0, 8.66667),
(8, 8, 9, 8, 8, 7, 8, 7, 0, 7.83333),
(9, 9, 10, 7, 7, 7, 8, 7, 0, 7.66667),
(11, 12, 9, 7, 8, 7, 7, 8, 6, 7.66667),
(12, 13, 8, 8, 7, 7, 9, 9, 10, 8),
(13, 14, 9, 9, 8, 7, 10, 9, 2, 8.66667),
(15, 16, 8, 7, 7, 9, 8, 8, 0, 7.83333),
(21, 22, 10, 7, 8, 7, 8, 7, 0, 7.83333),
(22, 23, 8, 7, 7, 7, 8, 7, 8, 7.33333),
(23, 24, 8, 9, 8, 8, 9, 8, 10, 8.33333),
(24, 25, 8, 9, 9, 8, 9, 8, 10, 8.5),
(25, 26, 9, 10, 9, 8, 9, 10, 10, 9.16667),
(26, 27, 9, 7, 6, 8, 7, 8, 0, 7.5),
(27, 28, 8, 9, 7, 7, 7, 9, 0, 7.83333),
(28, 29, 8, 9, 7, 7, 8, 9, 0, 8),
(29, 30, 9, 9, 8, 6, 7, 9, 0, 8),
(30, 31, 8, 8, 8, 6, 7, 8, 0, 7.5),
(31, 32, 8, 9, 8, 6, 8, 9, 0, 8),
(32, 33, 8, 8, 8, 6, 7, 8, 0, 7.5),
(33, 34, 8, 7, 8, 9, 9, 9, 3, 8.33333),
(34, 35, 8, 7, 8, 7, 7, 8, 0, 7.5),
(35, 36, 8, 7, 8, 7, 7, 6, 0, 7.16667),
(36, 37, 8, 7, 8, 6, 10, 7, 0, 7.66667),
(37, 38, 9, 7, 8, 9, 10, 9, 10, 8.66667),
(38, 39, 9, 8, 9, 9, 9, 9, 10, 8.83333),
(39, 40, 7, 7, 8, 7, 9, 8, 10, 7.66667),
(40, 41, 7, 8, 8, 6, 8, 7, 9, 7.33333),
(41, 42, 7, 9, 9, 8, 9, 8, 10, 8.33333),
(42, 43, 6, 8, 8, 7, 8, 9, 10, 7.66667),
(43, 44, 8, 7, 6, 7, 8, 8, 0, 7.33333),
(44, 45, 8, 8, 7, 7, 8, 8, 0, 7.66667),
(45, 46, 8, 7, 7, 7, 8, 6, 6, 7.16667),
(46, 47, 9, 7, 7, 7, 7, 7, 0, 7.33333),
(47, 48, 9, 9, 7, 8, 9, 8, 10, 8.33333),
(48, 49, 9, 7, 8, 7, 6, 7, 0, 7.33333),
(49, 50, 9, 8, 8, 7, 6, 7, 0, 7.5),
(50, 51, 8, 7, 6, 9, 7, 8, 2, 7.5),
(51, 53, 8, 8, 7, 7, 9, 7, 3, 7.66667),
(52, 54, 9, 8, 8, 9, 8, 9, 0, 8.5),
(53, 55, 10, 9, 9, 6, 7, 8, 0, 8.16667),
(54, 56, 9, 7, 9, 6, 8, 8, 0, 7.83333),
(55, 57, 8, 8, 9, 7, 8, 9, 0, 8.16667),
(56, 58, 9, 9, 9, 7, 10, 10, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `specification`
--

CREATE TABLE `specification` (
  `specification_id` int(11) NOT NULL,
  `battery_life_spec` varchar(1024) NOT NULL,
  `software_spec` varchar(1024) NOT NULL,
  `memory_spec` varchar(1024) NOT NULL,
  `processor_spec` varchar(1024) NOT NULL,
  `camera_spec` varchar(1024) NOT NULL,
  `display_spec` varchar(1024) NOT NULL,
  `warranty_spec` varchar(1024) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specification`
--

INSERT INTO `specification` (`specification_id`, `battery_life_spec`, `software_spec`, `memory_spec`, `processor_spec`, `camera_spec`, `display_spec`, `warranty_spec`, `phone_id`) VALUES
(1, '4,500 mAh | 65 W wired charging | 50 W wireless charging', 'OxygenOS based on Android 11', '8GB LPDDR5 RAM/128GB UFS 3.1 ROM', 'Qualcomm Snapdragon 888', '48MP + 50MP + 8MP + 2MP | 16MP Front Camera', '6.7 inches 3216 X 1440 120 Hz Fluid AMOLED with LTPO', '1 year for handset and 6 months for box accessories', 1),
(4, ' 4500 mAh | 33W fast charging', ' Realme UI v2.0 (Based on Android 11)', '6 GB RAM | 128 GB ROM | Expandable Upto 256 GB', 'Qualcomm Snapdragon 720G Processor', '108MP + 8MP + 2MP + 2MP |16MP', '16.26 cm (6.4 inch) 1080x2400 Full HD+ Display 60 Hz', '1 Year Warranty for Mobile and 6 Months for Accessories', 4),
(5, '4500mah | 65W Dart Charging ', 'OxygenOS based on Android 11', '8GB RAM| 128GB ROM', 'Qualcomm Snapdragon 870', '48MP + 16MP + 5MP + 2MP | 16MP Front Camera', '6.55inches |2400 x 1080 | 120hz', '1 Year Warranty for Mobile and 6 Months for Accessories', 5),
(6, '5000 mAh Battery | 30W Fast Charging', 'Realme UI 2.0 based on android 11', '4 GB RAM | 128 GB ROM | Expandable Upto 256 GB', 'MediaTek Helio G95 Processor', '64MP + 8MP + 2MP + 2MP | 16MP Front Camera', '16.26 cm (6.4 inch) Full HD+Super AMOLED Display', '1 Year Warranty for Mobile and 6 Months for Accessories', 6),
(7, '3140 mAh, 18W Fast Charging', 'Android 10', '6 GB RAM | 128 GB Storage |Not Expandable', 'Qualcomm Snapdragon 730G Processor', '12.2 MP | 8 MP Front Camera', '60 Hz |5.81 inch Full HD+ 1080 x 2340 OLED', '1 Year Warranty', 7),
(8, '5000 mAh Battery | 30W Fast Charging', 'Realme UI 1.0 based on android 10', '6 GB RAM | 64 GB ROM | Expandable Upto 256 GB', 'MediaTek Dimensity 800U Processor', '48MP + 8MP + 2MP | 16MP Front Camera', '16.51 cm (6.5 inch) Full HD+ 120hz LCD Display', '1 Year Warranty for Mobile and 6 Months for Accessories', 8),
(9, '6000 MAh Battery | 18W Fast Charging', 'Realme UI 2.0 based on android 11', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB', 'MediaTek Helio G70 Processor', '13MP + 2MP + 2MP | 8MP Front Camera', '16.51 cm (6.5 inch) HD+ Display', '1 Year Warranty for Mobile and 6 Months for Accessories', 9),
(11, '4310 mAh Battery | 50W fast charging', 'Realme UI 1.0 based on android 10', '6 GB RAM | 128 GB ROM', 'MediaTek Dimensity 800U Processor', '64MP + 8MP + 2MP | 16MP Front Camera', '16.26 cm (6.4 inch) 1080x2400 Full HD+SAMOLED Display 60 Hz', '1 Year Warranty for Mobile and 6 Months for Accessories', 12),
(12, '4500 mAh Battery | 50W fast charging', 'Realme UI 2.0 based on android 11', '8 GB RAM | 128 GB ROM | UFS 3.1', 'MediaTek Dimensity 1200 Processor', '64MP + 8MP + 2MP | 16MP Front Camera', '120Hz |16.33 cm (6.43 inch) Full HD+ SAMOLED Display ', '1 Year Warranty for Mobile and 6 Months for Accessories', 13),
(13, '4400 mAh | 66W Fast Charging', ' Funtouch 11.1 Based on Android 11', '8GB RAM | 128GB Storage', 'Qualcomm Snapdragon 870', '48 MP, f/1.8, 25mm (wide), 1/2.0\", 0.8µm, PDAF, OIS 13 MP, f/2.2, 16mm, 120˚ (ultrawide) 2 MP, f/2.4, (depth)', '6.62 inches, AMOLED, 120Hz, HDR10+, 1300 nits', '1 year Warranty', 14),
(15, '6000mAh Battery | 20W Type-C charging ', 'Android 11 ', '4 GB RAM|64 GB ROM|Expandable memory of up to 1TB|Hybrid slot', 'Qualcomm Snapdragon 732G', ' 64MP + 8MP + 2MP |16MP - Front Camera', '120 Hz |6.80-inch Full HD+ 1080x2460 IPS LCD display', '1 Year on Handset and 6 Months on Accessories', 16),
(21, '6000 MAh Battery | 18W Fast Charging', 'Realme UI 2.0 based on android 11', '4GB RAM | 64 GB ROM', 'MediaTek Helio G85 Processor', '13MP + 2MP + 2MP | 8MP Front Camera', '60Hz |16.51 cm (6.5 inch) 1600x720 HD+ Display', '1 Year Warranty for Mobile and 6 Months for Accessories', 22),
(22, '5000 mAh Battery | 18W Fast Charging', 'Realme UI 2.0 based on android 11', '4 GB RAM | 64 GB ROM', 'MediaTek Dimensity 700 Processor', '48MP + 2MP + 2MP | 16MP Front Camera', '90Hz | 16.51 cm (6.5 inch) Full HD+LCD Display', '1 Year Warranty for Mobile and 6 Months for Accessories', 23),
(23, '4000 mAh, 25W Fast Charging', 'One UI Based on Android 11', ' 8 GB RAM | 128 GB Storage |Not Expandable', 'Exynos 2100 Processor', '12.2 MP + 64 MP + 12 MP | 10 MP Front Camera', '120 Hz | Full HD+ 6.2-inch 1080 x 2400 AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 24),
(24, '4800 mAh, 25W Fast Charging', 'One UI Based on Android 11', '8 GB RAM | 128 GB Storage |Not Expandable', 'Exynos 2100 Processor', '12.2 MP + 64 MP + 12 MP | 10 MP Front Camera', '120 Hz | Full HD+ 6.7-inch 1080 x 2400 AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 25),
(25, '5000 mAh, 25W Fast Charging', 'One UI Based on Android 11', '12 GB RAM | 256 GB Storage |Not Expandable', 'Exynos 2100 Processor', '108MP + 12 MP + 10 MP + 10 MP | 40 MP Front Camera', '120 Hz | QHD+ 6.8-inch 3200 x 1440 AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 26),
(26, '6000mAh Battery | 20W Type-C charging', 'Android 11', '6 GB RAM | 128 GB ROM|Expandable memory of up to 1TB|Hybrid slot', 'Qualcomm Snapdragon 732G', '108MP + 8MP + 2MP | 32MP Front Camera', '120 Hz |6.78-inch Full HD+ 1080x2460 IPS LCD display', '1 Year on Handset and 6 Months on Accessories', 27),
(27, '4500 mAh, 25W Fast Charging', 'One UI based on Android 11', '6GB RAM | 128GB Storage | Expandable up to 1000GB', 'Qualcomm Snapdragon 720G Processor', '64 MP +12 MP + 5 MP + 5MP | 32 MP Front Camera', '90Hz | 6.5inch Full HD+ 1080 x 2400 Super AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 28),
(28, '5000 mAh, 25W Fast Charging', 'One UI based on Android 11', '8GB RAM | 128GB Storage | Expandable up to 1000GB', 'Qualcomm Snapdragon 720G Processor', '64 MP +12 MP + 8 MP + 5MP | 32 MP Front Camera', '90Hz | 6.7inch Full HD+ 1080 x 2400 Super AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 29),
(29, '5000mAh | 33w Type-C Fast charging ', 'MIUI 12 based on Android 11', '4 GB RAM| 64 GB ROM | Expandable memory upto 512 GB| Dedicated sd card slot.', 'Qualcomm Snapdragon 678', '48MP + 8MP + 2MP + 2MP | 13MP - Front Camera', '120 Hz |6.43 inches Full HD+ 1080 x 2400 pixels Super AMOLED display', '1 Year on Handset and 6 Months on Accessories', 30),
(30, '5000mAh | 33w Type-C Fast charging', 'MIUI 12.5 based on Android 11', '6GB RAM | 64GB ROM | Expandable storage upto 512 GB | Dedicated sd card slot', 'MediaTek Helio G95', '64MP + 8MP + 2MP + 2MP | 13MP - Front Camera ', '60 Hz |6.43 inches Full HD+ 1080 x 2400 pixels Super AMOLED display', '1 Year on Handset and 6 Months on Accessories', 31),
(31, '5050mAh | 33w Type-C Fast charging ', 'MIUI 12 based on Android 11', '6GB RAM | 64GB ROM | Expandable storage upto 512 GB | Dedicated sd card slot', 'Qualcomm Snapdragon 732G', '64MP + 8MP + 5MP + 2MP | 16MP - Front Camera', '120 Hz |6.67-inch Full HD+ 1080 x 2400 pixels Super AMOLED display', '1 Year on Handset and 6 Months on Accessories', 32),
(32, '5020mAh | 33w Type-C Fast charging ', 'MIUI 12 based on Android 11', ' 6GB RAM | 128GB ROM | Expandable storage upto 512 GB | Dedicated sd card slot', 'Qualcomm Snapdragon 732G', '108MP + 8MP+ 5MP + 2MP | 16MP - Front Camera ', '120 Hz |6.67-inch Full HD+ 1080 x 2400 pixels Super AMOLED display', '1 Year on Handset and 6 Months on Accessories', 33),
(33, '45000 mAh Battery | 65W fast charging', ' Oxygen OS based on Android™ 11', '8 GB LPDDR5 RAM  | 128 GB UFS 3.1 ROM ', 'Qualcomm Snapdragon 888', '48MP + 50MP + 2MP | 16MP Front Camera', '120Hz | 6.55 inches | 2400x1080 Full HD+ Fluid AMOLED Display ', '1 Year Warranty for Mobile and 6 Months for Accessories', 34),
(34, '5000 mAh, 15W Charging Speed', 'One UI based on Android 11', '6GB RAM | 128GB Storage | Expandable up to 1000GB', 'MediaTek Helio G80 Processor', '64 MP + 8 MP + 5 MP + 5MP | 20 MP Front Camera', '90Hz | 6.4inch Full HD+ 1080 x 2400 Super AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 35),
(35, '5000 mAh, 15W Charging Speed', 'One UI based on Android 11', '4GB RAM | 128GB Storage | Expandable up to 1000GB', 'Mediatek MT6765 Helio P35 Processor', '48 MP + 5 MP + 2 MP + 2 MP | 8 MP Front Camera', '60Hz | 6.5inch HD+ 720 x 1600 PLS LCD', '1 Year Warranty for Mobile and 6 Months Accessories', 36),
(36, '5160mAh | 33w Type-C Fast charging ', 'MIUI 12 for Poco based on Android 11', '6 GB RAM | 128 GB ROM |Expandable memory up to 1 TB | Hybrid slot', 'Qualcomm Snapdragon 860', ' 48MP + 8MP + 2MP + 2MP | 20MP - Front Camera', '120 Hz |6.67-inch Full HD+ 1080 x 2400 pixels IPS LCD display', '1 Year on Handset and 6 Months on Accessories', 37),
(37, '6000 mAh', 'Android 11', '8 Gb RAM, 128 GB storage', 'Qualcomm Snapdragon 888', '64MP Main + 13MP Wide-angle + 5MP Macro', 'Full HD+ sAMOLED Display', ' 1 Year', 38),
(38, '6000 mAh', 'Android 10', '8 Gb RAM, 128 GB storage', 'Qualcomm Snapdragon 865+', '64MP Main + 13MP Ultrawide + 5MP Macro Rear,24MP Front Camera ', 'Full HD+ AMOLED HDR 144HzDisplay', ' 1 Year', 39),
(39, '4520 mAH with 33W fast charging', 'Android 11 with MiUI 12', '6GB + 128GB, 8GB + 128GB', 'Qualcomm Snapdragon 870 ', '48MP main+8MP ultra-wide+5MP telemacro and 20MP front camera  ', 'FHD+ AMOLED Dot 120Hz display', ' 1 Year', 40),
(40, '4820mAh', 'Android 10 with MiUI 12', '6GB RAM 128GB ROM, 8GB RAM, 128GB ROM', 'Qualcomm  Snapdragon 750G', '108 MP Primary+8 MP Ultra-Wide+2 MP Depth+2 MP Macro and 16 MP front camera', '6.67-Inches 120Hz LCD Display', ' 1 Year', 41),
(41, '4200mAh with 33W charging', 'Android 11 with funtouchOS 1.0', '12GB RAM with 256GB Ufs 3.1 storage', 'Qualcomm  Snapdragon 870', '48MP Primary+13MP Ultrawide+13MP Portrait lens and 32MP front camera  ', '6.56\" AMOLED Display with 120Hz', ' 1 Year', 42),
(42, '4000mAh with 33W fast charging', 'Funtouch OS 11.1 based on Android 11', '8GB RAM, 128/256GB ROM', 'Mediatek Dimensity 800U', '64MP Primary+8MP Ultrawide+2MP Macro and 44MP Selfie Camera ', '6.44\" AMOLED Display with 90 Hz refresh rate', ' 1 Year', 43),
(43, '5000 mAH', 'Android 11', '4/6 GB RAM ,64/128GB ROM', 'Mediatek Helio G85', '48MP+2MP+2MP rear and 16MP at front ', '6.95\" Full HD+ IPS display', ' 1 Year', 44),
(44, '5000mAH', 'Android 11', '8 GB RAM, 256 GB ROM', 'MediaTek Helio G95', ' 64MP Primary + 8MP Ultrawide + 2MP Depth Sensor  + 2MP b&w and 16MP Front Camera', '6.95\" Full HD+ IPS In-Cell Display', ' 1 Year', 45),
(45, '5000 mAh, 15W Charging Speed', 'One UI based on Android 11', '6GB RAM | 128GB Storage | Expandable up to 1000GB', 'Qualcomm Snapdragon 750G Processor', '48 MP + 8 MP + 5 MP + 5MP | 20 MP Front Camera', '60Hz | 6.6 inch HD+ 720x 1600 Super AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 46),
(46, '6000 mAh, 15W Charging Speed', 'One UI based on Android 11', '4GB RAM | 64GB Storage | Expandable up to 1000GB', 'Exynos 850 (8nm) Processor', '48 MP + 5 MP + 2 MP + 2 MP | 8 MP Front Camera', '90Hz | 6.5 inch HD+ 720 x 1600 IPS LCD', '1 Year Warranty for Mobile and 6 Months Accessories', 47),
(47, '4500 mAh, 25W Fast Charging', 'One UI Based on Android 11', '8 GB RAM | 128 GB Storage | Expandable up to 1TB ', 'Qualcomm Snapdragon 865 Processor', '12 MP + 12 MP + 8 MP | 32 MP Front Camera', '120 Hz | FHD+ 6.5 inch 1080 x 2400 Super AMOLED', '1 Year Warranty for Mobile and 6 Months Accessories', 48),
(48, '5000 mAh, No Charging Speed', 'One UI based on Android 11', '2GB RAM | 32GB Storage | Expandable up to 1000GB', 'MediaTek MT6739 Processor', '13 MP + 2 MP | 5 MP Front Camera', '60Hz | 6.5 inch HD+ 720 x 1600 PLS LCD', '1 Year Warranty for Mobile and 6 Months Accessories', 49),
(49, '5000 mAh, 15W Charging Speed', 'One UI based on Android 11', '3GB RAM | 32GB Storage | Expandable up to 1000GB', 'Qualcomm Snapdragon 450 Processor', '13 MP + 2 MP +  2 MP | 5 MP Front Camera', '60Hz | 6.5 inch HD+ 720 x 1600 PLS IPS', '1 Year Warranty for Mobile and 6 Months Accessories', 50),
(50, '4500 mAh Battery | 30W fast charging', 'OxygenOS based on Android 11', '8 GB RAM | 128 GB ROM', 'Qualcomm Snapdragon750G', '64MP + 8MP + 2MP | 16MP Front Camera', '90 Hz | 16.26 cm (6.4 inch) 1080x2400 Full HD+ Fluid AMOLED Display ', '1 Year Warranty for Mobile and 6 Months for Accessories', 51),
(51, '4400 mAh Battery | 55W fast charging', 'Funtouch OS 11.1 Global based on Android 11', '6 GB RAM | 128 GB ROM', 'Qualcomm® Snapdragon™ 768G 5G ', '64MP + 8MP + 2MP | 16MP Front Camera', '120Hz | 6.58 inches | 2400x1080 Full HD+ IPS LCD Display ', '1 Year Warranty for Mobile and 6 Months for Accessories', 53),
(52, '5000 mAh Battery | 18W Type-C charging', 'Android 10', '4 GB RAM | 64 GB ROM | Expandable Upto 256 GB | Dedicated sd card slot', 'MediaTek Helio G80 Processor', '48MP + 2MP + 2MP | 8MP - Front Camera', '60Hz|6.67 inch Full HD+ 2400 x 1080 IPS LCD Display', '1 Year on Handset and 6 Months on Accessories', 54),
(53, '6000 mAh | 18w Type-C charging', 'MIUI 12 based on Android 10', '4GB RAM | 64GB ROM | Expandable storage upto 512 GB | Dedicated sd card slot', 'Qualcomm Snapdragon 662', '48 MP + 8 MP + 2 MP + 2 MP | 8 MP - Front Camera', '60 Hz | 6.53 inch Full HD+ 1080 x 2340 pixels IPS LCD display', '1 Year on Handset and 6 Months on Accessories', 55),
(54, '5000 mAh | 18w Type-C charging', 'MIUI 12 for Poco based on Android 10', '4GB RAM | 64GB ROM | Expandable storage upto 512 GB | Dedicated sd card slot', 'MediaTek Helio G80 Processor', '13MP + 8MP + 5MP + 2MP | 8MP - Front Camera', '60 Hz | 6.53 inch Full HD+ 1080 x 2340 pixels IPS LCD display', '1 Year on Handset and 6 Months on Accessories', 56),
(55, '4250 mAh', 'Android 11 with MIUI 11.5', '6/8 GB RAM,128GB ROM ', 'Qualcomm Snapdragon 732G', '64MP Primary+ 8MP Ultra Wide + 5MP Tele Macro | 16MP Front Camera', 'Full HD+ AMOLED Dot Display with HDR 10 support', '1 Year', 57),
(56, '4000mAh|66W Fast Charging', 'Funtouch 11.1 based on Android 11', '128GB ROM|8GB RAM', 'Qualcomm Snapdragon 888 5G', 'Wide (main): 48 MP, f/1.8, 26mm, 1/2.0\", 0.8µm, PDAF, OIS; Telephoto: 13 MP, f/2.5, 50mm, 1/2.8\", 0.8µm, PDAF, 2x optical zoom; Ultra wide angle: 13 MP, f/2.2, 120˚, 16mm.Front camera: 16 MP, f/2.0, (wide).', '6.62\" AMOLED, 120Hz', '1 Year Warranty', 58);

-- --------------------------------------------------------

--
-- Table structure for table `techquickie`
--

CREATE TABLE `techquickie` (
  `article_id` int(11) NOT NULL,
  `article_image_name` varchar(256) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `article_content` varchar(2048) NOT NULL,
  `article_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `techquickie`
--

INSERT INTO `techquickie` (`article_id`, `article_image_name`, `article_title`, `article_content`, `article_date`) VALUES
(1, 'gsmarena_000.jpg', 'iQOO reaches 25 million users globally, holds special deals July 13-16 to celebrate', 'Vivo sub-brand iQOO has announced it sold over 25 million smartphones globally, and to celebrate the milestone, it has announced \"iQOO Quest Days\" in India from July 13 to July 16, as a part of which customers will get discounts on their purchase of iQOO 7, 7 Legend, and Z3 from Amazon.in.', '2021-07-01 11:09:50'),
(2, 'gsmarena_001.jpg', 'Samsung Galaxy Z Flip3 to have a smaller body, TENAA reveals', 'Samsung has certified the SM-F7110 smartphone on TENAA, which is the Chinese version of the upcoming Galaxy Z Flip3. The listing had basically no specs aside from the network bands it was certified to work on, but today we know more about the size and the battery capacity.\r\n\r\nThe new Galaxy Z Flip3 will be shorter and thinner than the predecessor Galaxy Z Flip 5G, but the battery is listed at 2,300 mAh + 903 mAh, which in total is over 3,200 mAh minimal capacity or 3,300 mAh typical capacity.', '2021-07-05 11:09:50'),
(3, 'gsmarena_002.jpg', 'Moto G60S is in the works, price and some specs outed', 'Back in April Motorola released the Moto G60, and now it seems like the company is already busy working on a slightly improved version of that phone.\r\n\r\nAccording to a new leak, the Moto G60S is due to launch in the near future, for a price of around €300-320 in Europe. That\'s higher than what the G60 was priced at, which is another sign that the S model would bring some improvements compared to the vanilla model.\r\n\r\n', '2021-06-09 11:13:02'),
(4, 'gsmarena_200.jpg', 'Samsung Galaxy S22 Ultra to feature 200MP Olympus camera, S Pen support', 'In stark contrast with a recent report claiming that the Galaxy S22 Ultra will \"settle\" for a more refined version of the current 108MP ISOCELL HM3 sensor, the new one says that the phone will indeed feature a 200MP main camera. IT also points at a January 2022 release.', '2021-07-13 11:21:04'),
(5, 'gsmarena_00.jpg', 'Redmi Note 10T 5G launching on July 20 in India', 'Last week, Redmi India teased a new smartphone dubbed Redmi Note 10T 5G and now the brand’s Twitter account has revealed its launch date – July 20. The device is expected to be a rebrand of the Redmi Note 10 5G which was launched back in May.', '2021-07-13 11:13:02'),
(6, 'gsmarena_004.jpg', 'iPhone 13 dummies and cases leak, the cases don\'t fit the current 12-series models', 'iPhone 13 dummies have been sent out to various companies that need them (typically that is case makers) and this has led to inevitable leaks. We already saw a photo that represented all four models, now there are even more to see.\r\n\r\nHere’s a photo share by Marques Brownlee. This time all four models are shown in white. And no, the vanilla iPhone 13 is not larger than the 13 Pro, it’s just slightly offset. The two models will continue to be the same size, even if they don’t have the same screen.', '2021-07-13 11:21:04'),
(7, 'gsmarena_005.jpg', 'Oppo Reno6 Z 5G appears on Geekbench with key specs', 'The Oppo Reno6 Z 5G is coming on July 21, but before that it popped up on Geekbench confirming a few bits about its internals. It is powered by the Dimensity 800U SoC and runs Android 11.\r\n\r\nThe Reno6 Z 5G has 8GB RAM onboard, but there could be other memory options as well to choose from. However, it\'s unclear if the smartphone will come with the virtual RAM expansion feature like the Reno6 Pro 5G launching in India next Wednesday.', '2021-07-13 11:21:04'),
(8, 'gsmarena_006.jpg', 'OnePlus confirms July 22 launch date of Nord 2 5G', 'The OnePlus Nord 2 5G is right around the corner, and yesterday the first batch of teasers appeared online. Today we received an official confirmation in our inbox that the new midranger will arrive on July 22 at 7:30 PM.', '2021-07-07 11:21:08'),
(9, 'gsmarena_007.jpg', 'Poco F3 GT due to launch in India with Dimensity 1200 chipset', 'Back in May, Poco confirmed that its upcoming Poco F3 GT phone will launch in Q3 (July 1-September 30) and will be powered by the Dimensity 1200 chipset. The device is expected to be a rebranded Redmi K40 Gaming Edition and earlier today, Poco India posted a cryptic tweet which confirms its F3 GT is indeed coming to India soon.', '2021-07-10 11:21:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_link`
--
ALTER TABLE `buy_link`
  ADD PRIMARY KEY (`buy_link_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `con`
--
ALTER TABLE `con`
  ADD PRIMARY KEY (`con_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `specification`
--
ALTER TABLE `specification`
  ADD PRIMARY KEY (`specification_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Indexes for table `techquickie`
--
ALTER TABLE `techquickie`
  ADD PRIMARY KEY (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `buy_link`
--
ALTER TABLE `buy_link`
  MODIFY `buy_link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `con`
--
ALTER TABLE `con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pro`
--
ALTER TABLE `pro`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `specification`
--
ALTER TABLE `specification`
  MODIFY `specification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `techquickie`
--
ALTER TABLE `techquickie`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buy_link`
--
ALTER TABLE `buy_link`
  ADD CONSTRAINT `buy_link_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `con`
--
ALTER TABLE `con`
  ADD CONSTRAINT `con_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pro`
--
ALTER TABLE `pro`
  ADD CONSTRAINT `pro_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specification`
--
ALTER TABLE `specification`
  ADD CONSTRAINT `specification_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
