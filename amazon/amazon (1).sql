-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2022 at 12:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_value`, `coupon_status`) VALUES
(1, 'OCTFUN', 10, 'Expired'),
(2, 'DECFUN', 20, 'Active'),
(3, 'JANFUN', 15, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `address` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `img` text NOT NULL,
  `category` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `brand`, `price`, `details`, `img`, `category`, `availability`) VALUES
(2, 'AW Bellies', 'AW', '999', 'Key Features of AW Bellies Sandals Wedges Heel Casuals,AW Bellies Price: Rs. 499 Material: Synthetic Lifestyle: Casual Heel Type: Wedge Warranty Type: Manufacturer Product Warranty against manufacturing defects: 30 days Care instructions: Allow your pair of shoes to air and de-odorize at regular basis; use shoe bags to prevent any stains or mildew; dust any dry dirt from the surface using a clean cloth; do not use polish or shiner,Specifications of AW Bellies General Ideal For Women Occasion Casual Shoe Details Color Red Outer Material Patent Leather Heel Height 1 inch Number of Contents in Sales Package Pack of 1 In the Box One Pair Of Shoes', '[\"http://img5a.flixcart.com/image/shoe/7/z/z/red-as-454-aw-11-original-imaeebfwsdf6jdf6.jpeg\", \"http://img6a.flixcart.com/image/shoe/7/z/z/red-as-454-aw-11-original-imaeebfwsdf6jdf6.jpeg\", \"http://img5a.flixcart.com/image/shoe/7/z/z/red-as-454-aw-11-origi', 'Footwear', 1),
(3, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '699', 'Key Features of Alisha Solid Women\'s Cycling Shorts Cotton Lycra Black, Red,Specifications of Alisha Solid Women\'s Cycling Shorts Shorts Details Number of Contents in Sales Package Pack of 2 Fabric Cotton Lycra Type Cycling Shorts General Details Pattern Solid Ideal For Women\'s Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach Additional Details Style Code ALTGHT_11 In the Box 2 shorts', '[\"http://img5a.flixcart.com/image/short/6/2/h/altght-11-alisha-38-original-imaeh2d5uq9thnyg.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1-alisha-34-original-imaeh2d5jxvh4msy.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1-a', 'Clothing', 1),
(4, 'Sicons All Purpose Arnica Dog Shampoo', 'Sicons', '220', 'Specifications of Sicons All Purpose Arnica Dog Shampoo (500 ml) General Pet Type Dog Brand Sicons Quantity 500 ml Model Number SH.DF-14 Type All Purpose Fragrance Arnica Form Factor Liquid In the Box Sales Package Shampoo Sicons Dog Fashion Arnica', '[\"http://img5a.flixcart.com/image/pet-shampoo/r/j/5/sh-df-14-sicons-500-1100x1100-imaeh3hfvav85tva.jpeg\", \"http://img5a.flixcart.com/image/pet-shampoo/r/j/5/sh-df-14-sicons-500-original-imaeh3hfvav85tva.jpeg\"]', 'Pet', 1),
(5, 'Eternal Gandhi Super Series Crystal Paper Weights  with Silver Finish', 'Eternal Gandhi', '430', 'Key Features of Eternal Gandhi Super Series Crystal Paper Weights  with Silver Finish Crystal  paper weight Product Dimensions :   8cm x  8cm x 5cm A beautiful product Material: Crystal,Eternal Gandhi Super Series Crystal Paper Weights  with Silver Finish (Set Of 1, Clear) Price: Rs. 430 Your office desk will sparkle and shine when you accent tables with this elegant crystal paper weight. The multifaceted crystal features Gandhiji’s bust and his timeless message – “My life is my message – M.K. Gandhi”. A beautiful product to gift to your near and dear ones in family and Business.,Specifications of Eternal Gandhi Super Series Crystal Paper Weights  with Silver Finish (Set Of 1, Clear) General Model Name Gandhi Paper Weight Mark V Dimensions Weight 323 g In the Box Paper Weight Paper Weight Features Paper Weight Material Crystal Paper Weight Finish Silver Finish', '[\"http://img5a.flixcart.com/image/paper-weight/u/e/3/eternal-gandhi-gandhi-paper-weight-mark-v-1100x1100-imaeb8adyf3xmqhf.jpeg\", \"http://img5a.flixcart.com/image/paper-weight/u/e/3/eternal-gandhi-gandhi-paper-weight-mark-v-original-imaeb8adyf3xmqhf.jpeg\"]', 'Eternal', 1),
(6, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '1199', 'Key Features of Alisha Solid Women\'s Cycling Shorts Cotton Lycra Navy, Red, White, Red,Specifications of Alisha Solid Women\'s Cycling Shorts Shorts Details Number of Contents in Sales Package Pack of 4 Fabric Cotton Lycra Type Cycling Shorts General Details Pattern Solid Ideal For Women\'s In the Box 4 shorts Additional Details Style Code ALTGHT4P_26 Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img6a.flixcart.com/image/short/p/j/z/altght4p-26-alisha-38-original-imaeh2d5cqtxe5gt.jpeg\", \"http://img5a.flixcart.com/image/short/z/j/7/altght-7-alisha-38-original-imaeh2d5jsz2ghd6.jpeg\", \"http://img5a.flixcart.com/image/short/p/j/z/altght4p-26-', 'Clothing', 1),
(7, 'FabHomeDecor Fabric Double Sofa Bed', 'FabHomeDecor', '32157', 'FabHomeDecor Fabric Double Sofa Bed (Finish Color - Brown Mechanism Type - Pull Out) Price: Rs. 22,646 • Fine deep seating experience • Save Space with the all new click clack Sofa Bed • Easy to fold and vice versa with simple click clack mechanism • Chrome legs with mango wood frame for long term durability • Double cushioned Sofa Bed to provide you with extra softness to make a fine seating experience • A double bed that can easily sleep two,Specifications of FabHomeDecor Fabric Double Sofa Bed (Finish Color - Brown Mechanism Type - Pull Out) Installation & Demo Installation & Demo Details Installation and demo for this product is done free of cost as part of this purchase. Our service partner will visit your location within 72 business hours from the delivery of the product. In The Box 1 Sofa Bed General Brand FabHomeDecor Mattress Included No Delivery Condition Knock Down Storage Included No Mechanism Type Pull Out Type Sofa Bed Style Contemporary & Modern Filling Material Microfiber Seating Capacity 3 Seater Upholstery Type NA Upholstery Included No Bed Size Double Shape Square Suitable For Living Room Model Number FHD107 Care Instructions Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled bru...View More Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled brush attachment or lightly brush them to keep general dirt and dust off the sofa and prevent any embedding between the fibres, Try to avoid food and drink spillage of any kind, If spills occur, do not leave unattended, In case of a stain, a water-free fabric cleaner can be used, However, avoid applying the cleaner directly on the stain as this can cause damage to the fabric and fade colour, Pour the cleaner onto a clean cloth and test its effect on a hidden area of the sofa before cleaning the stain with the cloth, A professional scotchguard treatment is one of the easiest and most effective options to protect against spills or stains and keep pet hair at bay, Getting your sofa professionally cleaned once every 6-8 months will not only take care of the nooks and corners that you can\'t reach, it will also make it more durable Finish Type Matte Important Note Cancellation NOT allowed for this product after 24 hrs of order booking. Warranty Covered in Warranty Warranty covers all kind of manufacturing defects. Concerned product will either be repaired or replaced based on discretion. Service Type Manufacturer Warranty Warranty Summary 6 Months Domestic Warranty Not Covered in Warranty Warranty does not cover for Improper Handling Dimensions Weight 40 kg Height 838 mm Width 1905 mm Depth 939 mm Disclaimer - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through...View More - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through the entrance(s) and door(s) of the premises - Please expect an unevenness of up to 5 mm in the product due to differences in surfaces and floor levels - Flipkart, or the Seller delivering the product, will not take up any type of civil work, such as drilling holes in the wall to mount the product. The product will only be assembled in case carpentry assembly is required - In case the product appears to lack shine, wiping the surface with a cloth will help clear the surface of dust particles Material & Color Upholstery Color Brown Primary Color Brown Primary Material Fabric Secondary Material Subtype Mango Wood Secondary Material Foam Finish Color Brown Primary Material Subtype Foam', '[\"http://img6a.flixcart.com/image/sofa-bed/e/x/n/fhd107-double-foam-fabhomedecor-brown-brown-1100x1100-imaeh3geypmfrc5a.jpeg\", \"http://img6a.flixcart.com/image/sofa-bed/e/x/n/fhd107-double-foam-fabhomedecor-brown-brown-original-imaeh3geypmfrc5a.jpeg\", \"ht', 'Furniture', 1),
(8, 'dilli bazaaar Bellies, Corporate Casuals, Casuals', 'dilli bazaaar', '699', 'Key Features of dilli bazaaar Bellies, Corporate Casuals, Casuals Material: Fabric Occasion: Ethnic, Casual, Party, Formal Color: Pink Heel Height: 0,Specifications of dilli bazaaar Bellies, Corporate Casuals, Casuals General Occasion Ethnic, Casual, Party, Formal Ideal For Women Shoe Details Weight 200 g (per single Shoe) - Weight of the product may vary depending on size. Heel Height 0 inch Outer Material Fabric Color Pink', '[\"http://img6a.flixcart.com/image/shoe/b/p/n/pink-200db202-dilli-bazaaar-10-original-imaeh2zz4x6hnuwf.jpeg\", \"http://img6a.flixcart.com/image/shoe/b/p/n/pink-200db202-dilli-bazaaar-10-original-imaeh2zzxp8s7gru.jpeg\", \"http://img6a.flixcart.com/image/shoe/', 'Footwear', 1),
(9, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '1199', 'Key Features of Alisha Solid Women\'s Cycling Shorts Cotton Lycra White, Black, Red, Black,Specifications of Alisha Solid Women\'s Cycling Shorts Shorts Details Number of Contents in Sales Package Pack of 4 Fabric Cotton Lycra Type Cycling Shorts General Details Pattern Solid Ideal For Women\'s Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach Additional Details Style Code ALTGHT4P_39 In the Box 4 shorts', '[\"http://img5a.flixcart.com/image/short/5/z/c/altght4p-39-alisha-38-original-imaeh2d5ar6m55zd.jpeg\", \"http://img5a.flixcart.com/image/short/z/h/b/altght-9-alisha-36-original-imaeh2d5khxcdggw.jpeg\", \"http://img6a.flixcart.com/image/short/z/h/b/altght-9-ali', 'Clothing', 1),
(10, 'Ladela Bellies', 'Ladela', '1724', 'Key Features of Ladela Bellies Brand: LADELA Color : Black,Ladela Bellies Price: Rs. 950 Experience the best bellies from the house of Ladela. Providing the best material to keep your feet cozy and active for the whole day.,Specifications of Ladela Bellies General Occasion Casual Ideal For Women Shoe Details Heel Height 0 inch Outer Material PU Color Black', '[\"http://img5a.flixcart.com/image/shoe/s/g/m/black-r998-22-ladela-38-original-imaega8phqh6tf4e.jpeg\", \"http://img6a.flixcart.com/image/shoe/s/g/m/black-r998-22-ladela-38-original-imaega8phqh6tf4e.jpeg\", \"http://img6a.flixcart.com/image/shoe/s/g/m/black-r9', 'Footwear', 1),
(11, 'Carrel Printed Women\'s', 'Carrel', '2299', 'Key Features of Carrel Printed Women\'s Fabric: SwimLycra Brand Color: Black, White,Carrel Printed Women\'s Price: Rs. 910 Max-coverage swimwear collection from CARREL BRAND, Brighten up your swim routine with this best fitting. This swimming costume from the house of Carrel is made of imported swim lycra fabric and comes in Black & White Colour. It has to be washed separately and dry in shade. Attractive & classy caressing the water. This swimwear provides excellent protection and Chlorine resistance. fast drying combined with flatlock stitching gives an unmatched comfort and helps you to that performance you have been striving for. This swimwear with its comfort and style is your perfect companion at any pool, beach or water activity. Time for you to do your own thing and Go With The Flow. This Swimwear Lightly padded, for modesty and support. This Product Support To This Size : L, XL, XXL, 3XL,4XL.,Specifications of Carrel Printed Women\'s Top Details Neck Round Neck Swimsuit Details Fabric SwimLycra Type Swim-dress General Details Pattern Printed Ideal For Women\'s Occasion Sports Fabric Care Wash with Similar Colors, Use Detergent for Colors In the Box 1 Swimware', '[\"http://img6a.flixcart.com/image/swimsuit/5/v/9/carrel-sw-3091-black-white01-carrel-4xl-original-imaehyzm2sywfavb.jpeg\", \"http://img5a.flixcart.com/image/swimsuit/g/g/x/carrel-sw-3091-black-white01-carrel-xl-original-imaehyzmmvg6b7uy.jpeg\", \"http://img6a', 'Clothing', 1),
(12, 'Sicons All Purpose Tea Tree Dog Shampoo', 'Sicons', '0', 'Specifications of Sicons All Purpose Tea Tree Dog Shampoo (200 ml) General Pet Type Dog Brand Sicons Quantity 200 ml Model Number SH.DF-07 Type All Purpose Fragrance Tea Tree Form Factor Spray In the Box Sales Package Shampoo Sicons Dog Fashion Dry Bath Urban Pet', '[\"http://img6a.flixcart.com/image/pet-shampoo/c/c/d/sh-df-07-sicons-200-1100x1100-imaeh3kvn25fznjt.jpeg\", \"http://img6a.flixcart.com/image/pet-shampoo/c/c/d/sh-df-07-sicons-200-original-imaeh3kvn25fznjt.jpeg\"]', 'Pet', 1),
(13, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '999', 'Key Features of Alisha Solid Women\'s Cycling Shorts Cotton Lycra Black, White, Black,Specifications of Alisha Solid Women\'s Cycling Shorts Shorts Details Number of Contents in Sales Package Pack of 3 Fabric Cotton Lycra Type Cycling Shorts General Details Pattern Solid Ideal For Women\'s Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach Additional Details Style Code ALTHT_3P_17 In the Box 3 shorts', '[\"http://img6a.flixcart.com/image/short/q/z/v/altht-3p-17-alisha-36-original-imaeh2d5njykvkz6.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1-alisha-34-original-imaeh2d5yz9fcjxe.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1', 'Clothing', 1),
(14, 'Freelance Vacuum Bottles 350 ml Bottle', 'Freelance', '699', 'Specifications of Freelance Vacuum Bottles 350 ml Bottle (Pack of 1, Green) General Body Material Stainless steel Type Bottle In the Box Number of Contents in Sales Package Pack of 1 Sales Package 1 pcs in one packet', '[\"http://img5a.flixcart.com/image/bottle/j/m/m/av004bgr-freelance-350-vacuum-bottles-1000x1000-imaegykdk6ytzrzz.jpeg\", \"http://img6a.flixcart.com/image/bottle/j/m/m/av004bgr-freelance-350-vacuum-bottles-original-imaegykdk6ytzrzz.jpeg\", \"http://img6a.flixc', 'Pens', 1),
(15, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '999', 'Key Features of Alisha Solid Women\'s Cycling Shorts Cotton Lycra Black, White, White,Specifications of Alisha Solid Women\'s Cycling Shorts Shorts Details Number of Contents in Sales Package Pack of 3 Fabric Cotton Lycra Type Cycling Shorts General Details Pattern Solid Ideal For Women\'s Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach Additional Details Style Code ALTHT_3P_2 In the Box 3 shorts', '[\"http://img5a.flixcart.com/image/short/t/p/b/altht-3p-2-alisha-38-original-imaeh2d53jbrxnam.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1-alisha-34-original-imaeh2d5jxvh4msy.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-1-', 'Clothing', 1),
(16, 'FabHomeDecor Fabric Double Sofa Bed', 'FabHomeDecor', '32157', 'FabHomeDecor Fabric Double Sofa Bed (Finish Color - Purple Mechanism Type - Pull Out) Price: Rs. 22,646 • Fine deep seating experience • Save Space with the all new click clack Sofa Bed • Easy to fold and vice versa with simple click clack mechanism • Chrome legs with mango wood frame for long term durability • Double cushioned Sofa Bed to provide you with extra softness to make a fine seating experience • A double bed that can easily sleep two,Specifications of FabHomeDecor Fabric Double Sofa Bed (Finish Color - Purple Mechanism Type - Pull Out) Installation & Demo Installation & Demo Details Installation and demo for this product is done free of cost as part of this purchase. Our service partner will visit your location within 72 business hours from the delivery of the product. In The Box 1 Sofa Bed General Brand FabHomeDecor Mattress Included No Delivery Condition Knock Down Storage Included No Mechanism Type Pull Out Type Sofa Bed Style Contemporary & Modern Filling Material Microfiber Seating Capacity 3 Seater Upholstery Type NA Upholstery Included No Bed Size Double Shape Square Suitable For Living Room Model Number FHD132 Care Instructions Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled bru...View More Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled brush attachment or lightly brush them to keep general dirt and dust off the sofa and prevent any embedding between the fibres, Try to avoid food and drink spillage of any kind, If spills occur, do not leave unattended, In case of a stain, a water-free fabric cleaner can be used, However, avoid applying the cleaner directly on the stain as this can cause damage to the fabric and fade colour, Pour the cleaner onto a clean cloth and test its effect on a hidden area of the sofa before cleaning the stain with the cloth, A professional scotchguard treatment is one of the easiest and most effective options to protect against spills or stains and keep pet hair at bay, Getting your sofa professionally cleaned once every 6-8 months will not only take care of the nooks and corners that you can\'t reach, it will also make it more durable Finish Type Matte Important Note Cancellation NOT allowed for this product after 24 hrs of order booking. Warranty Covered in Warranty Warranty covers all kind of manufacturing defects. Concerned product will either be repaired or replaced based on discretion. Service Type Manufacturer Warranty Warranty Summary 6 Months Domestic Warranty Not Covered in Warranty Warranty does not cover for Improper Handling Dimensions Weight 40 kg Height 838 mm Width 1905 mm Depth 939 mm Disclaimer - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through...View More - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through the entrance(s) and door(s) of the premises - Please expect an unevenness of up to 5 mm in the product due to differences in surfaces and floor levels - Flipkart, or the Seller delivering the product, will not take up any type of civil work, such as drilling holes in the wall to mount the product. The product will only be assembled in case carpentry assembly is required - In case the product appears to lack shine, wiping the surface with a cloth will help clear the surface of dust particles Material & Color Upholstery Color Purple Primary Color Purple Primary Material Fabric Secondary Material Subtype Mango Wood Secondary Material Foam Finish Color Purple Primary Material Subtype Foam', '[\"http://img5a.flixcart.com/image/sofa-bed/r/c/g/fhd132-double-foam-fabhomedecor-purple-purple-1100x1100-imaeh3getyhdnnxn.jpeg\", \"http://img5a.flixcart.com/image/sofa-bed/r/c/g/fhd132-double-foam-fabhomedecor-purple-purple-original-imaeh3getyhdnnxn.jpeg\",', 'Furniture', 1),
(17, 'Style Foot Bellies', 'Style Foot', '899', 'Key Features of Style Foot Bellies ballerina shoes ballerina flats,Style Foot Bellies Price: Rs. 449 ballet shoes that fits perfectly for casual and party wear,Specifications of Style Foot Bellies General Occasion Casual Ideal For Women Shoe Details Heel Height 1 inch Outer Material PU Color Black In the Box 1 slipper', '[\"http://img5a.flixcart.com/image/shoe/p/f/h/black-sfwf0377-style-foot-44-original-imaeh4cxasyrdtjr.jpeg\", \"http://img5a.flixcart.com/image/shoe/v/t/m/black-sfwf0377-style-foot-43-original-imaeh4cx4c7w8nuc.jpeg\", \"http://img5a.flixcart.com/image/shoe/p/f/', 'Footwear', 1),
(18, 'Carrel Printed Women\'s', 'Carrel', '2499', 'Key Features of Carrel Printed Women\'s Fabric: SwimLycra Brand Color: DARK BLUE, WHITE,Carrel Printed Women\'s Price: Rs. 999 Max-coverage swimwear collection from CARREL BRAND, Brighten up your swim routine with this best fitting. This swimming costume from the house of Carrel is made of imported swim lycra fabric and comes in Darkblue & White Colour. It has to be washed separately and dry in shade. Attractive & classy caressing the water. This swimwear provides excellent protection and Chlorine resistance. fast drying combined with flatlock stitching gives an unmatched comfort and helps you to that performance you have been striving for. This swimwear with its comfort and style is your perfect companion at any pool, beach or water activity. Time for you to do your own thing and Go With The Flow. This Swimwear Lightly padded, for modesty and support. This Product Support To This Size : L, XL, XXL, 3XL,4XL.,Specifications of Carrel Printed Women\'s Top Details Neck Round Neck Swimsuit Details Fabric SwimLycra Type Swim-dress General Details Pattern Printed Ideal For Women\'s Occasion Sports Fabric Care Wash with Similar Colors, Use Detergent for Colors In the Box 1 Swimware', '[\"http://img5a.flixcart.com/image/swimsuit/g/z/j/carrel-sw-3091-darkblue-white-carrel-4xl-original-imaehyzmk8hphgua.jpeg\", \"http://img6a.flixcart.com/image/swimsuit/g/z/j/carrel-sw-3091-darkblue-white-carrel-4xl-original-imaehyzmmgz3fgny.jpeg\", \"http://im', 'Clothing', 1),
(19, 'FabHomeDecor Fabric Double Sofa Bed', 'FabHomeDecor', '32157', 'FabHomeDecor Fabric Double Sofa Bed (Finish Color - Dark Brown Mechanism Type - Pull Out) Price: Rs. 22,646 • Fine deep seating experience • Save Space with the all new click clack Sofa Bed • Easy to fold and vice versa with simple click clack mechanism • Chrome legs with mango wood frame for long term durability • Double cushioned Sofa Bed to provide you with extra softness to make a fine seating experience • A double bed that can easily sleep two,Specifications of FabHomeDecor Fabric Double Sofa Bed (Finish Color - Dark Brown Mechanism Type - Pull Out) In The Box 1 Sofa Bed Installation & Demo Installation & Demo Details Installation and demo for this product is done free of cost as part of this purchase. Our service partner will visit your location within 72 business hours from the delivery of the product. Important Note Cancellation NOT allowed for this product after 24 hrs of order booking. General Brand FabHomeDecor Mattress Included No Delivery Condition Knock Down Storage Included No Mechanism Type Pull Out Type Sofa Bed Style Contemporary & Modern Filling Material Microfiber Seating Capacity 3 Seater Upholstery Type NA Upholstery Included No Bed Size Double Shape Square Suitable For Living Room Model Number FHD115 Finish Type Matte Care Instructions Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled bru...View More Avoid outdoor use and exposure to water or prolonged moisture, Avoid exposure to direct heat or sunlight as this can cause the sofa colour to fade, Keep sharp objects away from your sofa, A little tear on the fabric cover may be hard to repair, Vacuum your sofas periodically with a soft bristled brush attachment or lightly brush them to keep general dirt and dust off the sofa and prevent any embedding between the fibres, Try to avoid food and drink spillage of any kind, If spills occur, do not leave unattended, In case of a stain, a water-free fabric cleaner can be used, However, avoid applying the cleaner directly on the stain as this can cause damage to the fabric and fade colour, Pour the cleaner onto a clean cloth and test its effect on a hidden area of the sofa before cleaning the stain with the cloth, A professional scotchguard treatment is one of the easiest and most effective options to protect against spills or stains and keep pet hair at bay, Getting your sofa professionally cleaned once every 6-8 months will not only take care of the nooks and corners that you can\'t reach, it will also make it more durable Dimensions Weight 40 kg Height 838.2 mm Width 1905 mm Depth 939.8 mm Warranty Covered in Warranty Warranty covers all kind of manufacturing defects. Concerned product will either be repaired or replaced based on discretion. Warranty Summary 6 Months Domestic Warranty Service Type Manufacturer Warranty Not Covered in Warranty Warranty does not cover for Improper Handling Disclaimer - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through...View More - The color of the product may vary slightly compared to the picture displayed on your screen. This is due to lighting, pixel quality and color settings - Please check the product\'s dimensions to ensure the product will fit in the desired location. Also, check if the product will fit through the entrance(s) and door(s) of the premises - Please expect an unevenness of up to 5 mm in the product due to differences in surfaces and floor levels - Flipkart, or the Seller delivering the product, will not take up any type of civil work, such as drilling holes in the wall to mount the product. The product will only be assembled in case carpentry assembly is required - In case the product appears to lack shine, wiping the surface with a cloth will help clear the surface of dust particles Material & Color Primary Material Fabric Primary Color Brown Upholstery Color Dark Brown Secondary Material Foam Secondary Material Subtype Mango Wood Finish Color Dark Brown Primary Material Subtype Foam', '[\"http://img6a.flixcart.com/image/sofa-bed/j/6/q/fhd115-double-foam-fabhomedecor-dark-brown-dark-brown-original-imaeh3gee5zcazvm.jpeg\", \"http://img5a.flixcart.com/image/sofa-bed/j/6/q/fhd115-double-foam-fabhomedecor-dark-brown-dark-brown-original-imaeh3ge', 'Furniture', 1),
(20, 'Sicons Conditioning Conditoner Dog Shampoo', 'Sicons', '110', 'Specifications of Sicons Conditioning Conditoner Dog Shampoo (200 ml) General Pet Type Dog Brand Sicons Quantity 200 ml Model Number SH.DF-02 Type Conditioning Fragrance Conditoner Form Factor Gel In the Box Sales Package Shampoo Sicons Dog Fashion Conditioner Aloe Rinse', '[\"http://img6a.flixcart.com/image/pet-shampoo/v/x/m/sh-df-02-sicons-200-1100x1100-imaeh3kjba4htqfg.jpeg\", \"http://img5a.flixcart.com/image/pet-shampoo/v/x/m/sh-df-02-sicons-200-original-imaeh3kjba4htqfg.jpeg\"]', 'Pet', 1),
(21, 'Alisha Solid Women\'s Cycling Shorts', 'Alisha', '0', 'Alisha Solid Women\'s Cycling Shorts - Buy Black, White, Navy Alisha Solid Women\'s Cycling Shorts For Only Rs. 999 Online in India. Shop Online For Apparels. Huge Collection of Branded Clothes Only at Flipkart.com', '[\"http://img6a.flixcart.com/image/short/m/g/y/altht-3p-18-alisha-34-original-imaeh2d5zgnh6vsb.jpeg\", \"http://img5a.flixcart.com/image/short/m/g/y/altht-3p-18-alisha-34-original-imaeh2d5zgnh6vsb.jpeg\", \"http://img6a.flixcart.com/image/short/p/h/t/altht-3p-', 'Clothing', 1),
(22, 'dongli Printed Boy\'s Round Neck T-Shirt', 'dongli', '2400', 'Specifications of dongli Printed Boy\'s Round Neck T-Shirt (Pack of 4) T-shirt Details Sleeve Half Sleeve Number of Contents in Sales Package Pack of 4 Fabric Cotton Type Round Neck Fit Regular General Details Pattern Printed Occasion Casual Ideal For Boy\'s In the Box 4 T Shirt Additional Details Style Code DLHBB445_BEIGE_BLACK_GYELLOW_PURPLE Fabric Care Wash with Similar Colors, Use Detergent for Colors', '[\"http://img5a.flixcart.com/image/t-shirt/w/x/t/dlhbb445-beige-black-gyellow-purple-dongli-10-11-years-original-imaehb54gxhchxcd.jpeg\", \"http://img6a.flixcart.com/image/t-shirt/w/x/t/dlhbb445-beige-black-gyellow-purple-dongli-10-11-years-original-imaehb54', 'Clothing', 1),
(23, 'SWAGGA Women Clogs', 'SWAGGA', '1500', 'Key Features of SWAGGA Women Clogs Occasion: Ethnic Material: Leather Color: Brown, White Heel Height: 0,Specifications of SWAGGA Women Clogs General Occasion Ethnic Ideal For Women Sandal Details Type Clogs Heel Height 0 inch Outer Material Leather Color Brown, White13', '[\"http://img6a.flixcart.com/image/sandal/h/7/v/brown-white17-swagga0040-swagga-47-original-imaeh6zhxgymnwjx.jpeg\", \"http://img5a.flixcart.com/image/sandal/h/7/v/brown-white17-swagga0040-swagga-47-original-imaeh6zhxgymnwjx.jpeg\", \"http://img5a.flixcart.com', 'Footwear', 1),
(24, 'Kennel Rubber Dumbell With Bell - Small Rubber Rubber Toy For Dog', 'Kennel', '190', 'Buy Kennel Rubber Dumbell With Bell - Small Rubber Rubber Toy For Dog for Rs.190 online. Kennel Rubber Dumbell With Bell - Small Rubber Rubber Toy For Dog at best prices with FREE shipping & cash on delivery. Only Genuine Products. 30 Day Replacement Guarantee.', '[\"http://img5a.flixcart.com/image/pet-toy/n/a/r/a35-kennel-original-imaea5c3qxyqzrgz.jpeg\"]', 'Pet', 1),
(25, 'Glus Wedding Lingerie Set', '', '1299', 'Glus Wedding Lingerie Set - Buy Turquoise Glus Wedding Lingerie Set For Only Rs. 1299 Online in India. Shop Online For Apparels. Huge Collection of Branded Clothes Only at Flipkart.com', '[\"http://img5a.flixcart.com/image/lingerie-set/5/a/y/gp2151itu-glus-30b-original-imae92gzdcyhz9kr.jpeg\", \"http://img6a.flixcart.com/image/lingerie-set/m/w/z/gp2151ipu-glus-30b-original-imae92jf44ygzdhm.jpeg\"]', 'Clothing', 1),
(26, 'Veelys Shiny White Quad Roller Skates - Size 4.5 UK', '', '3199', 'Veelys Shiny White Quad Roller Skates - Size 4.5 UK only for Rs 2499 . Ideal For Boys . Buy online @ Flipkart.com. Only Genuine Products. Free Shipping. Cash On Delivery!', '[\"http://img6a.flixcart.com/image/skate/w/y/7/ve-ar-2132-w-4-5-1-veelys-quad-roller-shiny-white-original-imae5jpf8c5nmxfy.jpeg\", \"http://img5a.flixcart.com/image/skate/w/y/7/ve-ar-2132-w-4-5-1-veelys-quad-roller-shiny-white-original-imae5jpf8c5nmxfy.jpeg\"', 'Sports', 1),
(27, 'Bulaky vanity case Jewellery Vanity Case', '', '499', 'Buy Bulaky vanity case Jewellery Vanity Case for Rs.390 online. Bulaky vanity case Jewellery Vanity Case at best prices with FREE shipping & cash on delivery. Only Genuine Products. 30 Day Replacement Guarantee.', '[\"http://img6a.flixcart.com/image/vanity-box/8/5/t/j-635-bulaky-vanity-case-1100x1100-imadzy6atzfswnag.jpeg\", \"http://img6a.flixcart.com/image/vanity-box/8/5/t/j-635-bulaky-vanity-case-original-imadzy6atzfswnag.jpeg\", \"http://img5a.flixcart.com/image/vani', 'Beauty', 1),
(28, 'FDT Women\'s Leggings', '', '699', 'FDT Women\'s Leggings - Buy Parrot Green FDT Women\'s Leggings For Only Rs. 699 Online in India. Shop Online For Apparels. Huge Collection of Branded Clothes Only at Flipkart.com', '[\"http://img6a.flixcart.com/image/legging-jegging/f/c/7/1-1-lg-green08-fdt-xl-original-imae58jpwqj5gh5e.jpeg\", \"http://img5a.flixcart.com/image/legging-jegging/f/c/7/1-1-lg-green08-fdt-xl-original-imae58jpfg5zmjmg.jpeg\", \"http://img6a.flixcart.com/image/l', 'Clothing', 1),
(29, 'Madcaps C38GR30 Men\'s Cargos', '', '2199', 'Madcaps C38GR30 Men\'s Cargos - Buy Green Madcaps C38GR30 Men\'s Cargos For Only Rs. 2199 Online in India. Shop Online For Apparels. Huge Collection of Branded Clothes Only at Flipkart.com', '[\"http://img5a.flixcart.com/image/cargo/n/g/h/cargo-38-green-madcaps-34-original-imae5qgvt3fhqq33.jpeg\", \"http://img5a.flixcart.com/image/cargo/n/g/h/cargo-38-green-madcaps-34-original-imae5qgvbqb7whjq.jpeg\", \"http://img6a.flixcart.com/image/cargo/n/g/h/c', 'Clothing', 1),
(30, 'Bengal Blooms Rose Artificial Plant  with Pot', 'Bengal Blooms', '799', 'Key Features of Bengal Blooms Rose Artificial Plant  with Pot Assorted Height: 30 cm,Bengal Blooms Rose Artificial Plant  with Pot (30 cm, Multicolor) Price: Rs. 579 The Bengal Blooms Decor your home with artificial flowers attached to a wonderful pot.,Specifications of Bengal Blooms Rose Artificial Plant  with Pot (30 cm, Multicolor) General Brand Bengal Blooms Model Number BBAJC218 Type Assorted Bonsai No Model Name Rose Color Multicolor Pot Features Pot Included Yes Dimensions Total Height 30 cm In the Box Sales Package 1 Assorted Artificial plant with Pot', '[\"http://img5a.flixcart.com/image/artificial-plant/g/s/n/bbajc218-bengal-blooms-original-imaeg8ety3zfcnvw.jpeg\", \"http://img6a.flixcart.com/image/artificial-plant/g/s/n/bbajc218-bengal-blooms-original-imaeg8ety3zfcnvw.jpeg\"]', 'Bengal', 1),
(31, 'Indcrown Net Embroidered Semi-stitched Lehenga Choli Material', 'Indcrown', '999', 'Key Features of Indcrown Net Embroidered Semi-stitched Lehenga Choli Material Ghagra Choli , Ghagra, Choli, Dupatta Set , Lehenga Choli , Lehenga, Choli and Dupatta Set .,Indcrown Net Embroidered Semi-stitched Lehenga Choli Material (Semi-stitched) Price: Rs. 699 We have not authorised any other seller to sell our brand Indcrown . Any seller doing so is selling fake Indcrown Products. Buy original Indcrown products from the seller \" indcrown‘’ only,Specifications of Indcrown Net Embroidered Semi-stitched Lehenga Choli Material (Semi-stitched) Fabric Details Fabric Net Type Semi-stitched Lehenga Choli Material General Details Pattern Embroidered Ideal For Women\'s Color Multicolor Fabric Care Dry clean or else Normal Hand Wash Additional Details Other Details Lehnga Choli is an Indian traditional ware also known as Chaniya Choli. We at Bolly Lounge offers you to attract compliments by this attractive Lehnga Choli made with fine quality material and beautiful work which can be worn for functions, festivals, parties and even office also. This Lehnga Choli ...View More Lehnga Choli is an Indian traditional ware also known as Chaniya Choli. We at Bolly Lounge offers you to attract compliments by this attractive Lehnga Choli made with fine quality material and beautiful work which can be worn for functions, festivals, parties and even office also. This Lehnga Choli is comes with unstitched material so it can be stitched according to your taste and preference. Stunning Self Designed Partywear Salwar Suit Gives A Trendy Look. Suit Having Fine Embroidery Work Over All. A Fine Fabric Used To Make It, It Will Be Comfortable In All Season. Style Code R C Lehe Bt In the Box 1 Lehenga Choli And Duppta Set', '[\"http://img5a.flixcart.com/image/fabric/h/k/a/r-c-lehe-bt-indcrown-1000x1000-imaejbczsqzjrbfd.jpeg\", \"http://img5a.flixcart.com/image/fabric/h/k/a/r-c-lehe-bt-indcrown-original-imaejbczsqzjrbfd.jpeg\", \"http://img6a.flixcart.com/image/fabric/h/k/a/r-c-leh', 'Clothing', 1),
(32, 'Shopmania Music Band A5 Notebook Spiral Bound', 'Shopmania', '499', 'Specifications of Shopmania Music Band A5 Notebook Spiral Bound (Multicolor) General Ruling Ruled Model id NB00664 Type Notebook GSM 75 Cover Type 300 GSM Hard Laminated Cover No. of Pages 160 Brand Name Shopmania Binding Spiral Bound Color Multicolor Size A5 Dimensions Length 9 inch Width 6 inch Special Features Can be used as Notepad, Diary, Writing pad In the Box Sales Package 1 Notebook', '[\"http://img5a.flixcart.com/image/diary-notebook/g/y/y/shopmania-nb00664-1100x1100-imaej4wguh2c6dfb.jpeg\", \"http://img5a.flixcart.com/image/diary-notebook/g/y/y/shopmania-nb00664-original-imaej4wguh2c6dfb.jpeg\"]', 'Pens', 1),
(33, 'Shopmania Music Band A5 Notebook Spiral Bound', 'Shopmania', '499', 'Specifications of Shopmania Music Band A5 Notebook Spiral Bound (Multicolor) General Ruling Ruled Model id NB00678 Type Notebook GSM 75 Cover Type 300 GSM Hard Laminated Cover No. of Pages 160 Brand Name Shopmania Binding Spiral Bound Color Multicolor Size A5 Dimensions Length 9 inch Width 6 inch Special Features Can be used as Notepad, Diary, Writing pad In the Box Sales Package 1 Notebook', '[\"http://img5a.flixcart.com/image/diary-notebook/e/g/h/shopmania-nb00678-1100x1100-imaej4whhbgzn5z3.jpeg\", \"http://img6a.flixcart.com/image/diary-notebook/e/g/h/shopmania-nb00678-original-imaej4whhbgzn5z3.jpeg\"]', 'Pens', 1),
(34, 'Tiara Diaries 2016-2017 Designer LA Kaarta \"TAKING ACTION GETTING RESULT\" (Set of 3) B5 Notebook Hard Bound', 'Tiara Diaries', '1000', 'Specifications of Tiara Diaries 2016-2017 Designer LA Kaarta \"TAKING ACTION GETTING RESULT\" (Set of 3) B5 Notebook Hard Bound (Coffee, Pack of 3) General Ruling ruled Model id 244 Type Notebook No. of Pages 216 Brand Name Tiara Diaries Binding Hard Bound Size B5 Color Coffee', '[\"http://img6a.flixcart.com/image/diary-notebook/6/j/u/tiara-diaries-244-original-imaej4qrfnczpn8k.jpeg\", \"http://img5a.flixcart.com/image/diary-notebook/6/j/u/tiara-diaries-244-original-imaej4qrfnczpn8k.jpeg\"]', 'Pens', 1),
(35, 'KAJCI Embroidered Women\'s Waistcoat', 'KAJCI', '1200', 'Specifications of KAJCI Embroidered Women\'s Waistcoat General Details Pattern Embroidered Ideal For Women\'s Waistcoat Details Fabric Art Silk In the Box Waistcoat Additional Details Style Code LKOD112 Fabric Care Dry Clean Only', '[\"http://img5a.flixcart.com/image/waistcoat/v/z/6/lkod112-kajci-free-original-imaefwvnru9yxeee.jpeg\", \"http://img5a.flixcart.com/image/waistcoat/v/z/6/lkod112-kajci-free-original-imaefwvngrpzz7hf.jpeg\", \"http://img6a.flixcart.com/image/waistcoat/v/z/6/lko', 'Clothing', 1),
(36, 'Packman 8 x 10 inches Security Bags Without POD Jacket Courier Bag Security Bag', 'Packman', '350', 'Key Features of Packman 8 x 10 inches Security Bags Without POD Jacket Courier Bag Security Bag Supplying to Over 200 Companies around world International E-commerce Standard Direct From ISO 9002 Factory 60 Microns High Quality Bags Longer Lasting Protection,Packman 8 x 10 inches Security Bags Without POD Jacket Courier Bag Security Bag (21.59 x 27.95 Pack of 100) Price: Rs. 298 Courier Bag,Specifications of Packman 8 x 10 inches Security Bags Without POD Jacket Courier Bag Security Bag (21.59 x 27.95 Pack of 100) General Bubble Wrap Present No Brand Packman Model Number 8 x 10 inches Security Bags Without POD Jacket Courier Bag Water Resistant Yes Tamper Proof Yes Material Plastic POD Jacket Available No Color Grey Size 21.59 x 27.95 Dimensions Weight 600 g Other Dimensions 8 x 10 Thickness 60 micron Additional Features Other Features security bag In the Box Sales Package 1 pack contains 100 pcs Pack of 100', '[\"http://img6a.flixcart.com/image/packaging-security-bag/6/y/q/8-x-10-inches-security-bags-without-pod-jacket-courier-bag-1100x1100-imaegbjpxtthuyzc.jpeg\", \"http://img5a.flixcart.com/image/packaging-security-bag/6/y/q/8-x-10-inches-security-bags-without-p', 'Pens', 1),
(37, 'Pick Pocket Embroidered Women\'s Waistcoat', 'Pick Pocket', '899', 'Specifications of Pick Pocket Embroidered Women\'s Waistcoat General Details Pattern Embroidered Occasion Casual Ideal For Women\'s Waistcoat Details Lining Polyester Fabric Bengal Silk Additional Details Style Code TL-012 Fabric Care First Time Dry Clean', '[\"http://img6a.flixcart.com/image/waistcoat/d/z/y/tl-012-pick-pocket-xxl-original-imaefurn2xrqf4ef.jpeg\", \"http://img5a.flixcart.com/image/waistcoat/d/z/y/tl-012-pick-pocket-xxl-original-imaefurn2xrqf4ef.jpeg\", \"http://img5a.flixcart.com/image/waistcoat/d', 'Clothing', 1),
(38, 'Angelfish Silk Potali Potli', 'Angelfish', '999', 'Angelfish Silk Potali Potli (Multicolor) Price: Rs. 399 Made by silk Fabric with fancy lace adnored and stylish handle also.(set of 2 piece),Specifications of Angelfish Silk Potali Potli (Multicolor) General Closure Velcro Type Potli Material Fabric Style Code AELKABJ01224-A Ideal For Girls Bag Size Small Occasion Party Color Code Multicolor Dimensions Weight 200 g Body Features Number of Compartments 1', '[\"http://img6a.flixcart.com/image/pouch-potli/u/x/v/aelkabj01224-a-angelfish-potli-silk-potali-original-imaeeprygdj223es.jpeg\", \"http://img5a.flixcart.com/image/pouch-potli/u/x/v/aelkabj01224-a-angelfish-potli-silk-potali-original-imaeepryxh8xez64.jpeg\", ', 'Bags,', 1),
(39, 'Oye Boy\'s Dungaree', 'Oye', '899', 'Specifications of Oye Boy\'s Dungaree Top Details Number of Contents in Sales Package Pack of 1 Fabric Cotton Type Dungaree General Details Pattern Solid Ideal For Boy\'s In the Box 1 Dungaree', '[\"http://img6a.flixcart.com/image/dungaree-romper/9/z/d/bpr0015-oye-1-2-years-original-imaeeyu6ashttgyv.jpeg\", \"http://img5a.flixcart.com/image/dungaree-romper/9/z/d/bpr0015-oye-1-2-years-original-imaeeyu6ashttgyv.jpeg\", \"http://img6a.flixcart.com/image/d', 'Clothing', 1),
(40, 'Nuride Canvas Shoes', 'Nuride', '1999', 'Key Features of Nuride Canvas Shoes Material: Canvas Occasion: Casual Color: Red Heel Height: 0.5,Specifications of Nuride Canvas Shoes General Occasion Casual Ideal For Women Shoe Details Heel Height 0.5 inch Outer Material Canvas Color Red', '[\"http://img6a.flixcart.com/image/shoe/g/6/e/red-1216-nuride-41-original-imaedsa82yrz5hxu.jpeg\", \"http://img6a.flixcart.com/image/shoe/g/6/e/red-1216-nuride-41-original-imaedsa8ygreggzk.jpeg\", \"http://img5a.flixcart.com/image/shoe/g/6/e/red-1216-nuride-39', 'Footwear', 1),
(41, 'OM SHIVAKRITI Square wall Clock Showpiece  -  38.1 cm', 'OM SHIVAKRITI', '1499', 'Key Features of OM SHIVAKRITI Square wall Clock Showpiece  -  38.1 cm Paper Mache Height - 38.1 cm Width - 38.1 cm,OM SHIVAKRITI Square wall Clock Showpiece  -  38.1 cm (Paper Mache, Multicolor) Price: Rs. 1,499 Omshivakriti brings you this square wall watch made from paper mache and finished in attractive set of colors. The product in display is ideal to décor your home.,Specifications of OM SHIVAKRITI Square wall Clock Showpiece  -  38.1 cm (Paper Mache, Multicolor) General Brand OM SHIVAKRITI Model Number OSK60 Type Antique Material Paper Mache Model Name Square wall Clock Color Multicolor Dimensions Height 38.1 cm Width 38.1 cm Depth 3.81 cm In the Box Sales Package 1 showpiece', '[\"http://img6a.flixcart.com/image/showpiece-figurine/r/y/y/osk60-om-shivakriti-original-imaehpu5jajh93bu.jpeg\", \"http://img6a.flixcart.com/image/showpiece-figurine/r/y/y/osk60-om-shivakriti-original-imaehpu5xexmygsk.jpeg\"]', 'Home', 1),
(42, 'Himmlisch ST381 Magnetic Sun Shade For Maruti Alto', 'Himmlisch', '6999', 'Himmlisch ST381 Magnetic Sun Shade For Maruti Alto (Side Window) Price: Rs. 1,899 Beat the heat this summer and feel like a VIP with Himmlisch Car Window Magnetic Sunshades. These magnetic sunshades create a mesh layer to stops the heat. Magnet border gets easily stick to your car window door edges (No need of Suction cups) Features: Block UV Rays Keeps Car Cool Easy to install and remove Durable and Exact Fit Provides Complete privacy Resists Heat Mesh Type Sunshade Package Contents: 1 x Set Of 4 Magnetic Sunshades,Specifications of Himmlisch ST381 Magnetic Sun Shade For Maruti Alto (Side Window) General Brand Himmlisch Model Number ST381 Magnetic Placement Position Side Window Color Black Dimensions Weight 4000 g Depth 1.1 cm In the Box Sales Package 4 Sun Shade Pack of 4', '[\"http://img5a.flixcart.com/image/sun-shade/5/2/y/pp48-car-magnetic-himmlisch-1100x1100-imaegujvyzrc8eh6.jpeg\", \"http://img6a.flixcart.com/image/sun-shade/5/2/y/pp48-car-magnetic-himmlisch-original-imaegujvyzrc8eh6.jpeg\"]', 'Automotive', 1),
(43, 'Rapter BNC-179 BNC Wire Connector', 'Rapter', '2299', 'Rapter BNC-179 BNC Wire Connector (Silver, Pack of 100) Price: Rs. 1,400 Rapter Pack of 100 BNC Connector.Superior quality BNC Connectors with high quality outer metel and brass conductors used to maintain a proper video/signal quality.BNC normally used in co-axial cables to lock with female connectors which ensures permanancy of connection.They can be used in DVRs, NVRs and CCTV Cameras etc.,Specifications of Rapter BNC-179 BNC Wire Connector (Silver, Pack of 100) General Brand Rapter Suitable For Wire to Wire Connection, Wire to Circuit Board Connection Model Number BNC-179 Type BNC Waterproof Yes Corrosion Proof Yes Color Silver In the box Sales Package 100 BNC Connector Pack of 100', '[\"http://img6a.flixcart.com/image/wire-joint-connector/n/r/f/bnc-057-rapter-100-1100x1100-imaehffvdkwk4jzh.jpeg\", \"http://img5a.flixcart.com/image/wire-joint-connector/n/r/f/bnc-057-rapter-100-original-imaehffvdkwk4jzh.jpeg\"]', 'Tools', 1),
(44, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '999', 'Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% Cotton Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004384 NAVY BLUE Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img5a.flixcart.com/image/kurta/d/s/y/vnku004384-navy-blue-vishudh-xxl-original-imaehdjsznaevbpj.jpeg\", \"http://img6a.flixcart.com/image/kurta/d/s/y/vnku004384-navy-blue-vishudh-xxl-original-imaehdjt7p8hrqp8.jpeg\", \"http://img6a.flixcart.com/image', 'Vishudh', 1),
(45, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '899', 'Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% POLYESTER Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004370 PINK::OLIVE Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img5a.flixcart.com/image/kurta/s/c/g/vnku004370-pink-olive-vishudh-xxl-original-imaehdjsyzzfv6rj.jpeg\", \"http://img6a.flixcart.com/image/kurta/s/c/g/vnku004370-pink-olive-vishudh-xxl-original-imaehdjscr2pabpv.jpeg\", \"http://img6a.flixcart.com/ima', 'Vishudh', 1),
(46, 'Vishudh Printed Women\'s Anarkali Kurta', 'Vishudh', '2099', 'Specifications of Vishudh Printed Women\'s Anarkali Kurta Kurta Details Sleeve Half Sleeve Number of Contents in Sales Package Pack of 1 Fabric 100% Cotton Type Anarkali Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004389 BEIGE::PINK Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img5a.flixcart.com/image/kurta/f/c/4/vnku004389-beige-pink-vishudh-xl-original-imaehdjtwsnkgzvy.jpeg\", \"http://img6a.flixcart.com/image/kurta/f/c/4/vnku004389-beige-pink-vishudh-xl-original-imaehdjtwsnkgzvy.jpeg\", \"http://img6a.flixcart.com/image', 'Vishudh', 1),
(47, 'BuildTrack PIR Wireless Motion Sensor - One Switch Control Wireless Sensor Security System', 'BuildTrack', '6500', 'Key Features of BuildTrack PIR Wireless Motion Sensor - One Switch Control Wireless Sensor Security System National Award Winning Product Long Battery Life Freely Placed Low Power Consumed,BuildTrack PIR Wireless Motion Sensor - One Switch Control Wireless Sensor Security System Price: Rs. 5,000 Buildtrack\'s Wireless Motion Sensor turns your existing light switches off when you leave the room and turns them on when you return. This model is ideal for fitting on a ceiling. It is battery powered and will work with One Single Switch. Using Wireless Motion Sensor stops Wastage of Energy and Lower your Electricity Bills. It is highly suitable for homes, institutions, banks, offices and healthcare. • Saves Energy • Lowers electricity bills • National Award Winning Product • Adds convenience • Works with existing switches, no re – wiring • Quick and easy installation • Freely placed • Long battery life • Single device for multiple switches • No aesthetic changes / No external wiring • Adjustable time delay for turning off,Related video of BuildTrack PIR Wireless Motion Sensor - One Switch Control Wireless Sensor Security System,Specifications of BuildTrack PIR Wireless Motion Sensor - One Switch Control Wireless Sensor Security System General Detection Angle 360 degree Brand BuildTrack Brand Color Off White Suitable For Homes, Offices, Intermittent Spaces, Warehouses, Industrial Spacing Wired/Wireless Wireless Display Type NA Installation Type Plug and Play, Simply Attached to the Ceiling Model Number PIR Wireless Motion Sensor - One Switch Control Audible Alarm No Maximum Alarm Distance 0 m Minimum Alarm Distance 0 m Detection Range 10 ft Number of Sensors 1 Color White Dimensions Weight 200 g Other Dimensions 106x106x71 mm Warranty Service Type Manufacturer\'s Warranty - 1 Year In the Box Wireless Motion Detector | Actuator | User Manual | Warranty Card Additional Features Other Features Saves Energy, Lowers Electricity Bills, Adds Convenience, Works with Existing Switches, No Re – Wiring, Quick and Easy Installation, Single Device for Multiple Switches, No Aesthetic Changes / No External Wiring, Adjustable Time Delay for Turning Off Technology Used Passive Infra Red (PIR)', '[\"http://img6a.flixcart.com/image/sensor-security-system/f/f/y/pir-wireless-motion-sensor-four-switch-control-buildtrack-original-imaehdg6h6zajg7w.jpeg\"]', 'BuildTrack', 1);
INSERT INTO `products` (`product_id`, `name`, `brand`, `price`, `details`, `img`, `category`, `availability`) VALUES
(48, 'Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired Sensor Security System', 'Skayvon', '9990', 'Key Features of Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired Sensor Security System Dry run protection L/H Voltage protection Corrosion free sensors Has Manual/Auto mode,Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired Sensor Security System Price: Rs. 4,990 \"This system is suitable for single phase submersible pump. The sytem auto start the submersible pump when water level in tank reaches preset lower level and auto switch off the pump when tank gets full.Upper and lower level is adjustable as per user choice. The system indicates 4 different levels of water (¼ , ½, ¾, and Full) of overhead tank. The system has Auto /manual switch.\",Related video of Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired Sensor Security System,Specifications of Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired Sensor Security System In the Box 1 pack of Skayvon SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER General Brand Skayvon Model Number SUMMERSIBLE SINGLE PHASE PUMP CONTROLLER Wired/Wireless Wired Number of Sensors 4 Brand Color Ivory Display Type LED Audible Alarm NO Installation Type Cabling Detection Range 987 ft Minimum Alarm Distance 10 m Maximum Alarm Distance 98 m Color Silver LED Indicators Yes', '[\"http://img5a.flixcart.com/image/sensor-security-system/p/f/9/summersible-single-phase-pump-controller-skayvon-original-imaehdu4e8e2nhmh.jpeg\", \"http://img6a.flixcart.com/image/sensor-security-system/p/f/9/summersible-single-phase-pump-controller-skayvon', 'Skayvon', 1),
(49, 'MASARA Solid Women\'s Straight Kurta', 'MASARA', '1399', 'Key Features of MASARA Solid Women\'s Straight Kurta Green Straight,MASARA Solid Women\'s Straight Kurta Price: Rs. 599 The knee length kurti with raindrop pattern with subtle colors will completely transform your look at your work place. Soft cotton fabric used in this kurti is to die for.,Specifications of MASARA Solid Women\'s Straight Kurta Kurta Details Sleeve 3/4 Sleeve Fabric Cotton Type Straight Neck Round General Details Pattern Solid Occasion Casual Ideal For Women\'s Additional Details Style Code M002PCOTSEARAIN', '[\"http://img6a.flixcart.com/image/kurta/6/f/e/m001pcotsearain-masara-m-original-imaeheqbtkykajsx.jpeg\", \"http://img6a.flixcart.com/image/kurta/6/f/e/m001pcotsearain-masara-m-original-imaeheqcnt2zv5ap.jpeg\", \"http://img6a.flixcart.com/image/kurta/a/t/9/m00', 'MASARA', 1),
(50, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '899', 'Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% POLYESTER Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004371 RUST::TEAL Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img5a.flixcart.com/image/kurta/y/h/j/vnku004371-rust-teal-vishudh-m-original-imaehdjsbfyfx5br.jpeg\", \"http://img6a.flixcart.com/image/kurta/y/h/j/vnku004371-rust-teal-vishudh-m-original-imaehdjsbfyfx5br.jpeg\", \"http://img6a.flixcart.com/image/kur', 'Vishudh', 1),
(51, 'Rapter BNC-047 BNC Wire Connector', 'Rapter', '1299', 'Rapter BNC-047 BNC Wire Connector (Silver, Pack of 64) Price: Rs. 899 Rapter Pack of 64 BNC Connector.Superior quality BNC Connectors with high quality outer metel and brass conductors used to maintain a proper video/signal quality.BNC normally used in co-axial cables to lock with female connectors which ensures permanancy of connection.They can be used in DVRs, NVRs and CCTV Cameras etc.,Specifications of Rapter BNC-047 BNC Wire Connector (Silver, Pack of 64) General Brand Rapter Suitable For Wire to Wire Connection, Wire to Circuit Board Connection Model Number BNC-047 Type BNC Waterproof Yes Corrosion Proof Yes Color Silver In the box Sales Package 64 BNC Connector Pack of 64', '[\"http://img5a.flixcart.com/image/wire-joint-connector/h/s/e/bnc-048-rapter-64-1100x1100-imaehffvf7nm3hrc.jpeg\", \"http://img6a.flixcart.com/image/wire-joint-connector/h/s/e/bnc-048-rapter-64-original-imaehffvf7nm3hrc.jpeg\"]', 'Tools', 1),
(52, 'Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired Sensor Security System', 'Skayvon', '8999', 'Key Features of Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired Sensor Security System Dry run protection L/H Voltage protection Corrosion free sensors Has Manual/Auto mode,Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired Sensor Security System Price: Rs. 4,990 \"This system is suitable for Three phase submersible pump. The sytem auto start the submersible pump when water level in tank reaches preset lower level and auto switch off the pump when tank gets full.Upper and lower level is adjustable as per user choice. The system indicates 4 different levels of water (¼ , ½, ¾, and Full) of overhead tank. The system has Auto /manual switch.\",Related video of Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired Sensor Security System,Specifications of Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired Sensor Security System In the Box 1 pack of Skayvon SUBMERSIBBLE THREE PHASE PUMP CONTROLLER General Brand Skayvon Model Number SUBMERSIBBLE THREE PHASE PUMP CONTROLLER Wired/Wireless Wired Number of Sensors 4 Brand Color Ivory Display Type LED Audible Alarm NO Installation Type Cabling Detection Range 987 ft Minimum Alarm Distance 10 m Maximum Alarm Distance 98 m Color Silver LED Indicators Yes Stand By Yes Additional Features Certification ISO 9001:2008', '[\"http://img5a.flixcart.com/image/sensor-security-system/g/s/h/submersibble-three-phase-pump-controller-skayvon-original-imaehfunbm4wfmgf.jpeg\", \"http://img6a.flixcart.com/image/sensor-security-system/g/s/h/submersibble-three-phase-pump-controller-skayvon', 'Skayvon', 1),
(53, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '899', 'Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% POLYESTER Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004373 BLACK::MAROON Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img5a.flixcart.com/image/kurta/p/3/w/vnku004373-black-maroon-vishudh-s-original-imaehdjstqbpm9p3.jpeg\", \"http://img6a.flixcart.com/image/kurta/p/3/w/vnku004373-black-maroon-vishudh-s-original-imaehdjstqbpm9p3.jpeg\", \"http://img5a.flixcart.com/ima', 'Vishudh', 1),
(54, 'Behringer Xenyx 502 Analog Sound Mixer', 'Behringer', '10000', 'Specifications of Behringer Xenyx 502 Analog Sound Mixer In The Box 1 Sound Mixer General Number of Faders 4 Brand Behringer Application Type Live Performance Mixer Number of Channels 5 Model Number Xenyx 502 Channel Equalizer Type 2 band EQ Type Analog Number of Bus 2 On-board Effects No Dimensions Weight 1 kg Height 15 cm Width 15 cm Warranty Covered in Warranty Warranty of the product is limited to manufacturing defects only Warranty Summary 1 year India Warranty Service Type Customer needs to send the product to the authorized service centre of the company in case of any problem Not Covered in Warranty Warranty does not cover product damaged while in use by customer Power Features Power Consumption 50 Power Requirements 230V AC', '[\"http://img6a.flixcart.com/image/sound-mixer/j/c/q/xenyx-502-behringer-1100x1100-imaehep2vzqppdnx.jpeg\", \"http://img5a.flixcart.com/image/sound-mixer/j/c/q/xenyx-502-behringer-original-imaehep2vzqppdnx.jpeg\"]', 'Behringer', 1),
(55, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '899', 'Key Features of Vishudh Printed Women\'s Straight Kurta BLACK, GREY Straight,Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% POLYESTER Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004374 BLACK::GREY Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img6a.flixcart.com/image/kurta/9/s/y/vnku004374-black-grey-vishudh-xxl-original-imaehdjrh2xqguvh.jpeg\", \"http://img5a.flixcart.com/image/kurta/9/s/y/vnku004374-black-grey-vishudh-xxl-original-imaehdjrh2xqguvh.jpeg\", \"http://img5a.flixcart.com/ima', 'Vishudh', 1),
(56, 'Vishudh Printed Women\'s Straight Kurta', 'Vishudh', '899', 'Specifications of Vishudh Printed Women\'s Straight Kurta Kurta Details Sleeve Sleeveless Number of Contents in Sales Package Pack of 1 Fabric 100% POLYESTER Type Straight Neck ROUND NECK General Details Pattern Printed Occasion Festive Ideal For Women\'s In the Box Kurta Additional Details Style Code VNKU004372 PURPLE::PLUM Fabric Care Gentle Machine Wash in Lukewarm Water, Do Not Bleach', '[\"http://img6a.flixcart.com/image/kurta/8/w/p/vnku004372-purple-plum-vishudh-xxl-original-imaehdjswwnuh7ph.jpeg\", \"http://img5a.flixcart.com/image/kurta/8/w/p/vnku004372-purple-plum-vishudh-s-original-imaehdjst6vufgnh.jpeg\", \"http://img6a.flixcart.com/ima', 'Vishudh', 1),
(57, 'MASARA Solid Women\'s Straight Kurta', 'MASARA', '1399', 'Key Features of MASARA Solid Women\'s Straight Kurta Green Straight,MASARA Solid Women\'s Straight Kurta Price: Rs. 599 The knee length kurti with raindrop pattern with subtle colors will completely transform your look at your work place. Soft cotton fabric used in this kurti is to die for.,Specifications of MASARA Solid Women\'s Straight Kurta Kurta Details Sleeve 3/4 Sleeve Fabric Cotton Type Straight Neck Round General Details Pattern Solid Occasion Casual Ideal For Women\'s Additional Details Style Code M003PCOTSEARAIN', '[\"http://img6a.flixcart.com/image/kurta/6/f/e/m001pcotsearain-masara-m-original-imaeheqbtkykajsx.jpeg\", \"http://img6a.flixcart.com/image/kurta/6/f/e/m001pcotsearain-masara-m-original-imaeheqcnt2zv5ap.jpeg\", \"http://img6a.flixcart.com/image/kurta/a/t/9/m00', 'MASARA', 1),
(58, 'MASARA Solid Women\'s Straight Kurta', 'MASARA', '1399', 'Key Features of MASARA Solid Women\'s Straight Kurta Red Straight,MASARA Solid Women\'s Straight Kurta Price: Rs. 550 The blooming flowers of summer aren’t just for the gardens anymore. Bold floral prints on this knee-length cotton kurta allow you to effortlessly coordinate natural beauty into your outfit. The bright and pastel colors provide a more graceful feature to the ensemble.,Specifications of MASARA Solid Women\'s Straight Kurta Kurta Details Sleeve 3/4 Sleeve Fabric Cotton Type Straight Neck Round General Details Pattern Solid Occasion Casual Ideal For Women\'s Additional Details Style Code M002PCOTREDGAR', '[\"http://img6a.flixcart.com/image/kurta/x/g/k/m002pcotredgar-masara-xxl-original-imaeheqb9kx26gqg.jpeg\", \"http://img5a.flixcart.com/image/kurta/x/g/k/m002pcotredgar-masara-xxl-original-imaeheqb9kx26gqg.jpeg\", \"http://img6a.flixcart.com/image/kurta/x/g/k/m', 'MASARA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `review_text` text NOT NULL,
  `review_date` date NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
