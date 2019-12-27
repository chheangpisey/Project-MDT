CREATE TABLE `Category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_name` varchar(50),
  `description` text(2000),
  `c_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Linen_size` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int(12),
  `linen_size` string(50),
  `description` string(2000),
  `ls_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Linen_template` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int,
  `linen_size_id` int,
  `linen_name` varchar(200),
  `l_status` boolean,
  `description` text(2000),
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Linen` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int,
  `linen_size_id` int,
  `RFID` varchar(150),
  `linen_name` varchar(200),
  `status` int,
  `place_id` int,
  `l_status` boolean,
  `description` text(2000),
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Linen_history` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `category_id` int,
  `linen_size_id` int,
  `RFID` varchar(150),
  `linen_name` varchar(200),
  `status` int,
  `place_id` int,
  `l_status` boolean,
  `description` text(2000),
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Hotel` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(200),
  `phone_no_1` varchar(20),
  `phone_no_2` varchar(20),
  `email_address` varchar(50),
  `address` text(500),
  `latitude` long,
  `longitude` long,
  `description` text(2000),
  `h_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Position` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `position` varchar(200),
  `p_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Hotel_user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `hotel_id` int,
  `first_name` varchar(50),
  `middle_name` varchar(50),
  `last_name` varchar(50),
  `gender` int,
  `dob` datetime,
  `age` int,
  `phone_no` varchar(20),
  `email_address` varchar(50),
  `username` varchar(50),
  `password` varchar(50),
  `address` text(2000),
  `description` text(2000),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Hotel_user_token` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `hotel_user_id` int,
  `token` text(2000),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Gender` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `gender` varchar(10)
);

CREATE TABLE `Deliver` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(50),
  `middle_name` varchar(50),
  `last_name` varchar(50),
  `gender` int,
  `dob` datetime,
  `age` int,
  `phone_no` varchar(20),
  `email_address` varchar(50),
  `address` text(2000),
  `description` text(2000),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Place` (
  `id` int,
  `place` varchar(50),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Temp_bill` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `bill_id` varchar(50),
  `hotel_id` int,
  `deliver_id` int,
  `place_id` int,
  `qty_soil` int,
  `price_soil` double,
  `qty_stain` int,
  `price_stain` double,
  `qty_torn` int,
  `price_torn` double,
  `qty_discard` int,
  `price_discard` double,
  `qty_clean` int,
  `sub_total` double,
  `description` text(2000),
  `b_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Temp_bill_detail` (
  `id` int(pk, increment),
  `bill_id` int,
  `linen_id` int,
  `type` int,
  `bd_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Temp_limen_image` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `bill_id` int,
  `linen_id` int,
  `image_url` text(500),
  `b_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Bill` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `bill_id` varchar(50),
  `hotel_id` int,
  `deliver_id` int,
  `place_id` int,
  `qty_soil` int,
  `price_soil` double,
  `qty_stain` int,
  `price_stain` double,
  `qty_torn` int,
  `price_torn` double,
  `qty_discard` int,
  `price_discard` double,
  `qty_clean` int,
  `sub_total` double,
  `description` text(2000),
  `b_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Bill_detail` (
  `id` int(pk, increment),
  `bill_id` int,
  `linen_id` int,
  `type` int,
  `bd_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `Limen_image` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `bill_id` int,
  `linen_id` int,
  `image_url` text(500),
  `b_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `User` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(50),
  `middle_name` varchar(50),
  `last_name` varchar(50),
  `gender` int,
  `dob` datetime,
  `age` int,
  `phone_no` varchar(20),
  `email_address` varchar(50),
  `user_type` int,
  `username` varchar(50),
  `password` varchar(50),
  `address` text(2000),
  `description` text(2000),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE `User_token` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `token` text(2000),
  `d_status` boolean,
  `created_by` int(12),
  `updated_by` int(12),
  `created_at` datetime,
  `updated_at` datetime
);

ALTER TABLE `Category` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Category` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_size` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Linen_size` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_size` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_template` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Linen_template` ADD FOREIGN KEY (`linen_size_id`) REFERENCES `Linen_size` (`id`);

ALTER TABLE `Linen_template` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_template` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Linen` ADD FOREIGN KEY (`linen_size_id`) REFERENCES `Linen_size` (`id`);

ALTER TABLE `Linen` ADD FOREIGN KEY (`place_id`) REFERENCES `Place` (`id`);

ALTER TABLE `Linen` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_history` ADD FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);

ALTER TABLE `Linen_history` ADD FOREIGN KEY (`linen_size_id`) REFERENCES `Linen_size` (`id`);

ALTER TABLE `Linen_history` ADD FOREIGN KEY (`place_id`) REFERENCES `Place` (`id`);

ALTER TABLE `Linen_history` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Linen_history` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Position` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Position` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel_user` ADD FOREIGN KEY (`hotel_id`) REFERENCES `Hotel` (`id`);

ALTER TABLE `Hotel_user` ADD FOREIGN KEY (`gender`) REFERENCES `Gender` (`id`);

ALTER TABLE `Hotel_user` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel_user` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel_user_token` ADD FOREIGN KEY (`hotel_user_id`) REFERENCES `Hotel_user` (`id`);

ALTER TABLE `Hotel_user_token` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Hotel_user_token` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Deliver` ADD FOREIGN KEY (`gender`) REFERENCES `Gender` (`id`);

ALTER TABLE `Deliver` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Deliver` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Place` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Place` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_bill` ADD FOREIGN KEY (`hotel_id`) REFERENCES `Hotel` (`id`);

ALTER TABLE `Temp_bill` ADD FOREIGN KEY (`deliver_id`) REFERENCES `Deliver` (`id`);

ALTER TABLE `Temp_bill` ADD FOREIGN KEY (`place_id`) REFERENCES `Place` (`id`);

ALTER TABLE `Temp_bill` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_bill` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_bill_detail` ADD FOREIGN KEY (`bill_id`) REFERENCES `Temp_bill` (`id`);

ALTER TABLE `Temp_bill_detail` ADD FOREIGN KEY (`linen_id`) REFERENCES `Linen` (`id`);

ALTER TABLE `Temp_bill_detail` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_bill_detail` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_limen_image` ADD FOREIGN KEY (`bill_id`) REFERENCES `Temp_bill` (`id`);

ALTER TABLE `Temp_limen_image` ADD FOREIGN KEY (`linen_id`) REFERENCES `Linen` (`id`);

ALTER TABLE `Temp_limen_image` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Temp_limen_image` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`hotel_id`) REFERENCES `Hotel` (`id`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`deliver_id`) REFERENCES `Deliver` (`id`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`place_id`) REFERENCES `Place` (`id`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Bill_detail` ADD FOREIGN KEY (`bill_id`) REFERENCES `Bill` (`id`);

ALTER TABLE `Bill_detail` ADD FOREIGN KEY (`linen_id`) REFERENCES `Linen` (`id`);

ALTER TABLE `Bill_detail` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Bill_detail` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);

ALTER TABLE `Limen_image` ADD FOREIGN KEY (`bill_id`) REFERENCES `Bill` (`id`);

ALTER TABLE `Limen_image` ADD FOREIGN KEY (`linen_id`) REFERENCES `Linen` (`id`);

ALTER TABLE `Limen_image` ADD FOREIGN KEY (`created_by`) REFERENCES `User` (`id`);

ALTER TABLE `Limen_image` ADD FOREIGN KEY (`updated_by`) REFERENCES `User` (`id`);
