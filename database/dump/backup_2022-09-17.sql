-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Set-2022 às 22:29
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `laravel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `created_at`, `updated_at`, `imagem`) VALUES
(1, 'Açai com nutella', '2022-08-31 16:03:10', '2022-08-31 16:03:10', 0),
(2, 'sdd', '2022-08-31 16:03:36', '2022-08-31 16:03:36', 0),
(3, 'salgado', '2022-08-31 16:26:00', '2022-09-09 23:02:51', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-07-23 07:43:51', '2022-07-23 07:43:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'imagem', 'text', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'descricao', 'text', 'Descricao', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 7, 'video_curto', 'text', 'Video Curto', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'categoria_id', 'text', 'Categoria Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(63, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(64, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(69, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 17, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(72, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(73, 17, 'localizacao', 'coordinates', 'Localizacao', 1, 1, 1, 1, 1, 1, '{}', 5),
(74, 17, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 6),
(75, 17, 'descricao', 'rich_text_box', 'Descricao', 1, 1, 1, 1, 1, 1, '{}', 7),
(76, 17, 'produto_id', 'text', 'Produto Id', 1, 0, 0, 0, 0, 0, '{}', 8),
(77, 17, 'categoria_id', 'text', 'Categoria Id', 1, 0, 0, 0, 0, 0, '{}', 9),
(81, 17, 'email', 'text', 'Email', 0, 0, 1, 1, 1, 1, '{}', 13),
(82, 17, 'tempoentrega', 'text', 'Tempoentrega', 1, 0, 1, 1, 1, 1, '{}', 14),
(83, 17, 'avaliacao', 'number', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{}', 15),
(84, 7, 'preco', 'text', 'Preco', 0, 1, 1, 1, 1, 1, '{}', 9),
(85, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(91, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 22, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(94, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(95, 22, 'quantidade', 'text', 'Quantidade', 1, 1, 1, 1, 1, 1, '{}', 5),
(96, 22, 'preco', 'text', 'Preco', 1, 1, 1, 1, 1, 1, '{}', 6),
(97, 22, 'soma', 'text', 'Soma', 1, 1, 1, 1, 1, 1, '{}', 7),
(98, 22, 'produto', 'text', 'Produto', 1, 1, 1, 1, 1, 1, '{}', 8),
(99, 22, 'qr_code', 'text', 'Qr Code', 0, 1, 1, 1, 1, 1, '{}', 9),
(100, 18, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(102, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 7, 'produto_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categorias\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(104, 7, 'empresa_id', 'text', 'Empresa Id', 0, 0, 0, 0, 0, 0, '{}', 10),
(105, 7, 'produto_belongsto_categoria_relationship', 'relationship', 'categorias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Categoria\",\"table\":\"categorias\",\"type\":\"belongsTo\",\"column\":\"categoria_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categorias\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(112, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 28, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(115, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(116, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(117, 28, 'imagem', 'text', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 3),
(118, 18, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 5),
(119, 28, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(120, 28, 'descrisao', 'text', 'Descrisao', 0, 1, 1, 1, 1, 1, '{}', 7),
(121, 28, 'contato', 'text', 'Contato', 0, 1, 1, 1, 1, 1, '{}', 8),
(122, 17, 'WhatsApp', 'text', 'WhatsApp', 1, 1, 1, 1, 1, 1, '{}', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(7, 'produtos', 'produtos', 'Produto', 'Produtos', 'voyager-bag', 'App\\Produto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-17 15:26:51', '2022-09-17 05:08:01'),
(17, 'empresas', 'empresas', 'Empresa', 'Empresas', 'voyager-hotdog', 'App\\Empresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-17 21:18:40', '2022-09-17 05:07:38'),
(18, 'categorias', 'categorias', 'Categoria', 'Categorias', 'voyager-sort', 'App\\Categoria', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-27 04:45:56', '2022-09-17 05:05:44'),
(22, 'pedidos', 'pedidos', 'Pedido', 'Pedidos', 'voyager-basket', 'App\\Pedido', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-31 15:26:08', '2022-09-17 03:59:36'),
(28, 'usuarios', 'usuarios', 'Usuario', 'Usuarios', 'voyager-categories', 'App\\Usuario', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-09-04 07:36:16', '2022-09-15 04:54:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `localizacao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `produto_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `WhatsApp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempoentrega` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avaliacao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `created_at`, `updated_at`, `localizacao`, `imagem`, `descricao`, `produto_id`, `categoria_id`, `WhatsApp`, `email`, `tempoentrega`, `avaliacao`) VALUES
(1, 'Marmita', '2022-08-20 04:03:50', '2022-08-20 04:03:50', 'rua 12', 'data:image/jpeg;base64,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', 'Melhor restaurante', 1, 1, '99696969', 'restaurante@gmail.com', '22min', NULL),
(2, 'REstaurante', '2022-08-20 04:40:00', '2022-08-20 04:40:00', 'rua 12', 'data:image/jpeg;base64,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', 'olaaaaaaaaaaaa', 1, 12, 'dwddd2222', 'restaurante3333@gmail.com', '221', 'bom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
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
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-07-23 07:43:51', '2022-07-23 07:43:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2022-07-23 07:43:51', '2022-07-23 07:43:51', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2022-07-23 07:43:52', '2022-07-23 07:43:52', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2022-07-23 07:43:52', '2022-07-23 07:43:52', 'voyager.pages.index', NULL),
(14, 1, 'Produtos', '', '_self', 'voyager-bag', NULL, NULL, 15, '2022-08-17 15:26:51', '2022-08-17 15:26:51', 'voyager.produtos.index', NULL),
(16, 1, 'Empresas', '', '_self', 'voyager-hotdog', NULL, NULL, 16, '2022-08-17 21:18:41', '2022-08-17 21:18:41', 'voyager.empresas.index', NULL),
(17, 1, 'Categorias', '', '_self', 'voyager-sort', NULL, NULL, 17, '2022-08-27 04:45:56', '2022-08-27 04:45:56', 'voyager.categorias.index', NULL),
(21, 1, 'Pedidos', '', '_self', 'voyager-basket', NULL, NULL, 19, '2022-08-31 15:26:08', '2022-08-31 15:26:08', 'voyager.pedidos.index', NULL),
(23, 1, 'Usuarios', '', '_self', '&#xe069;', NULL, NULL, 21, '2022-09-04 07:36:16', '2022-09-04 07:36:16', 'voyager.usuarios.index', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-07-23 07:43:52', '2022-07-23 07:43:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantidade` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `soma` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `produto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `nome`, `created_at`, `updated_at`, `quantidade`, `preco`, `soma`, `produto`, `qr_code`) VALUES
(1, 'Bolo', '2022-08-31 15:37:27', '2022-08-31 15:37:27', '2', '100', '200', 'Doce', NULL),
(2, 'queijo', '2022-08-31 21:11:03', '2022-08-31 21:11:03', '10', '10', '100', 'ded', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(2, 'browse_bread', NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'browse_database', NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(4, 'browse_media', NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(5, 'browse_compass', NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(6, 'browse_menus', 'menus', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(7, 'read_menus', 'menus', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(8, 'edit_menus', 'menus', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(9, 'add_menus', 'menus', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(10, 'delete_menus', 'menus', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(11, 'browse_roles', 'roles', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(12, 'read_roles', 'roles', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(13, 'edit_roles', 'roles', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(14, 'add_roles', 'roles', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(15, 'delete_roles', 'roles', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(16, 'browse_users', 'users', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(17, 'read_users', 'users', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(18, 'edit_users', 'users', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(19, 'add_users', 'users', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(20, 'delete_users', 'users', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(21, 'browse_settings', 'settings', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(22, 'read_settings', 'settings', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(23, 'edit_settings', 'settings', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(24, 'add_settings', 'settings', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(25, 'delete_settings', 'settings', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(26, 'browse_categories', 'categories', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(27, 'read_categories', 'categories', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(28, 'edit_categories', 'categories', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(29, 'add_categories', 'categories', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(30, 'delete_categories', 'categories', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(31, 'browse_posts', 'posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(32, 'read_posts', 'posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(33, 'edit_posts', 'posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(34, 'add_posts', 'posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(35, 'delete_posts', 'posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(36, 'browse_pages', 'pages', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(37, 'read_pages', 'pages', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(38, 'edit_pages', 'pages', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(39, 'add_pages', 'pages', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(40, 'delete_pages', 'pages', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(41, 'browse_produtos', 'produtos', '2022-08-17 15:26:51', '2022-08-17 15:26:51'),
(42, 'read_produtos', 'produtos', '2022-08-17 15:26:51', '2022-08-17 15:26:51'),
(43, 'edit_produtos', 'produtos', '2022-08-17 15:26:51', '2022-08-17 15:26:51'),
(44, 'add_produtos', 'produtos', '2022-08-17 15:26:51', '2022-08-17 15:26:51'),
(45, 'delete_produtos', 'produtos', '2022-08-17 15:26:51', '2022-08-17 15:26:51'),
(51, 'browse_empresas', 'empresas', '2022-08-17 21:18:41', '2022-08-17 21:18:41'),
(52, 'read_empresas', 'empresas', '2022-08-17 21:18:41', '2022-08-17 21:18:41'),
(53, 'edit_empresas', 'empresas', '2022-08-17 21:18:41', '2022-08-17 21:18:41'),
(54, 'add_empresas', 'empresas', '2022-08-17 21:18:41', '2022-08-17 21:18:41'),
(55, 'delete_empresas', 'empresas', '2022-08-17 21:18:41', '2022-08-17 21:18:41'),
(56, 'browse_categorias', 'categorias', '2022-08-27 04:45:56', '2022-08-27 04:45:56'),
(57, 'read_categorias', 'categorias', '2022-08-27 04:45:56', '2022-08-27 04:45:56'),
(58, 'edit_categorias', 'categorias', '2022-08-27 04:45:56', '2022-08-27 04:45:56'),
(59, 'add_categorias', 'categorias', '2022-08-27 04:45:56', '2022-08-27 04:45:56'),
(60, 'delete_categorias', 'categorias', '2022-08-27 04:45:56', '2022-08-27 04:45:56'),
(71, 'browse_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(72, 'read_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(73, 'edit_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(74, 'add_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(75, 'delete_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(76, 'browse_pedidos', 'pedidos', '2022-08-31 15:26:08', '2022-08-31 15:26:08'),
(77, 'read_pedidos', 'pedidos', '2022-08-31 15:26:08', '2022-08-31 15:26:08'),
(78, 'edit_pedidos', 'pedidos', '2022-08-31 15:26:08', '2022-08-31 15:26:08'),
(79, 'add_pedidos', 'pedidos', '2022-08-31 15:26:08', '2022-08-31 15:26:08'),
(80, 'delete_pedidos', 'pedidos', '2022-08-31 15:26:08', '2022-08-31 15:26:08'),
(86, 'browse_usuarios', 'usuarios', '2022-09-04 07:36:16', '2022-09-04 07:36:16'),
(87, 'read_usuarios', 'usuarios', '2022-09-04 07:36:16', '2022-09-04 07:36:16'),
(88, 'edit_usuarios', 'usuarios', '2022-09-04 07:36:16', '2022-09-04 07:36:16'),
(89, 'add_usuarios', 'usuarios', '2022-09-04 07:36:16', '2022-09-04 07:36:16'),
(90, 'delete_usuarios', 'usuarios', '2022-09-04 07:36:16', '2022-09-04 07:36:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
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
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-07-23 07:43:52', '2022-07-23 07:43:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `video_curto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preco` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `imagem`, `descricao`, `categoria_id`, `video_curto`, `created_at`, `updated_at`, `preco`, `empresa_id`) VALUES
(4, 'Esfirra', 'https://s2.glbimg.com/OUxwk-O8yQV_yTAYumL_Wz5UWp4=/0x0:300x168/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2020/U/x/g9CyAUQVmHENTqABzbXw/esfirra.jpg', 'Muito boa, confia no pai', 12, NULL, '2022-08-18 17:42:54', '2022-08-18 17:42:54', '12', 1),
(5, 'Esfirra da boa', 'data:image/jpeg;base64,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', 'Muito boa como diz o nome', 12, NULL, '2022-08-18 17:44:38', '2022-08-18 17:44:38', '11', 1),
(6, 'Esfirra', 'https://s2.glbimg.com/OUxwk-O8yQV_yTAYumL_Wz5UWp4=/0x0:300x168/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2020/U/x/g9CyAUQVmHENTqABzbXw/esfirra.jpg', 'Muito boa confia', 12, NULL, '2022-08-18 17:45:52', '2022-08-18 17:45:52', '100', 2),
(7, 'Bolo de Murango', 'https://imagens1.ne10.uol.com.br/blogs-interior/cotidiano/uploads/2021/11/bolo-do-pica-pau.jpg', 'HUMMMM', 2, NULL, '2022-08-18 17:48:13', '2022-08-18 17:48:13', '100', 2),
(9, 'Açãi', 'https://s2.glbimg.com/OUxwk-O8yQV_yTAYumL_Wz5UWp4=/0x0:300x168/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_e84042ef78cb4708aeebdf1c68c6cbd6/internal_photos/bs/2020/U/x/g9CyAUQVmHENTqABzbXw/esfirra.jpg', 'dfdf', 1, 'fdfd', '2022-09-01 02:15:51', '2022-09-01 02:15:51', 'dff', NULL),
(11, 'Alface', 'https://scfoods.fbitsstatic.net/img/p/alface-crespa-higienizada-500g-71095/257715.jpg?w=800&h=800&v=no-change&qs=ignore', 'Alface 500g', 3, NULL, '2022-09-14 17:07:00', '2022-09-14 17:08:42', '5,99', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(2, 'user', 'Normal User', '2022-07-23 07:43:51', '2022-07-23 07:43:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-07-23 07:43:52', '2022-07-23 07:43:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$MBKWO2YPTLf699.B1z3pbOmrNR3fCQFlqX3y9GRP0bLnH5Yv.Zbgu', 'L1vEiQZadRAsbSaqNf2VT32QNHSv2GrcdPXs4GJoShSKsa7U4B3uPwITkW3X', NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrisao` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contato` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `imagem`, `created_at`, `updated_at`, `email`, `descrisao`, `contato`) VALUES
(1, 'Deku', 'https://i.pinimg.com/600x315/a9/19/76/a919765f9da80a849df4333436527624.jpg', '2022-09-04 07:44:00', '2022-09-15 04:55:00', 'midoriya.@gamil.com', 'Sou uma pessoa', '67 444344');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Índices para tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Índices para tabela `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Índices para tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Índices para tabela `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Índices para tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de tabela `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Limitadores para a tabela `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
