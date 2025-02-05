-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 02:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `quantity`, `total_price`, `created_at`) VALUES
(5, 2, 92, 4508091.08, '2025-02-04 15:10:03'),
(6, 3, 54, 539999.46, '2025-02-05 00:39:50'),
(7, 4, 54, 2160000.00, '2025-02-05 00:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `quantity`, `total_price`, `created_at`) VALUES
(3, 2, 12, 588011.88, '2025-02-04 11:53:03'),
(4, 4, 12, 480000.00, '2025-02-04 11:58:52'),
(5, 5, 1, 5000.99, '2025-02-04 12:00:08'),
(6, 5, 1, 5000.99, '2025-02-04 12:00:23'),
(7, 3, 1, 9999.99, '2025-02-04 12:06:28'),
(8, 3, 1, 9999.99, '2025-02-04 12:09:19'),
(9, 3, 1, 9999.99, '2025-02-04 12:13:11'),
(10, 4, 1, 40000.00, '2025-02-04 12:15:30'),
(12, 1, 1, 89999.99, '2025-02-04 12:47:33'),
(13, 1, 1, 89999.99, '2025-02-04 13:03:23'),
(14, 1, 1, 89999.99, '2025-02-04 13:08:43'),
(15, 2, 1, 49000.99, '2025-02-04 13:08:51'),
(16, 2, 1, 49000.99, '2025-02-04 13:22:50'),
(17, 1, 12, 1079999.88, '2025-02-04 14:26:45'),
(18, 1, 3, 269999.97, '2025-02-04 14:38:51'),
(19, 1, 5, 449999.95, '2025-02-04 14:39:16'),
(20, 1, 21, 1889999.79, '2025-02-04 15:08:06'),
(21, 2, 6, 294005.94, '2025-02-04 15:08:19'),
(22, 5, 56, 280055.44, '2025-02-05 00:39:00'),
(23, 2, 38, 1862037.62, '2025-02-05 00:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `quantity`) VALUES
(1, 'Laptop', 'uploads/laptop.jpg', 89999.99, 408),
(2, 'Smartphone', 'uploads/smartphone.jpg', 49000.99, 6600),
(3, 'Headphones', 'uploads/headphones.jpg', 9999.99, 754545),
(4, 'Camera', 'uploads/camera.jpg', 40000.00, 745455),
(5, 'Smartwatch', 'uploads/smartwatch.jpg', 5000.99, 8353479);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'EISHI', 'carlosviray91@gmail.com', '$2y$10$xLU9gSSHfrWw3aWVy4eUxuXfdOlnkpc80mEIZqBt7C8LBFxfa9zte', '2025-02-04 17:01:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
