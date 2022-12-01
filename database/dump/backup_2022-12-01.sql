-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2022 às 14:46
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

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
-- Estrutura da tabela `categoria_empresas`
--

CREATE TABLE `categoria_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_empresas`
--

INSERT INTO `categoria_empresas` (`id`, `nome`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Restaurantes', 'categoria-empresas\\November2022\\R6d1uCxtcAaDMcK0TdDy.jpg', '2022-11-12 06:49:17', '2022-11-12 06:49:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produtos`
--

CREATE TABLE `categoria_produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_produtos`
--

INSERT INTO `categoria_produtos` (`id`, `nome`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Carne', 'categoria-produtos\\November2022\\5KhMI1uUf80ZT9QzVLKw.jpg', '2022-11-10 02:16:58', '2022-11-10 02:16:58'),
(2, 'Salgados', 'categoria-produtos\\November2022\\H9d07MBGk6MqhBEO7cXU.jpg', '2022-11-10 02:36:03', '2022-11-10 02:36:03');

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
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `estado_id`, `created_at`, `updated_at`) VALUES
(1, 'Jardim', 1, '2022-11-10 03:39:47', '2022-11-10 03:39:47');

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
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
(128, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 30, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(130, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(131, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(138, 30, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 11),
(141, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 31, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 31, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 3),
(144, 31, 'descricao', 'text', 'Descricao', 1, 1, 1, 1, 1, 1, '{}', 4),
(146, 31, 'video_curto', 'text', 'Video Curto', 0, 1, 1, 1, 1, 1, '{}', 6),
(147, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(148, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(149, 31, 'preco', 'text', 'Preco', 1, 1, 1, 1, 1, 1, '{}', 9),
(150, 31, 'empresa_id', 'text', 'Empresa Id', 1, 1, 1, 1, 1, 1, '{}', 10),
(153, 30, 'cnpj', 'text', 'Cnpj', 1, 1, 1, 1, 1, 1, '{}', 7),
(154, 30, 'cpf', 'text', 'Cpf', 1, 1, 1, 1, 1, 1, '{}', 8),
(155, 30, 'endereco', 'text', 'Endereco', 1, 1, 1, 1, 1, 1, '{}', 9),
(156, 30, 'telefone', 'text', 'Telefone', 1, 1, 1, 1, 1, 1, '{}', 10),
(157, 30, 'foto', 'image', 'Foto', 1, 1, 1, 1, 1, 1, '{}', 11),
(159, 30, 'logo', 'image', 'Logo', 1, 1, 1, 1, 1, 1, '{}', 13),
(172, 31, 'produto_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(180, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 36, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(182, 36, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 3),
(183, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(184, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(185, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(186, 37, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{}', 2),
(187, 37, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 3),
(188, 37, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(189, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(198, 30, 'avaliacao', 'text', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{}', 14),
(199, 31, 'produto_belongsto_categoria_produto_relationship', 'relationship', 'categoria_produtos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CategoriaProduto\",\"table\":\"categoria_produtos\",\"type\":\"belongsTo\",\"column\":\"categoria_produto_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(200, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(201, 39, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(202, 39, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(203, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(204, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(205, 40, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{}', 2),
(206, 40, 'estado_id', 'text', 'Estado Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(207, 40, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(208, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(209, 40, 'cidade_belongsto_estado_relationship', 'relationship', 'estados', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Estado\",\"table\":\"estados\",\"type\":\"belongsTo\",\"column\":\"estado_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(210, 30, 'descricao', 'text_area', 'Descricao', 1, 1, 1, 1, 1, 1, '{}', 15),
(211, 30, 'empresa_belongsto_categoria_empresa_relationship', 'relationship', 'categoria_empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CategoriaEmpresa\",\"table\":\"categoria_empresas\",\"type\":\"belongsTo\",\"column\":\"categoria_empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(212, 30, 'empresa_belongsto_cidade_relationship', 'relationship', 'cidades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(213, 30, 'cidade_id', 'text', 'Cidade Id', 1, 1, 1, 1, 1, 1, '{}', 15),
(214, 30, 'whatsapp', 'text', 'Whatsapp', 0, 1, 1, 1, 1, 1, '{}', 16),
(215, 30, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 17),
(216, 30, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 18),
(217, 30, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 19),
(218, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(219, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 8),
(220, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 9),
(221, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 10),
(222, 1, 'cpf_cnpj', 'text', 'Cpf Cnpj', 0, 1, 1, 1, 1, 1, '{}', 15),
(223, 30, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 20),
(224, 31, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 11),
(225, 30, 'categoria_empresa_id', 'text', 'Categoria Empresa Id', 1, 1, 1, 1, 1, 1, '{}', 12),
(226, 31, 'categoria_produto_id', 'text', 'Categoria Produto Id', 1, 1, 1, 1, 1, 1, '{}', 5);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-07-23 07:43:51', '2022-11-27 04:19:18'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-07-23 07:43:51', '2022-10-29 04:09:02'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(30, 'empresas', 'empresas', 'Empresa', 'Empresas', 'voyager-wineglass', 'App\\Models\\Empresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-09-23 01:08:05', '2022-12-01 02:02:41'),
(31, 'produtos', 'produtos', 'Produto', 'Produtos', 'voyager-hotdog', 'App\\Models\\Produto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-09-23 01:08:36', '2022-12-01 02:18:02'),
(36, 'categoria_produtos', 'categoria-produtos', 'Categoria Produto', 'Categoria Produtos', 'voyager-list', 'App\\Models\\CategoriaProduto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-29 04:23:37', '2022-10-29 04:28:30'),
(37, 'categoria_empresas', 'categoria-empresas', 'Categoria Empresa', 'Categoria Empresas', 'voyager-list-add', 'App\\Models\\CategoriaEmpresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-29 04:30:17', '2022-10-29 04:31:07'),
(39, 'estados', 'estados', 'Estado', 'Estados', 'voyager-compass', 'App\\Models\\Estado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(40, 'cidades', 'cidades', 'Cidade', 'Cidades', 'voyager-location', 'App\\Models\\Cidade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-10 03:38:01', '2022-11-10 03:38:54');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` blob NOT NULL,
  `logo` blob NOT NULL,
  `categoria_empresa_id` int(10) UNSIGNED NOT NULL,
  `avaliacao` int(11) DEFAULT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade_id` int(10) UNSIGNED NOT NULL,
  `whatsapp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `created_at`, `updated_at`, `email`, `cnpj`, `cpf`, `endereco`, `telefone`, `foto`, `logo`, `categoria_empresa_id`, `avaliacao`, `descricao`, `cidade_id`, `whatsapp`, `facebook`, `instagram`, `twitter`, `user_id`) VALUES
(7, 'Casa do Peixe', '2022-10-09 23:46:00', '2022-11-22 02:49:24', 'casadopeixe@gmail.com', '03.926.0630001', '0000000000', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4f63746f626572323032325c38676a37546b6e4a6f42346265746577326845652e6a7067, 0x656d7072657361735c4f63746f626572323032325c4f494d6f575079474c786b5a7a62683046355a442e6a7067, 1, NULL, 'melhores pratos e sobremesas de Jardim', 1, NULL, NULL, NULL, NULL, 1),
(8, 'Marquinhos lanches', '2022-11-12 06:36:00', '2022-11-22 02:49:12', 'restaurante@gmail.com', '75u57', '12345678910', 'Rua Dr. Ary Coelho de Oliveira 691 (Centro), Jardim, MS, 79240-000', '+556799993838', 0x656d7072657361735c4e6f76656d626572323032325c72563737616c3366476a765635365063575a6f712e6a7067, 0x656d7072657361735c4e6f76656d626572323032325c75516869416e6c78386942796c495162586a47392e6a7067, 1, NULL, 'vvndfvi.\r\ndvfvnfvfvfninooooooII', 1, NULL, NULL, NULL, NULL, 5),
(9, 'empresas joao 3', '2022-11-27 04:39:00', '2022-11-28 03:18:01', 'joao_empresario3@gmail.com', '03.926.0630001', '0000000000', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4e6f76656d626572323032325c69557a78533739456147306b4e737162754b4b672e6a7067, 0x656d7072657361735c4e6f76656d626572323032325c714361724c3143666c7650486d72336d444a586d2e6a706567, 1, NULL, 'ccfvvff', 1, NULL, NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Mato Grosso do sul', '2022-11-10 03:39:14', '2022-11-10 03:39:14'),
(2, 'Rio de Janeiro', '2022-11-10 03:39:31', '2022-11-10 03:39:31');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-07-23 07:43:51', '2022-07-23 07:43:51', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-07-23 07:43:51', '2022-10-09 23:23:18', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2022-07-23 07:43:51', '2022-10-09 23:23:18', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2022-07-23 07:43:52', '2022-10-09 23:23:18', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2022-07-23 07:43:52', '2022-10-09 23:23:18', 'voyager.pages.index', NULL),
(25, 1, 'Empresas', '', '_self', 'voyager-wineglass', '#000000', NULL, 11, '2022-09-23 01:08:05', '2022-11-10 03:32:44', 'voyager.empresas.index', 'null'),
(26, 1, 'Produtos', '', '_self', 'voyager-hotdog', '#000000', NULL, 10, '2022-09-23 01:08:36', '2022-11-10 03:32:10', 'voyager.produtos.index', 'null'),
(31, 1, 'Categoria Produtos', '', '_self', 'voyager-list', NULL, NULL, 12, '2022-10-29 04:23:37', '2022-11-10 03:33:03', 'voyager.categoria-produtos.index', NULL),
(32, 1, 'Categoria Empresas', '', '_self', 'voyager-list-add', NULL, NULL, 13, '2022-10-29 04:30:17', '2022-11-10 03:41:26', 'voyager.categoria-empresas.index', NULL),
(34, 1, 'Estados', '', '_self', 'voyager-compass', NULL, NULL, 15, '2022-11-10 03:37:22', '2022-11-10 03:41:26', 'voyager.estados.index', NULL),
(35, 1, 'Cidades', '', '_self', 'voyager-location', NULL, NULL, 16, '2022-11-10 03:38:01', '2022-11-10 03:41:26', 'voyager.cidades.index', NULL);

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
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(29, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3);

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
(71, 'browse_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(72, 'read_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(73, 'edit_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(74, 'add_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(75, 'delete_pedido', 'pedido', '2022-08-27 05:05:54', '2022-08-27 05:05:54'),
(96, 'browse_empresas', 'empresas', '2022-09-23 01:08:05', '2022-09-23 01:08:05'),
(97, 'read_empresas', 'empresas', '2022-09-23 01:08:05', '2022-09-23 01:08:05'),
(98, 'edit_empresas', 'empresas', '2022-09-23 01:08:05', '2022-09-23 01:08:05'),
(99, 'add_empresas', 'empresas', '2022-09-23 01:08:05', '2022-09-23 01:08:05'),
(100, 'delete_empresas', 'empresas', '2022-09-23 01:08:05', '2022-09-23 01:08:05'),
(101, 'browse_produtos', 'produtos', '2022-09-23 01:08:36', '2022-09-23 01:08:36'),
(102, 'read_produtos', 'produtos', '2022-09-23 01:08:36', '2022-09-23 01:08:36'),
(103, 'edit_produtos', 'produtos', '2022-09-23 01:08:36', '2022-09-23 01:08:36'),
(104, 'add_produtos', 'produtos', '2022-09-23 01:08:36', '2022-09-23 01:08:36'),
(105, 'delete_produtos', 'produtos', '2022-09-23 01:08:36', '2022-09-23 01:08:36'),
(126, 'browse_categoria_produtos', 'categoria_produtos', '2022-10-29 04:23:37', '2022-10-29 04:23:37'),
(127, 'read_categoria_produtos', 'categoria_produtos', '2022-10-29 04:23:37', '2022-10-29 04:23:37'),
(128, 'edit_categoria_produtos', 'categoria_produtos', '2022-10-29 04:23:37', '2022-10-29 04:23:37'),
(129, 'add_categoria_produtos', 'categoria_produtos', '2022-10-29 04:23:37', '2022-10-29 04:23:37'),
(130, 'delete_categoria_produtos', 'categoria_produtos', '2022-10-29 04:23:37', '2022-10-29 04:23:37'),
(131, 'browse_categoria_empresas', 'categoria_empresas', '2022-10-29 04:30:17', '2022-10-29 04:30:17'),
(132, 'read_categoria_empresas', 'categoria_empresas', '2022-10-29 04:30:17', '2022-10-29 04:30:17'),
(133, 'edit_categoria_empresas', 'categoria_empresas', '2022-10-29 04:30:17', '2022-10-29 04:30:17'),
(134, 'add_categoria_empresas', 'categoria_empresas', '2022-10-29 04:30:17', '2022-10-29 04:30:17'),
(135, 'delete_categoria_empresas', 'categoria_empresas', '2022-10-29 04:30:17', '2022-10-29 04:30:17'),
(141, 'browse_estados', 'estados', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(142, 'read_estados', 'estados', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(143, 'edit_estados', 'estados', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(144, 'add_estados', 'estados', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(145, 'delete_estados', 'estados', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(146, 'browse_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01'),
(147, 'read_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01'),
(148, 'edit_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01'),
(149, 'add_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01'),
(150, 'delete_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01');

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
(1, 2),
(1, 3),
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
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(104, 3),
(105, 1),
(105, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(134, 1),
(135, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1);

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
  `imagem` blob NOT NULL,
  `descricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria_produto_id` int(10) UNSIGNED NOT NULL,
  `video_curto` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preco` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `imagem`, `descricao`, `categoria_produto_id`, `video_curto`, `created_at`, `updated_at`, `preco`, `empresa_id`, `user_id`) VALUES
(18, 'Pizza', 0x70726f6475746f735c4f63746f626572323032325c415855464d4c416146523477424846376c3137482e6a706567, 'Pizza feita de xxxxxx', 1, NULL, '2022-10-21 05:54:30', '2022-11-10 02:44:18', '10', 7, NULL),
(19, 'Esfirra', 0x70726f6475746f735c4e6f76656d626572323032325c6d70796a4d5a3978334e706641585454394131622e6a7067, 'Marquinhos lanches', 2, NULL, '2022-11-10 02:38:04', '2022-11-22 02:50:03', '20', 7, NULL);

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
(2, 'user', 'Normal User', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'empresario', 'Empresário', '2022-09-24 01:53:42', '2022-09-24 01:53:42');

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
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Site de divulgação', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Site de divulgação de comércios locais', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cpf_cnpj` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `created_at`, `updated_at`, `cpf_cnpj`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$MBKWO2YPTLf699.B1z3pbOmrNR3fCQFlqX3y9GRP0bLnH5Yv.Zbgu', NULL, NULL, NULL, 'HnmF6lUQZFq3OFHv51K8CmFhI2sRtCjMZzJD7QuCAnejY5ava8nLX0PiEPOZ', NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52', NULL),
(2, 2, 'joao', 'joao@gmail.com', 'users/default.png', NULL, '$2y$10$DuopizLqJtdezVL9HOwYsurNOjhjb99nvKlzpkyQwYeLTIuAvbQ0O', NULL, NULL, NULL, NULL, NULL, '2022-09-18 01:25:54', '2022-09-18 01:25:54', NULL),
(3, 2, 'joao', 'joao5@gmail.com', 'users/default.png', NULL, '$2y$10$nJ5BjciJ5YgACyKlUFxgi.GcA.EaGoIpDrV0RDoEujv7DbVjaGSkm', NULL, NULL, NULL, NULL, NULL, '2022-11-20 02:59:54', '2022-11-20 02:59:54', NULL),
(4, 3, 'joao  empresario', 'joao_empresario@gmail.com', 'users/default.png', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, '2022-11-27 03:57:21', '2022-11-27 03:57:21', NULL),
(5, 3, 'joao  empresario2', 'joao_empresario2@gmail.com', 'users/default.png', NULL, '$2y$10$y8y2M.Vb2EGLn2f2lOFQp.pKJJzoNxEAA.R9NcGr/l9dxsXR2DCF.', NULL, NULL, NULL, NULL, NULL, '2022-11-27 04:12:40', '2022-11-27 04:12:40', NULL),
(6, 3, 'joao  empresario3', 'joao_empresario3@gmail.com', 'users/default.png', NULL, '$2y$10$./OQv.Lzcrz/9cE2CvYVB.UGaDYrqoFX/1hif7pGDACNY0zzfc4L2', NULL, NULL, NULL, NULL, NULL, '2022-11-27 04:18:39', '2022-11-27 04:18:39', '0000000000001'),
(7, 3, 'joao  empresario4', 'joao_empresario4@gmail.com', 'users/default.png', NULL, '$2y$10$YyiLNKMIMTNfYVQR.Ay1peuKD7YlWuSgmPPvS36xJWa4DkcGpR2kW', NULL, NULL, NULL, NULL, NULL, '2022-11-28 02:56:18', '2022-11-28 02:56:18', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_empresas`
--
ALTER TABLE `categoria_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria_produtos`
--
ALTER TABLE `categoria_produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

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
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
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
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_empresas`
--
ALTER TABLE `categoria_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categoria_produtos`
--
ALTER TABLE `categoria_produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de tabela `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
