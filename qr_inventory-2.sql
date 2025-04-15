-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2025 at 05:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory_logs`
--

CREATE TABLE `inventory_logs` (
  `id` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `action` varchar(50) NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `quantity`, `price`, `created_at`) VALUES
('C001', 'Men\'s Jeans', 'clothing', 45, 59.99, '2025-04-14 17:47:06'),
('C002', 'Women\'s Dress', 'clothing', 35, 79.99, '2025-04-14 17:47:06'),
('C003', 'Winter Jacket', 'clothing', 25, 129.99, '2025-04-14 17:47:06'),
('C004', 'Running Shoes', 'clothing', 30, 89.99, '2025-04-14 17:47:06'),
('C005', 'T-Shirt Pack', 'clothing', 60, 29.99, '2025-04-14 17:47:06'),
('C006', 'Yoga Pants', 'clothing', 40, 49.99, '2025-04-14 17:47:06'),
('C007', 'Sweater', 'clothing', 28, 69.99, '2025-04-14 17:47:06'),
('C008', 'Business Suit', 'clothing', 15, 299.99, '2025-04-14 17:47:06'),
('C009', 'Summer Shorts', 'clothing', 50, 34.99, '2025-04-14 17:47:06'),
('C010', 'Rain Boots', 'clothing', 20, 44.99, '2025-04-14 17:47:06'),
('C011', 'Leather Belt', 'clothing', 35, 29.99, '2025-04-14 17:47:06'),
('C012', 'Wool Socks', 'clothing', 75, 14.99, '2025-04-14 17:47:06'),
('C013', 'Baseball Cap', 'clothing', 45, 24.99, '2025-04-14 17:47:06'),
('C014', 'Sunglasses', 'clothing', 30, 79.99, '2025-04-14 17:47:06'),
('C015', 'Dress Shirt', 'clothing', 40, 59.99, '2025-04-14 17:47:06'),
('C016', 'Workout Shorts', 'clothing', 55, 29.99, '2025-04-14 17:47:06'),
('C017', 'Winter Gloves', 'clothing', 40, 19.99, '2025-04-14 17:47:06'),
('C018', 'Scarf Set', 'clothing', 30, 34.99, '2025-04-14 17:47:06'),
('C019', 'Hiking Boots', 'clothing', 18, 129.99, '2025-04-14 17:47:06'),
('C020', 'Swimwear', 'clothing', 40, 39.99, '2025-04-14 17:47:06'),
('C021', 'Denim Jacket', 'clothing', 25, 89.99, '2025-04-14 17:47:06'),
('C022', 'Polo Shirt', 'clothing', 35, 44.99, '2025-04-14 17:47:06'),
('C023', 'Leather Wallet', 'clothing', 40, 49.99, '2025-04-14 17:47:06'),
('C024', 'Running Socks', 'clothing', 60, 12.99, '2025-04-14 17:47:06'),
('C025', 'Beach Hat', 'clothing', 30, 24.99, '2025-04-14 17:47:06'),
('E001', 'iPhone 13 Pro', 'electronics', 15, 999.99, '2025-04-14 17:47:06'),
('E002', 'Samsung 4K TV', 'electronics', 8, 799.99, '2025-04-14 17:47:06'),
('E003', 'MacBook Air', 'electronics', 12, 1299.99, '2025-04-14 17:47:06'),
('E004', 'AirPods Pro', 'electronics', 25, 249.99, '2025-04-14 17:47:06'),
('E005', 'Dell XPS Laptop', 'electronics', 7, 1499.99, '2025-04-14 17:47:06'),
('E006', 'iPad Mini', 'electronics', 18, 499.99, '2025-04-14 17:47:06'),
('E007', 'Sony PlayStation 5', 'electronics', 5, 499.99, '2025-04-14 17:47:06'),
('E008', 'Nintendo Switch', 'electronics', 20, 299.99, '2025-04-14 17:47:06'),
('E009', 'Canon EOS Camera', 'electronics', 9, 699.99, '2025-04-14 17:47:06'),
('E010', 'Bose Headphones', 'electronics', 15, 349.99, '2025-04-14 17:47:06'),
('E011', 'Apple Watch', 'electronics', 22, 399.99, '2025-04-14 17:47:06'),
('E012', 'Google Pixel 6', 'electronics', 13, 699.99, '2025-04-14 17:47:06'),
('E013', 'Samsung Galaxy Tab', 'electronics', 11, 449.99, '2025-04-14 17:47:06'),
('E014', 'LG OLED TV', 'electronics', 6, 1299.99, '2025-04-14 17:47:06'),
('E015', 'Microsoft Surface', 'electronics', 9, 899.99, '2025-04-14 17:47:06'),
('E016', 'Roku Streaming Stick', 'electronics', 30, 49.99, '2025-04-14 17:47:06'),
('E017', 'Ring Doorbell', 'electronics', 17, 199.99, '2025-04-14 17:47:06'),
('E018', 'Echo Dot', 'electronics', 40, 49.99, '2025-04-14 17:47:06'),
('E019', 'GoPro Camera', 'electronics', 14, 399.99, '2025-04-14 17:47:06'),
('E020', 'Wireless Mouse', 'electronics', 50, 29.99, '2025-04-14 17:47:06'),
('E021', 'Wireless Charger', 'electronics', 45, 29.99, '2025-04-14 17:47:06'),
('E022', 'Bluetooth Speaker', 'electronics', 28, 79.99, '2025-04-14 17:47:06'),
('E023', 'Smartwatch', 'electronics', 15, 199.99, '2025-04-14 17:47:06'),
('E024', 'Gaming Mouse', 'electronics', 32, 59.99, '2025-04-14 17:47:06'),
('E025', 'USB-C Hub', 'electronics', 40, 39.99, '2025-04-14 17:47:06'),
('F001', 'Leather Sofa', 'furniture', 4, 899.99, '2025-04-14 17:47:06'),
('F002', 'Dining Table Set', 'furniture', 6, 599.99, '2025-04-14 17:47:06'),
('F003', 'Queen Bed Frame', 'furniture', 8, 499.99, '2025-04-14 17:47:06'),
('F004', 'Office Chair', 'furniture', 15, 199.99, '2025-04-14 17:47:06'),
('F005', 'Bookshelf', 'furniture', 12, 149.99, '2025-04-14 17:47:06'),
('F006', 'Coffee Table', 'furniture', 10, 249.99, '2025-04-14 17:47:06'),
('F007', 'Wardrobe Cabinet', 'furniture', 7, 399.99, '2025-04-14 17:47:06'),
('F008', 'TV Stand', 'furniture', 9, 179.99, '2025-04-14 17:47:06'),
('F009', 'Desk Lamp', 'furniture', 25, 39.99, '2025-04-14 17:47:06'),
('F010', 'Bean Bag Chair', 'furniture', 20, 89.99, '2025-04-14 17:47:06'),
('F011', 'Kitchen Island', 'furniture', 5, 349.99, '2025-04-14 17:47:06'),
('F012', 'Bar Stools Set', 'furniture', 16, 199.99, '2025-04-14 17:47:06'),
('F013', 'Side Table', 'furniture', 18, 79.99, '2025-04-14 17:47:06'),
('F014', 'Mirror Cabinet', 'furniture', 11, 159.99, '2025-04-14 17:47:06'),
('F015', 'Shoe Rack', 'furniture', 22, 49.99, '2025-04-14 17:47:06'),
('F016', 'Filing Cabinet', 'furniture', 13, 129.99, '2025-04-14 17:47:06'),
('F017', 'Bedside Table', 'furniture', 24, 89.99, '2025-04-14 17:47:06'),
('F018', 'Room Divider', 'furniture', 8, 159.99, '2025-04-14 17:47:06'),
('F019', 'Ottoman', 'furniture', 14, 119.99, '2025-04-14 17:47:06'),
('F020', 'Console Table', 'furniture', 9, 169.99, '2025-04-14 17:47:06'),
('F021', 'Floor Lamp', 'furniture', 12, 89.99, '2025-04-14 17:47:06'),
('F022', 'Storage Bench', 'furniture', 8, 159.99, '2025-04-14 17:47:06'),
('F023', 'Wall Shelf Set', 'furniture', 16, 69.99, '2025-04-14 17:47:06'),
('F024', 'Coat Rack', 'furniture', 20, 49.99, '2025-04-14 17:47:06'),
('F025', 'Kids Table', 'furniture', 10, 79.99, '2025-04-14 17:47:06'),
('O001', 'Yoga Mat', 'other', 25, 29.99, '2025-04-14 17:47:06'),
('O002', 'Water Bottle', 'other', 50, 19.99, '2025-04-14 17:47:06'),
('O003', 'Backpack', 'other', 30, 49.99, '2025-04-14 17:47:06'),
('O004', 'Wall Clock', 'other', 20, 24.99, '2025-04-14 17:47:06'),
('O005', 'Plant Pot', 'other', 40, 15.99, '2025-04-14 17:47:06'),
('O006', 'Throw Pillows', 'other', 35, 24.99, '2025-04-14 17:47:06'),
('O007', 'Board Game', 'other', 15, 39.99, '2025-04-14 17:47:06'),
('O008', 'Art Print', 'other', 25, 34.99, '2025-04-14 17:47:06'),
('O009', 'Lunch Box', 'other', 30, 19.99, '2025-04-14 17:47:06'),
('O010', 'Umbrella', 'other', 40, 22.99, '2025-04-14 17:47:06'),
('O011', 'Candle Set', 'other', 45, 29.99, '2025-04-14 17:47:06'),
('O012', 'Picture Frame', 'other', 35, 17.99, '2025-04-14 17:47:06'),
('O013', 'Desk Organizer', 'other', 28, 24.99, '2025-04-14 17:47:06'),
('O014', 'Sleeping Bag', 'other', 12, 79.99, '2025-04-14 17:47:06'),
('O015', 'Tool Kit', 'other', 15, 89.99, '2025-04-14 17:47:06'),
('O016', 'First Aid Kit', 'other', 25, 34.99, '2025-04-14 17:47:06'),
('O017', 'Camping Tent', 'other', 8, 199.99, '2025-04-14 17:47:06'),
('O018', 'Guitar Strings', 'other', 50, 14.99, '2025-04-14 17:47:06'),
('O019', 'Cooking Set', 'other', 10, 129.99, '2025-04-14 17:47:06'),
('O020', 'Chess Set', 'other', 18, 44.99, '2025-04-14 17:47:06'),
('O021', 'Fitness Band', 'other', 22, 29.99, '2025-04-14 17:47:06'),
('O022', 'Travel Pillow', 'other', 28, 19.99, '2025-04-14 17:47:06'),
('O023', 'Garden Tools', 'other', 15, 49.99, '2025-04-14 17:47:06'),
('O024', 'Desk Fan', 'other', 18, 34.99, '2025-04-14 17:47:06'),
('O025', 'Pet Bed', 'other', 12, 44.99, '2025-04-14 17:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `full_name`, `created_at`, `phone`, `company`, `address`, `website`) VALUES
(1, 'Suryadev_rana69', 'suryadev1218@gmail.com', '$2y$10$.RZko3F8khMe3/Ex6uNpRu57/dCbaDKSz7DGv31VACY1umPoseKZa', 'Suryadev rana', '2025-04-14 19:04:03', '9805301107', 'QR Nexus', 'New York, USA', 'QRCodeGenerated.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory_logs`
--
ALTER TABLE `inventory_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory_logs`
--
ALTER TABLE `inventory_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory_logs`
--
ALTER TABLE `inventory_logs`
  ADD CONSTRAINT `inventory_logs_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
