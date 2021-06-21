-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 04:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'aut illo corporis velit', 'aut-illo-corporis-velit', '2021-06-10 17:11:38', '2021-06-10 17:11:38'),
(2, 'voluptate nesciunt impedit fuga', 'voluptate-nesciunt-impedit-fuga', '2021-06-10 17:11:38', '2021-06-10 17:11:38'),
(3, 'in est blanditiis non', 'in-est-blanditiis-non', '2021-06-10 17:11:38', '2021-06-10 17:11:38'),
(4, 'dolores et cupiditate vero', 'dolores-et-cupiditate-vero', '2021-06-10 17:11:39', '2021-06-10 17:11:39'),
(5, 'unde magni voluptatem et update2', 'unde-magni-voluptatem-et-update2', '2021-06-10 17:11:39', '2021-06-21 00:12:05'),
(6, 'possimus quas quas nostrum', 'possimus-quas-quas-nostrum', '2021-06-10 17:11:39', '2021-06-10 17:11:39'),
(15, 'Thirth Category updated', 'thirth-category-updated', '2021-06-20 20:50:45', '2021-06-20 23:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Slider Title', 'First Slider Subtitle', '200', 'http://localhost:8000/shop', 'C:\\Users\\EAGLE\\AppData\\Local\\Temp\\php7AAB.tmp', 1, '2021-06-20 18:36:23', '2021-06-20 18:36:23'),
(2, 'dddd', 'bgdgd', '23', 'http://localhost:8000/shop', '3-slide-banner-1', 1, '2021-06-20 18:43:16', '2021-06-20 18:43:16'),
(3, 'vvvvv', 'ddds', '34', 'http://localhost:8000/shop', '3-slide-banner-1', 1, '2021-06-20 18:45:35', '2021-06-20 18:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2021_06_09_222737_create_categories_table', 2),
(14, '2014_10_12_000000_create_users_table', 3),
(15, '2014_10_12_100000_create_password_resets_table', 3),
(16, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(17, '2019_08_19_000000_create_failed_jobs_table', 3),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(19, '2021_06_06_134509_create_sessions_table', 3),
(20, '2021_06_09_234404_create_categories_table', 4),
(21, '2021_06_09_234856_create_products_table', 4),
(22, '2021_06_20_090102_create_home_sliders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'eos repellendus', 'eos-repellendus', 'Dicta expedita autem repellendus quas maiores quam. Animi blanditiis sequi autem sapiente aspernatur non sit. Sed sequi explicabo laborum esse a illum praesentium.', 'Omnis aut dolor nesciunt esse. Rem ipsam aut et quasi. Mollitia aut consequuntur quod iure eligendi quibusdam. Quam et totam eos in nihil natus. Nostrum facere vero odit explicabo quia. Id voluptatibus et sed est velit illum omnis. Excepturi excepturi similique quibusdam est ad. Officiis quia enim incidunt facilis nesciunt atque. Similique quo et doloremque sunt cupiditate et. Et non iusto blanditiis. Sit quae veritatis itaque rerum atque eos amet. Magnam molestias velit quasi aliquam.', '194.00', NULL, 'DIGI485', 'instock', 0, 194, 'digital_2.jpg', NULL, 1, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(2, 'quo neque', 'quo-neque', 'Itaque sunt est consequatur. Repellendus deleniti non et porro culpa. Rem soluta ullam totam et et maxime.', 'Quae ut aut eos dolores sed iure eum ut. Dolore pariatur voluptas ducimus. Amet doloribus error et. Et inventore facilis natus perferendis molestiae consequatur nemo. Eaque voluptas consectetur saepe ex accusamus molestiae rerum. Ex quasi ut odit totam illo in at. Qui eius perspiciatis illum temporibus. Dolore rerum ducimus quasi rerum delectus.', '309.00', NULL, 'DIGI258', 'instock', 0, 145, 'digital_12.jpg', NULL, 4, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(3, 'aut neque', 'aut-neque', 'Perspiciatis inventore vitae nam architecto culpa velit et id. Molestias delectus et quidem impedit temporibus quaerat. Eius ipsum laborum tenetur iste deserunt.', 'Optio sed sequi est reprehenderit quis velit. Sed non ea adipisci dolore. Perspiciatis sint mollitia quo id dolore non repudiandae eveniet. Explicabo vel dolorem est quia. Laudantium impedit omnis sed ratione eius est aut. Vel repudiandae ullam error sapiente ad aut. Incidunt corrupti asperiores nesciunt libero sapiente. Rerum molestiae in vitae quia. Nisi reprehenderit sunt impedit voluptatum perferendis nam. Rerum sint et qui. Quaerat tempore et repudiandae aut.', '304.00', NULL, 'DIGI415', 'instock', 0, 194, 'digital_9.jpg', NULL, 3, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(4, 'rerum dolorem', 'rerum-dolorem', 'Impedit accusamus praesentium mollitia qui ut itaque error. Molestiae voluptatibus sit dolores occaecati. Amet nulla rerum debitis nisi.', 'Praesentium in nostrum sint. Possimus iusto ut in et est quasi sunt. Ducimus similique expedita voluptatem quia veritatis consequatur. Distinctio rerum iure ad atque totam molestiae facilis. Numquam cum earum quam. Eaque qui incidunt ea sint possimus ut aut. Non quo odio amet illum omnis qui quod. Nobis eius et incidunt nostrum temporibus qui. Molestiae sit perspiciatis est tempore. Perspiciatis id assumenda pariatur illum.', '484.00', NULL, 'DIGI245', 'instock', 0, 100, 'digital_20.jpg', NULL, 4, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(5, 'velit enim', 'velit-enim', 'Deserunt nemo aliquid sint velit quos dolor. Sed quis impedit vel velit. Quo vero saepe consectetur et ut.', 'Sunt autem nisi maxime vel. Ut eveniet laborum asperiores facere. Delectus eligendi placeat distinctio ea sed rerum laudantium unde. Qui magnam quia vel velit voluptatem. Aliquid debitis consequatur saepe neque nesciunt aspernatur. Quisquam rerum deleniti soluta. Dolor deleniti adipisci molestiae exercitationem. Ut omnis velit ducimus. Perferendis eligendi harum laborum. Tempore maxime voluptatem possimus assumenda placeat.', '195.00', NULL, 'DIGI344', 'instock', 0, 164, 'digital_14.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(6, 'voluptatem sunt', 'voluptatem-sunt', 'Distinctio iste atque hic consequatur esse praesentium. Ut praesentium repudiandae aut quo. Velit eos dolore nihil non suscipit. Et nemo quia qui fugiat vel. Qui aut provident deleniti nobis.', 'Fugit repudiandae quasi dolores ut. Doloribus facere esse tenetur sint minima. Voluptas vero odio inventore. Dolorum animi nam voluptatem consequatur aut sequi. Laudantium deleniti consequatur quidem. Id veniam est et magni ipsam quaerat. Reiciendis velit soluta eius dolores. Laborum molestiae dolores voluptatibus ut culpa. Impedit accusantium tempore repudiandae. Quasi ut temporibus sunt molestias similique esse voluptatem.', '472.00', NULL, 'DIGI486', 'instock', 0, 135, 'digital_19.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(7, 'accusamus excepturi', 'accusamus-excepturi', 'Et eius beatae voluptatum eum. Ex eaque est cum veritatis. Quidem earum hic cumque. Eos illo iusto mollitia. Quo minima sed hic. Cum maxime consequuntur dolorem molestiae cum quisquam esse.', 'Et minus labore nesciunt corporis neque deleniti et. Iusto neque et aut. Sed voluptatem fuga est quis autem id reprehenderit. Eius recusandae quos doloremque corrupti assumenda sed. Ut autem aliquid enim voluptate sequi quia sit. Optio consectetur aperiam et porro. Omnis quo numquam similique et. Quia aut possimus reprehenderit consequatur officia voluptatem aut. Perferendis similique quisquam reiciendis.', '331.00', NULL, 'DIGI458', 'instock', 0, 138, 'digital_13.jpg', NULL, 2, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(8, 'quia iste', 'quia-iste', 'Saepe tenetur a sint praesentium quo. Culpa officia qui sint neque. Nihil molestiae qui id. Aut exercitationem provident et maxime aut et consequatur.', 'Eius quisquam corrupti voluptatem ipsum nam accusantium. Officia vitae quae quibusdam est tenetur sunt qui. Voluptatibus consequatur totam aut reiciendis laborum necessitatibus. Error possimus vero non aperiam officiis nihil est. Ut sunt delectus consequatur accusamus. Minus voluptates necessitatibus optio magnam. Eum ut atque deleniti libero rem consectetur harum.', '148.00', NULL, 'DIGI160', 'instock', 0, 185, 'digital_4.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(9, 'voluptatum sed', 'voluptatum-sed', 'Autem magni vitae maiores doloremque. Repellendus voluptatibus accusantium similique minima rerum esse incidunt. Impedit dolorem quis voluptates facere.', 'Omnis voluptate eligendi quos voluptatibus. Et esse dolorem adipisci molestiae est dolorum placeat. Corporis ea sunt ea et. Quidem ut perferendis ipsum eum eveniet dicta. Saepe alias maxime quod neque omnis nesciunt. Aut quo voluptas deserunt esse repudiandae. Deserunt et consequatur nobis nihil.', '419.00', NULL, 'DIGI270', 'instock', 0, 149, 'digital_15.jpg', NULL, 4, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(10, 'aut perspiciatis', 'aut-perspiciatis', 'Sed molestiae dolore consequuntur provident alias iusto eligendi. Dolor incidunt quos accusantium nam dolores blanditiis praesentium.', 'Nihil fuga ratione ipsum eius consectetur possimus blanditiis. Sit quis eveniet voluptas rerum ut. Enim vel facilis animi quas a. Vel praesentium deserunt est quidem. Quidem omnis ab voluptates commodi sequi. Voluptas repellat aut cumque distinctio dolor.', '157.00', NULL, 'DIGI345', 'instock', 0, 119, 'digital_11.jpg', NULL, 1, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(11, 'at odio', 'at-odio', 'Doloribus autem eos mollitia quas sit illum sed et. Quis aut numquam cupiditate iure earum aperiam id cupiditate. Odit sapiente quia tenetur ut possimus et et omnis.', 'Omnis ut qui totam occaecati odit. Fugit ea vel sequi ratione. Fuga eos et sint illo labore itaque. Tenetur fugiat aperiam totam unde voluptas. Voluptatem aperiam non architecto nihil. Id omnis voluptate voluptatem laborum voluptatem. Quaerat quisquam ut velit quas ea officiis. Et explicabo nisi sint reiciendis. Exercitationem dolorum quia quo aut est est ratione nostrum. Quod doloremque est vero voluptas nisi consectetur rem et. Sequi dolores quos voluptatem quod et. Ut doloribus omnis neque.', '148.00', NULL, 'DIGI390', 'instock', 0, 113, 'digital_3.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(12, 'qui eos', 'qui-eos', 'Voluptate non accusamus nulla incidunt magni odit. Eum optio aut nam labore culpa dignissimos. Fugit dolor sed eligendi provident molestias id. Odit iure sit beatae adipisci vitae repudiandae.', 'Aut dolores vel quia fugit suscipit. Tempora quaerat cumque natus facilis vero. Optio voluptatum rerum dolores sit. Dolorum officia vel maiores dicta voluptates. Voluptas totam eum quae et qui culpa soluta. Quidem molestias magni corporis laudantium doloribus voluptatibus. Sed amet deserunt consequatur enim officiis temporibus enim.', '479.00', NULL, 'DIGI257', 'instock', 0, 138, 'digital_17.jpg', NULL, 1, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(13, 'itaque odit', 'itaque-odit', 'Provident qui et earum molestiae. Quidem labore quam laboriosam architecto ut. Blanditiis exercitationem laboriosam earum distinctio quae impedit. Odit non ullam magnam ut.', 'Dolor eum error odio voluptas aut neque illo qui. Magnam fugit ullam maxime. Rem voluptatem in similique fugiat maiores commodi dolorum. Est at aliquid ad ullam aut. Cupiditate quia dolor sint asperiores. Ducimus facere aliquam sit voluptatem aperiam. Cumque officia non dolor eos. Voluptate ab sed quia maiores accusamus natus non. Distinctio occaecati sed vel aut quis qui non. Accusantium eum et non dolores quia quam quisquam.', '445.00', NULL, 'DIGI322', 'instock', 0, 177, 'digital_21.jpg', NULL, 4, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(14, 'vero iure', 'vero-iure', 'Dolor dicta qui recusandae fugiat. Quo commodi magnam voluptatum maxime. Quasi velit dolores cupiditate provident fugit reprehenderit et. Qui corporis et error velit velit sit deleniti.', 'Nulla vel rerum distinctio. Dicta magnam consequatur eos neque. Architecto vero dolor incidunt unde qui. A quod iste iusto cum. Corporis sunt aperiam aspernatur quis error iure. Deserunt et atque non. At in exercitationem amet. Consequatur voluptatibus impedit iusto beatae porro. In est qui placeat fugiat eum et. Sit voluptas natus culpa itaque non quis saepe.', '109.00', NULL, 'DIGI181', 'instock', 0, 160, 'digital_10.jpg', NULL, 3, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(15, 'eaque nobis', 'eaque-nobis', 'Vel quaerat temporibus eum quo eum porro eum. Aut non commodi repellendus eum doloribus ut. Deserunt beatae aliquid veniam est debitis nihil.', 'Eius cum repellat recusandae ipsum quia exercitationem fuga est. Occaecati ea dolores officia accusantium eius ut. Adipisci sequi voluptatem expedita deserunt. Autem qui temporibus molestias sed. Ipsa nam et rerum reprehenderit soluta harum libero. Nihil sed velit consequatur quod labore. Sed consequuntur saepe delectus autem libero accusantium. Sunt non et tempore unde et.', '288.00', NULL, 'DIGI142', 'instock', 0, 199, 'digital_8.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(16, 'quia consequuntur', 'quia-consequuntur', 'Et ullam voluptatem neque ex. Dolores sint neque ut beatae fugiat doloribus. Et illo fugiat perspiciatis molestias ut sunt accusamus. Quia possimus voluptas illum delectus placeat.', 'Ipsum suscipit aperiam nobis porro corrupti praesentium. Ut commodi ut consectetur voluptatem voluptatem qui. Dolores aut quibusdam ipsa voluptatem. Ea aperiam iste qui esse non iure. Dolorem nulla ad consequatur aliquam. Aut voluptas nostrum laborum voluptatem et. Dolorum quia dolor necessitatibus. Quo dolores quia numquam reiciendis nobis. Autem doloremque sunt est ut et culpa et.', '454.00', NULL, 'DIGI494', 'instock', 0, 135, 'digital_16.jpg', NULL, 5, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(17, 'explicabo nulla', 'explicabo-nulla', 'Et maxime nam et debitis qui aut ea. Placeat non consequatur eum dolorem soluta non ullam culpa.', 'Quia necessitatibus dolores id temporibus. Ut enim impedit delectus quae. Eligendi et quia dolores nobis voluptatem. Incidunt tempora quia voluptas quis. Qui laborum reprehenderit ipsam quia. Cupiditate facere sint voluptates voluptatem aspernatur similique. Omnis ut voluptas harum dolores veniam facilis nihil. Architecto deserunt est unde quis exercitationem velit. Ea ut vitae animi id. Nisi est et aut quam.', '456.00', NULL, 'DIGI375', 'instock', 0, 138, 'digital_22.jpg', NULL, 3, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(18, 'iste incidunt', 'iste-incidunt', 'Fugiat suscipit molestiae odio quas tempore. Aspernatur voluptate ad at corporis quidem enim. Qui cum ea reprehenderit qui. At enim modi cupiditate atque suscipit autem fugit.', 'Voluptas velit ratione ut quod quas. Quo modi ducimus at fuga dolorem non. Perspiciatis nesciunt omnis similique et modi voluptates. Et voluptates nihil voluptate dolores veritatis nulla. Tempora qui aliquid nesciunt vitae accusamus iure. Blanditiis labore et qui a incidunt. Cumque adipisci ut et occaecati ipsa fuga. Sed ab animi ipsam ad. Cum velit magni voluptatem tempora.', '343.00', NULL, 'DIGI305', 'instock', 0, 121, 'digital_6.jpg', NULL, 2, '2021-06-10 17:16:08', '2021-06-10 17:16:08'),
(19, 'ipsum quia', 'ipsum-quia', 'Sit eveniet eos quo voluptatibus ad. Reprehenderit autem ut aperiam ea minus. Repellat velit temporibus eveniet voluptas hic.', 'Voluptas earum tempore aut expedita et praesentium iste iste. Suscipit reprehenderit autem et aut nihil nostrum. Autem possimus quidem modi fugit qui. Voluptas quos est voluptatum saepe maxime. Voluptatem ducimus ducimus soluta omnis reprehenderit maxime. Non aut cum doloribus tenetur doloremque enim. Sed sit veniam voluptate in deleniti velit occaecati et. Occaecati sunt cumque sed ut voluptatibus asperiores tempora.', '108.00', NULL, 'DIGI264', 'instock', 0, 180, 'digital_7.jpg', NULL, 1, '2021-06-10 17:16:08', '2021-06-10 17:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IkmnNsGH3tLs5BpqSlMke8YvKhR9Lurw9BfAf4fB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3FBTFhXUGNxeGw5S3pFY3dXVkVYUDNKcG5Ja0xnRHBDdGRFVDRTYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1624209436),
('vJCuYSalydncqBAQAK8ua7B4pjoxY2a6Nn1SGz40', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.101 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUmFTQk5SSjMxak9nallhQnNocTRvR2NIdmpOQU5pTFRHUTdMYWNRbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGd6LnZiSmtFRTRqS0xxYnBuaGthUE9GY3dzL2x1MTZ6RmVFdms5dURuZFJEZjdlaG5NYy5DIjt9', 1624207155);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$gz.vbJkEE4jKLqbpnhkaPOFcws/lu16zFeEvk9uDndRDf7ehnMc.C', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-06-10 07:26:17', '2021-06-10 07:26:17'),
(2, 'User', 'user@user.com', NULL, '$2y$10$QXjGvHrSlXEGc0C/gkgBQeTWJM6T2bfkmyLoCa42Ua.jhVveruA/W', NULL, NULL, NULL, NULL, NULL, 'USR', '2021-06-10 07:26:49', '2021-06-10 07:26:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
