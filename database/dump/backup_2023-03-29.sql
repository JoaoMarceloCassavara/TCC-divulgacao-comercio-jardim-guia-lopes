-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Mar-2023 às 01:56
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

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
-- Estrutura da tabela `avaliacao_empresas`
--

CREATE TABLE `avaliacao_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `avaliacao` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `avaliacao_empresas`
--

INSERT INTO `avaliacao_empresas` (`id`, `avaliacao`, `created_at`, `updated_at`, `empresa_id`, `user_id`, `descricao`) VALUES
(1, 4, '2022-12-06 00:56:38', '2023-02-10 07:40:40', 7, 9, 'Descrição da empresammmmmmmmmmmmmmmhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhdbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb'),
(2, 2, '2023-01-24 03:10:19', '2023-01-24 03:10:19', 7, 1, 'descrição do produto'),
(3, 1, '2023-02-10 07:34:02', '2023-02-10 07:35:25', 7, 1, 'Otima empressa dhfehfhfuehuhhfuhufheuhfuehfuehfeuhfuehfueh'),
(4, 1, '2023-02-10 07:35:56', '2023-02-10 07:41:08', 7, 14, 'Otima empressa dhfehfhfuehuhhfuhufheuhfuehfuehfeuhfuehfuehggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggbdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddgg'),
(6, 5, '2023-02-23 02:56:39', '2023-03-02 07:48:26', 16, 1, 'bom'),
(7, 5, '2023-03-17 22:57:58', '2023-03-17 22:57:58', 23, 35, 'A maior empresa colinaria do mundo ninguem se compara a maior cozinheiro do mundo joao paulo conhecido tbm como andra_storm jogador profissional de valorant solador de bots e comedor de casafda .');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes_produtos`
--

CREATE TABLE `avaliacoes_produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `avaliacao` float DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `avaliacoes_produtos`
--

INSERT INTO `avaliacoes_produtos` (`id`, `avaliacao`, `produto_id`, `user_id`, `created_at`, `updated_at`, `descricao`) VALUES
(1, 666, 19, 9, '2022-12-30 20:01:06', '2022-12-30 20:01:06', 'sdvvvvvvvvvvvvvvvvvvv'),
(2, 5, 19, 11, '2022-12-30 20:05:01', '2023-02-10 08:21:13', 'vduhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
(3, 1, 19, 14, '2023-02-11 01:40:11', '2023-02-11 01:40:11', 'Otimaempressadhfehfhfuehuhhfuhufheuhfuehfuehfeuhfuehfuehgggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg'),
(4, 45, NULL, 1, '2023-02-16 03:14:57', '2023-02-16 03:14:57', 'nuuuuuuu'),
(5, 5, 25, 1, '2023-02-16 03:18:54', '2023-02-23 06:11:13', 'dddddddddddddddddddddd'),
(6, 2.5, 26, 1, '2023-02-23 06:11:53', '2023-02-23 06:12:22', 'sssss'),
(7, 5, 27, 1, '2023-03-01 01:02:59', '2023-03-01 01:03:40', 'sssssssssssssssssssssxxxxxxxxxxxxxxxxxxqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),
(8, 5, 27, 21, '2023-03-01 01:05:52', '2023-03-01 01:05:52', 'joao empresario7 avaliacao 1'),
(9, 5, 31, 35, '2023-03-17 22:55:24', '2023-03-17 22:55:24', 'Manjar dos deuses parece que estou provando do proprio  sangue de jesus cristo um pedaço do jardim do eden'),
(10, 5, 23, 1, '2023-03-22 00:41:02', '2023-03-22 00:41:02', 'bom');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_empresas`
--

CREATE TABLE `categoria_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_empresas`
--

INSERT INTO `categoria_empresas` (`id`, `nome`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Restaurantes', 'categoria-empresas\\November2022\\R6d1uCxtcAaDMcK0TdDy.jpg', '2022-11-12 06:49:17', '2022-11-12 06:49:17'),
(3, 'Sorveteria', 'categoria-empresas\\December2022\\g3918qM6v2GjkgcaHt7P.jpeg', '2022-12-01 17:57:44', '2022-12-01 17:57:44'),
(4, 'nivinvnfv', 'categoria-empresas\\January2023\\JiozRsEmpzuoadIMhzrK.webp', '2023-01-13 02:45:26', '2023-01-13 02:45:26'),
(5, 'hdhhfhd', 'categoria-empresas\\January2023\\LL8tCJXLkHkOA90bhqPF.webp', '2023-01-13 02:45:38', '2023-01-13 02:45:38'),
(6, 'hthththt', 'categoria-empresas\\January2023\\cpTyhpMowk7Dc8us3GFG.webp', '2023-01-13 02:45:49', '2023-01-13 02:45:49'),
(7, 'mgmgm', 'categoria-empresas\\January2023\\seUkqudoOzkbW1LVdYxz.webp', '2023-01-13 02:45:59', '2023-01-13 02:45:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produtos`
--

CREATE TABLE `categoria_produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text DEFAULT NULL,
  `imagem` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_produtos`
--

INSERT INTO `categoria_produtos` (`id`, `nome`, `imagem`, `created_at`, `updated_at`) VALUES
(1, 'Carne', 'categoria-produtos\\November2022\\5KhMI1uUf80ZT9QzVLKw.jpg', '2022-11-10 02:16:58', '2022-11-10 02:16:58'),
(2, 'Salgados', 'categoria-produtos\\November2022\\H9d07MBGk6MqhBEO7cXU.jpg', '2022-11-10 02:36:03', '2022-11-10 02:36:03'),
(3, 'Sorvetes', 'categoria-produtos\\January2023\\d5cvMEWbyOKx0uTpHboY.jpg', '2023-01-17 02:10:24', '2023-01-17 03:09:44'),
(4, 'fritossssssssss', 'categoria-produtos\\January2023\\CpCYYyQgi0VXPJxV6cM4.webp', '2023-01-17 03:27:54', '2023-01-17 03:27:54'),
(5, 'Frutas', 'categoria-produtos\\February2023\\pRwS4JLVnFlTRzri31x1.jpg', '2023-02-12 02:13:35', '2023-02-12 02:13:35'),
(6, 'Frios e Peixes', 'categoria-produtos\\March2023\\GcdPuAw9rhuYiBIrbPvQ.jpg', '2023-03-17 22:47:01', '2023-03-17 22:47:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
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
  `nome` text NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`, `estado_id`, `created_at`, `updated_at`, `imagem`) VALUES
(6, 'Jardim-Ms', 1, '2023-03-21 00:20:35', '2023-03-21 00:20:35', 'cidades\\March2023\\kF3cfBrPp1hurZCAoStK.jpg'),
(7, 'Guia Lopes Da Laguna-MS', 1, '2023-03-21 00:21:42', '2023-03-21 00:21:42', 'cidades\\March2023\\8zKAaWdcdpKvj4dQkHHE.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:users\"}}', 3),
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
(129, 30, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:5\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"min\":\"O campo :attribute deve possuir no minimo :min caracteres.\"}}}', 2),
(130, 30, 'created_at', 'timestamp', 'Data cadastro', 0, 0, 1, 0, 0, 0, '{}', 3),
(131, 30, 'updated_at', 'timestamp', 'Ultima atualização', 0, 0, 0, 0, 0, 0, '{}', 4),
(138, 30, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 11),
(141, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 31, 'nome', 'text', 'Nome', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:3\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"min\":\"O campo :attribute deve possuir no minimo :min caracteres.\"}}}', 2),
(143, 31, 'imagem', 'image', 'Imagem', 1, 1, 1, 1, 1, 1, '{}', 3),
(144, 31, 'descricao', 'text', 'Descricao', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:900\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 4),
(146, 31, 'video_curto', 'text', 'Video Curto', 0, 1, 1, 1, 1, 1, '{}', 6),
(147, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(148, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(149, 31, 'preco', 'text', 'Preco', 1, 1, 1, 1, 1, 1, '{}', 9),
(150, 31, 'empresa_id', 'text', 'Empresa Id', 1, 1, 1, 1, 1, 1, '{}', 10),
(153, 30, 'cnpj', 'text', 'Cnpj', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"cnpj\",\"messages\":{\"cnpj\":\"O campo :attribute deve possuir apenas numeros e estar no formato: XX.XXX.XXX\\/0001-XX.\"}}}', 7),
(154, 30, 'cpf', 'text', 'Cpf', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|cpf\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"cpf\":\"O campo :attribute deve possuir apenas numeros e estar no formato: 99999999999\"}}}', 8),
(155, 30, 'endereco', 'text', 'Endereço', 1, 0, 1, 1, 1, 1, '{}', 9),
(156, 30, 'telefone', 'text', 'Telefone', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|celular_com_ddd\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"celular_com_ddd\":\"O campo :attribute deve possuir apenas numeros e estar no formato: (99)99999-9999\"}}}', 10),
(157, 30, 'foto', 'image', 'Foto', 0, 0, 1, 1, 1, 1, '{}', 11),
(159, 30, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 13),
(172, 31, 'produto_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 1, 1, 1, '{\"scope\":\"usuario\",\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(180, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 36, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:16\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 2),
(182, 36, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 3),
(183, 36, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(184, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(185, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(186, 37, 'nome', 'text', 'Nome', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:16\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 2),
(187, 37, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 3),
(188, 37, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(189, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(198, 30, 'avaliacao', 'text', 'Avaliacao', 0, 0, 1, 0, 0, 0, '{}', 14),
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
(210, 30, 'descricao', 'rich_text_box', 'Descrição', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:2200\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 15),
(211, 30, 'empresa_belongsto_categoria_empresa_relationship', 'relationship', 'Categorias', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\CategoriaEmpresa\",\"table\":\"categoria_empresas\",\"type\":\"belongsTo\",\"column\":\"categoria_empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(212, 30, 'empresa_belongsto_cidade_relationship', 'relationship', 'Cidade', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categoria_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(213, 30, 'cidade_id', 'text', 'Cidade Id', 0, 0, 0, 1, 1, 1, '{}', 15),
(214, 30, 'whatsapp', 'text', 'Whatsapp', 0, 1, 1, 1, 1, 1, '{}', 16),
(215, 30, 'facebook', 'text', 'Facebook', 0, 0, 1, 1, 1, 1, '{}', 17),
(216, 30, 'instagram', 'text', 'Instagram', 0, 0, 1, 1, 1, 1, '{}', 18),
(217, 30, 'twitter', 'text', 'Twitter', 0, 0, 1, 1, 1, 1, '{}', 19),
(218, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(219, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 8),
(220, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 9),
(221, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 10),
(223, 30, 'user_id', 'text', 'User Id', 0, 0, 0, 1, 1, 1, '{}', 20),
(224, 31, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 11),
(225, 30, 'categoria_empresa_id', 'text', 'Categoria Empresa Id', 0, 0, 0, 1, 1, 1, '{}', 12),
(226, 31, 'categoria_produto_id', 'text', 'Categoria Produto Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(227, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 41, 'avaliacao', 'text_area', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{}', 2),
(230, 41, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(231, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(232, 41, 'empresa_id', 'text', 'Empresa Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(233, 41, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(234, 41, 'avaliacoes_empresa_belongsto_categoria_empresa_relationship', 'relationship', 'categoria_empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"categoria_empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacoes_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(235, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(236, 42, 'user_id', 'text', 'User Id', 0, 1, 1, 0, 1, 1, '{}', 2),
(238, 42, 'nota', 'text', 'Nota', 0, 0, 0, 0, 0, 0, '{}', 4),
(239, 42, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(240, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(241, 42, 'pedido_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(242, 42, 'pedido_belongstomany_produto_relationship', 'relationship', 'produtos', 0, 1, 1, 0, 1, 1, '{\"model\":\"App\\\\Models\\\\Produto\",\"table\":\"produtos\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"pedido_produtos\",\"pivot\":\"1\",\"taggable\":\"on\"}', 8),
(243, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(244, 44, 'avaliacao', 'number', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{\"step\":0.5,\"min\":0,\"max\":5,\"default\":1}', 2),
(245, 44, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 3),
(246, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 4),
(247, 44, 'empresa_id', 'text', 'Empresa Id', 0, 0, 0, 1, 1, 1, '{}', 5),
(248, 44, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 6),
(249, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(250, 45, 'avaliacao', 'number', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{\"step\":0.5,\"min\":0,\"max\":5,\"default\":1}', 2),
(251, 45, 'produto_id', 'text', 'Produto Id', 0, 0, 0, 1, 1, 1, '{}', 3),
(252, 45, 'user_id', 'text', 'User Id', 0, 0, 0, 0, 0, 0, '{}', 4),
(253, 45, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 5),
(254, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 6),
(255, 44, 'descricao', 'text', 'Descricao', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:500\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 7),
(256, 45, 'descricao', 'text', 'Descricao', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:500\",\"messages\":{\"required\":\"O campo :attribute \\u00e9 obrigatorio.\",\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 7),
(257, 45, 'avaliacoes_produto_belongsto_produto_relationship', 'relationship', 'produtos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Produto\",\"table\":\"produtos\",\"type\":\"belongsTo\",\"column\":\"produto_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(258, 44, 'avaliacao_empresa_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(259, 30, 'empresa_hasmany_avaliacao_empresa_relationship', 'relationship', 'Avaliacão', 0, 0, 1, 0, 0, 0, '{\"model\":\"App\\\\Models\\\\AvaliacaoEmpresa\",\"table\":\"avaliacao_empresas\",\"type\":\"hasMany\",\"column\":\"avaliacao\",\"key\":\"id\",\"label\":\"avaliacao\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(260, 31, 'produto_hasmany_avaliacoes_produto_relationship', 'relationship', 'avaliacoes_produtos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\AvaliacoesProduto\",\"table\":\"avaliacoes_produtos\",\"type\":\"hasMany\",\"column\":\"avaliacao\",\"key\":\"id\",\"label\":\"avaliacao\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(261, 31, 'avaliacao', 'text', 'Avaliacao', 0, 1, 1, 1, 1, 1, '{}', 12),
(262, 30, 'horario_funcionamento', 'rich_text_box', 'Horario Funcionamento', 0, 0, 1, 1, 1, 1, '{}', 21),
(263, 42, 'empresa_id', 'text', 'Empresa Id', 0, 0, 0, 0, 0, 0, '{}', 6),
(264, 42, 'data_entrega', 'date', 'Data Entrega', 0, 1, 1, 1, 1, 1, '{}', 7),
(265, 42, 'pago', 'checkbox', 'Pago', 0, 1, 1, 1, 1, 1, '{\"on\":\"Pago\",\"off\":\"Aguardando pagamento\",\"checked\":false}', 8),
(266, 42, 'pedido_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 0, 1, 1, '{\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(267, 30, 'bibliografia_produtor', 'rich_text_box', 'Bibliografia Produtor', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:5500\",\"messages\":{\"max\":\"O campo :attribute deve possuir no maximo :max caracteres.\"}}}', 22),
(268, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(269, 46, 'ordem', 'text', 'Ordem', 0, 1, 1, 1, 1, 1, '{}', 2),
(270, 46, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(271, 46, 'descricao', 'text', 'Descricao', 0, 1, 1, 1, 1, 1, '{}', 4),
(272, 46, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(273, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(274, 46, 'produto_id', 'text', 'Produto Id', 0, 0, 0, 1, 1, 1, '{}', 7),
(275, 46, 'produto_destaque_belongsto_produto_relationship', 'relationship', 'produtos', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Produto\",\"table\":\"produtos\",\"type\":\"belongsTo\",\"column\":\"produto_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(276, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(277, 47, 'ordem', 'text', 'Ordem', 0, 1, 1, 1, 1, 1, '{}', 2),
(278, 47, 'titulo', 'text', 'Titulo', 0, 1, 1, 1, 1, 1, '{}', 3),
(279, 47, 'descricao', 'text', 'Descricao', 0, 1, 1, 1, 1, 1, '{}', 4),
(280, 47, 'empresa_id', 'text', 'Empresa Id', 0, 0, 0, 1, 1, 1, '{}', 5),
(281, 47, 'empresa_destaque_belongsto_empresa_relationship', 'relationship', 'empresas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Empresa\",\"table\":\"empresas\",\"type\":\"belongsTo\",\"column\":\"empresa_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(282, 47, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(283, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(286, 1, 'user_belongsto_cidade_relationship', 'relationship', 'cidades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(287, 1, 'cidade_id', 'text', 'Cidade Id', 0, 0, 0, 1, 1, 1, '{}', 15),
(288, 30, 'ativo', 'checkbox', 'Ativo', 0, 1, 1, 0, 0, 0, '{\"on\":\"Ativo\",\"off\":\"N\\u00e3o Ativo\",\"checked\":false}', 23),
(289, 42, 'endereco_entrega', 'rich_text_box', 'Endereco Entrega', 0, 1, 1, 1, 1, 1, '{}', 9),
(290, 31, 'produto_belongsto_cidade_relationship', 'relationship', 'cidades', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Cidade\",\"table\":\"cidades\",\"type\":\"belongsTo\",\"column\":\"cidade_id\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(291, 31, 'cidade_id', 'text', 'Cidade Id', 1, 1, 1, 1, 1, 1, '{}', 13),
(292, 40, 'imagem', 'image', 'Imagem', 0, 1, 1, 1, 1, 1, '{}', 6),
(293, 30, 'empresa_belongsto_user_relationship', 'relationship', 'Produtor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(294, 45, 'avaliacoes_produto_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(295, 44, 'avaliacao_empresa_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"avaliacao_empresas\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-07-23 07:43:51', '2023-03-15 23:53:38'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-07-23 07:43:51', '2022-10-29 04:09:02'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52'),
(30, 'empresas', 'empresas', 'Empresa', 'Empresas', 'voyager-wineglass', 'App\\Models\\Empresa', 'App\\Policies\\EmpresaPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-09-23 01:08:05', '2023-03-30 00:11:07'),
(31, 'produtos', 'produtos', 'Produto', 'Produtos', 'voyager-hotdog', 'App\\Models\\Produto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-09-23 01:08:36', '2023-03-20 23:05:02'),
(36, 'categoria_produtos', 'categoria-produtos', 'Categoria Produto', 'Categoria Produtos', 'voyager-list', 'App\\Models\\CategoriaProduto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-29 04:23:37', '2023-01-23 03:18:58'),
(37, 'categoria_empresas', 'categoria-empresas', 'Categoria Empresa', 'Categoria Empresas', 'voyager-list-add', 'App\\Models\\CategoriaEmpresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-10-29 04:30:17', '2023-01-23 03:19:01'),
(39, 'estados', 'estados', 'Estado', 'Estados', 'voyager-compass', 'App\\Models\\Estado', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-11-10 03:37:22', '2022-11-10 03:37:22'),
(40, 'cidades', 'cidades', 'Cidade', 'Cidades', 'voyager-location', 'App\\Models\\Cidade', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-11-10 03:38:01', '2023-03-20 23:06:23'),
(41, 'avaliacoes_empresas', 'avaliacoes-empresas', 'Avaliacoes Empresa', 'Avaliacoes Empresas', 'voyager-medal-rank-star', 'App\\Models\\AvaliacoesEmpresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-12-06 00:38:08', '2022-12-06 01:03:01'),
(42, 'pedidos', 'pedidos', 'Pedido', 'Pedidos', 'voyager-bag', 'App\\Models\\Pedido', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-12-08 02:13:48', '2023-03-16 02:37:08'),
(44, 'avaliacao_empresas', 'avaliacao-empresas', 'Avaliacao Empresa', 'Avaliacao Empresas', 'voyager-star-two', 'App\\Models\\AvaliacaoEmpresa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-12-09 23:52:39', '2023-03-28 04:06:46'),
(45, 'avaliacoes_produtos', 'avaliacoes-produtos', 'Avaliacoes Produto', 'Avaliacoes Produtos', 'voyager-star', 'App\\Models\\AvaliacoesProduto', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":\"usuario\"}', '2022-12-09 23:56:56', '2023-03-28 04:25:21'),
(46, 'produto_destaques', 'produto-destaques', 'Produto Destaque', 'Produto Destaques', 'voyager-pizza', 'App\\Models\\ProdutoDestaque', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-15 23:03:24', '2023-03-15 23:07:01'),
(47, 'empresa_destaques', 'empresa-destaques', 'Empresa Destaque', 'Empresa Destaques', 'voyager-star-two', 'App\\Models\\EmpresaDestaque', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-03-15 23:14:06', '2023-03-30 03:30:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `cnpj` varchar(30) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `endereco` text NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `foto` blob DEFAULT NULL,
  `logo` blob DEFAULT NULL,
  `categoria_empresa_id` int(10) UNSIGNED DEFAULT NULL,
  `avaliacao` float DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `cidade_id` int(10) UNSIGNED DEFAULT NULL,
  `whatsapp` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `horario_funcionamento` text DEFAULT NULL,
  `bibliografia_produtor` text DEFAULT NULL,
  `ativo` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `nome`, `created_at`, `updated_at`, `email`, `cnpj`, `cpf`, `endereco`, `telefone`, `foto`, `logo`, `categoria_empresa_id`, `avaliacao`, `descricao`, `cidade_id`, `whatsapp`, `facebook`, `instagram`, `twitter`, `user_id`, `horario_funcionamento`, `bibliografia_produtor`, `ativo`) VALUES
(7, 'Casa do Peixe', '2022-10-09 23:46:00', '2023-03-25 01:41:34', 'casadopeixe@gmail.com', '62.818.591/0001-66', '95464124730', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4f63746f626572323032325c38676a37546b6e4a6f42346265746577326845652e6a7067, 0x656d7072657361735c4f63746f626572323032325c4f494d6f575079474c786b5a7a62683046355a442e6a7067, 1, 4, '<p>melhores pratos e sobremesas de Jardim, com peixes colhidos do a&ccedil;ude direto de guia lopes&nbsp;</p>', 6, 'http://localhost:8000/admin/empresas/7/edit', 'http://localhost:8000/admin/empresas/7/edit', 'http://localhost:8000/admin/empresas/7/edit', 'http://localhost:8000/admin/empresas/7/edit', 23, '<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>Segunda: 10 as 12</p>\r\n<p>&nbsp;</p>\r\n<p>Entregas as tercas a partir das 12 eas quanrtas 19 e aos dsabados 12</p>', '<p>Localizada a 140km da Capital de S&atilde;o Paulo, em Amparo, a fazenda Atalaia tem mais de 140 anos de hist&oacute;ria.</p>\r\n<p>A propriedade, que pertenceu a Pedro Penteado (presidente do Banco Industrial de Amparo), &eacute; datada de 1870 e &eacute; um exemplar de cultura, hist&oacute;ria e arquitetura da &eacute;poca.</p>\r\n<p>As tentativas de usar o espa&ccedil;o para produ&ccedil;&atilde;o de Caf&eacute; foram frustradas com a crise de financeira de 1929, favorecendo o estabelecimento e busca de novos meios de sobreviv&ecirc;ncia.</p>\r\n<p>Em 1940, a propriedade passar a ser administrada pela fam&iacute;lia Matta, de origem libanesa, que chegou ao Brasil em 1908.</p>\r\n<p>A produ&ccedil;&atilde;o de queijo, hoje a principal ocupa&ccedil;&atilde;o da fazenda, iniciou de modo informal h&aacute; mais de 20 anos, tocada pelas m&atilde;os do casal de mestre-queijeiros Rosana e Paulo Rezende.</p>\r\n<p>Com a gest&atilde;o do casal, a fazenda centen&aacute;ria passou por uma ressignifica&ccedil;&atilde;o do seu espa&ccedil;o, antigos lugares voltaram &agrave; vida para a produ&ccedil;&atilde;o de queijo, turismo rural e educa&ccedil;&atilde;o patrimonial.</p>', 1),
(8, 'Marquinhos lanches', '2022-11-12 06:36:00', '2023-01-15 02:19:28', 'restaurante@gmail.com', '75u57', '12345678910', 'Rua Dr. Ary Coelho de Oliveira 691 (Centro), Jardim, MS, 79240-000', '+556799993838', 0x656d7072657361735c4e6f76656d626572323032325c72563737616c3366476a765635365063575a6f712e6a7067, 0x656d7072657361735c4e6f76656d626572323032325c75516869416e6c78386942796c495162586a47392e6a7067, 1, 5, 'vvndfvi.\r\ndvfvnfvfvfninooooooII', 1, 'fhrfjrigri', NULL, 'frfrfrff', NULL, 5, NULL, NULL, NULL),
(9, 'empresas joao 3', '2022-11-27 04:39:00', '2023-01-09 22:21:43', 'joao_empresario3@gmail.com', '03.926.0630001', '0000000001', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4e6f76656d626572323032325c69557a78533739456147306b4e737162754b4b672e6a7067, 0x656d7072657361735c4e6f76656d626572323032325c714361724c3143666c7650486d72336d444a586d2e6a706567, 3, 2, 'ccfvvff', 1, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(14, 'joao_verduras2', '2023-01-16 23:34:00', '2023-01-16 23:44:24', NULL, '03.926.0630001', '0000000000', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '99-9999-9999', 0x656d7072657361735c4a616e75617279323032335c6f50476e6c776d756c527045704f5449316346342e6a7067, 0x656d7072657361735c4a616e75617279323032335c556770306a3473564e6456773532524649346f4c2e6a7067, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL),
(15, 'verduras aq', '2023-01-16 23:46:00', '2023-01-16 23:46:51', NULL, '03.926.0630001', '0000000000', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '99-9999-9999', 0x656d7072657361735c4a616e75617279323032335c7735797174767279663947514848416a436f4a792e6a7067, 0x656d7072657361735c4a616e75617279323032335c47446e4d75466d37754534656b57366b565a42752e6a7067, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(16, 'sorveteria do joaozinho', '2023-01-16 23:53:00', '2023-03-30 01:25:24', NULL, '00000000000000', '0404994940', '3frfvf', '99-9999-9999', 0x656d7072657361735c4a616e75617279323032335c735135533376474e4b6d45345247464a4e6f31452e6a7067, 0x656d7072657361735c4a616e75617279323032335c48497951626a7a4277334976305657726b7174682e6a706567, 3, 4.84375, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, 1),
(17, 'Pizzaria', '2023-01-18 02:48:00', '2023-03-30 00:55:11', NULL, '34.430.545/0001-50', '22876905302', 'dfdddd', '22222222', 0x656d7072657361735c4a616e75617279323032335c65724c4f44756b52496850693748416c483461692e6a7067, 0x656d7072657361735c4a616e75617279323032335c62554d55534c35677852783041704951395347372e6a7067, NULL, NULL, 'dffdfd', 1, NULL, NULL, NULL, NULL, 23, NULL, NULL, 1),
(18, 'Casa do peixe 2', '2023-01-18 03:29:00', '2023-03-30 00:55:39', 'restaurante@gmail.com', '34.430.545/0001-50', '66916164565', 'Rua Dr. Ary Coelho de Oliveira 691 (Centro), Jardim, MS, 79240-000', '+556799993838', NULL, NULL, NULL, NULL, 'ffdfd', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1),
(20, 'Casa do peixe 2', '2023-02-08 01:25:00', '2023-02-16 02:26:27', NULL, '34.430.545/0001-50', '22876905302', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '+55617393ddddddd', 0x656d7072657361735c4665627275617279323032335c64703963626d734574734451735765705133746f2e6a7067, 0x656d7072657361735c4665627275617279323032335c534d6b307261735467474e326744366576434d422e6a7067, NULL, NULL, 'xsdvdvfd', NULL, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL),
(21, 'adaaaaaa', '2023-02-16 02:35:00', '2023-03-24 02:21:20', NULL, '86.669.227/0001-40', '67151767285', 'addddddddadd', '(99)9999-9999', NULL, NULL, NULL, NULL, '<p>vsssssss</p>', NULL, NULL, NULL, NULL, NULL, 26, '<p>dia 22&nbsp; ate 17</p>', NULL, 1),
(22, 'verduras joaziho 9', '2023-03-10 02:10:00', '2023-03-24 02:21:17', NULL, '72.205.455/0001-54', '75935748142', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', NULL, NULL, 3, NULL, '<p>gbbbbbbbbbbb</p>', NULL, NULL, NULL, NULL, NULL, 29, NULL, NULL, 1),
(23, 'sushitel - pastel de sushi', '2023-03-17 22:40:00', '2023-03-24 02:21:14', NULL, '34.814.329/0001-08', '36631436869', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4d61726368323032335c544458534933666f534d4a714f477162306f78732e6a7067, 0x656d7072657361735c4d61726368323032335c35684b5153674a617564564d4d6c724b747172532e6a7067, 1, 5, '<p>primeira empresa do mato grosso do sul a fazer pastel no sushi renomado na Fran&ccedil;a e na Italia 5 estrelas</p>', NULL, NULL, NULL, NULL, NULL, 35, '<p>5 as 5 24 hrs&nbsp;</p>\r\n<p>dias 8 dias da semana&nbsp;</p>', '<p>Aprendi a cozinhar com os monges na china e com o mestre japones, aprendi a cozinhar sushi dentro do titanic.</p>', 1),
(24, 'Andra_storm', '2023-03-20 21:45:00', '2023-03-24 02:21:09', NULL, '41.264.712/0001-03', '77247026910', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', 0x656d7072657361735c4d61726368323032335c62676f787736524c726e463736784f767848794f2e6a7067, 0x656d7072657361735c4d61726368323032335c6e79393075793554365a78625072704a6c5663522e6a7067, 3, NULL, '<p>Empresa do joao paulo</p>', NULL, 'http://localhost:8000/empresa/7', NULL, NULL, NULL, 36, NULL, NULL, 1),
(25, 'empresa_email', '2023-03-23 03:40:48', '2023-03-24 02:21:05', NULL, '34.814.329/0001-08', '54222873551', 'R. Ari Coelho de Oliveira, 691 - Jardim, MS, 79240-000', '(67) 99815-6242', NULL, NULL, 1, NULL, '<p>dddddddddd</p>', NULL, NULL, NULL, NULL, NULL, 37, NULL, NULL, 1),
(33, 'marquinhos fritas', '2023-03-25 04:38:03', '2023-03-30 00:54:28', NULL, '11.419.838/0001-30', '57008484577', 'wwwwwwwwwwwww', '(67) 99815-6242', NULL, NULL, 3, NULL, '<p>kdkdk</p>', 7, NULL, NULL, NULL, NULL, 46, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa_destaques`
--

CREATE TABLE `empresa_destaques` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordem` int(11) DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresa_destaques`
--

INSERT INTO `empresa_destaques` (`id`, `ordem`, `titulo`, `descricao`, `empresa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'wssssss', 'sssssssss', 7, '2023-03-15 23:16:39', '2023-03-27 23:35:46'),
(2, 2, 'mundo', 'ssssssssss', 23, '2023-03-30 03:07:08', '2023-03-30 03:07:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` text NOT NULL,
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
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
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
(25, 1, 'Empresas', '', '_self', 'voyager-wineglass', '#000000', 43, 1, '2022-09-23 01:08:05', '2023-03-15 23:24:34', 'voyager.empresas.index', 'null'),
(26, 1, 'Produtos', '', '_self', 'voyager-hotdog', '#000000', 42, 1, '2022-09-23 01:08:36', '2023-03-15 23:23:20', 'voyager.produtos.index', 'null'),
(31, 1, 'Categoria Produtos', '', '_self', 'voyager-list', NULL, 42, 2, '2022-10-29 04:23:37', '2023-03-15 23:23:21', 'voyager.categoria-produtos.index', NULL),
(32, 1, 'Categoria Empresas', '', '_self', 'voyager-list-add', NULL, 43, 2, '2022-10-29 04:30:17', '2023-03-15 23:24:35', 'voyager.categoria-empresas.index', NULL),
(34, 1, 'Estados', '', '_self', 'voyager-compass', NULL, NULL, 13, '2022-11-10 03:37:22', '2023-03-15 23:24:41', 'voyager.estados.index', NULL),
(35, 1, 'Cidades', '', '_self', 'voyager-location', NULL, NULL, 14, '2022-11-10 03:38:01', '2023-03-15 23:24:41', 'voyager.cidades.index', NULL),
(37, 1, 'Pedidos', '', '_self', 'voyager-bag', '#000000', NULL, 12, '2022-12-08 02:13:48', '2023-03-15 23:24:41', 'voyager.pedidos.index', 'null'),
(38, 1, 'Avaliacao Empresas', '', '_self', 'voyager-star-two', NULL, 43, 3, '2022-12-09 23:52:39', '2023-03-15 23:24:35', 'voyager.avaliacao-empresas.index', NULL),
(39, 1, 'Avaliacoes Produtos', '', '_self', 'voyager-star', NULL, 42, 3, '2022-12-09 23:56:56', '2023-03-15 23:23:23', 'voyager.avaliacoes-produtos.index', NULL),
(40, 1, 'Produto Destaques', '', '_self', 'voyager-pizza', NULL, 42, 4, '2023-03-15 23:03:24', '2023-03-15 23:23:25', 'voyager.produto-destaques.index', NULL),
(41, 1, 'Empresa Destaques', '', '_self', 'voyager-certificate', '#000000', 43, 4, '2023-03-15 23:14:06', '2023-03-15 23:26:28', 'voyager.empresa-destaques.index', 'null'),
(42, 1, 'Titulo Produto', '', '_self', 'voyager-hotdog', '#000000', NULL, 10, '2023-03-15 23:22:39', '2023-03-15 23:22:49', NULL, ''),
(43, 1, 'Titulo Empresa', '', '_self', 'voyager-shop', '#000000', NULL, 11, '2023-03-15 23:24:28', '2023-03-15 23:24:33', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('joao_empresario3@gmail.com', '$2y$10$zbMwW0QXDA0AaV02uLIH3OVu.31MJW56l9kj1GG5avhhUQW/nFvw2', '2023-02-26 04:48:19');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `pago` tinyint(4) DEFAULT 0,
  `endereco_entrega` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `user_id`, `nota`, `created_at`, `updated_at`, `empresa_id`, `data_entrega`, `pago`, `endereco_entrega`) VALUES
(1, 6, NULL, '2023-01-18 04:31:11', '2023-01-18 04:31:11', 7, NULL, 0, NULL),
(2, 6, NULL, '2023-02-12 02:19:36', '2023-02-12 02:19:36', 7, NULL, 0, NULL),
(3, 6, NULL, '2023-02-12 02:19:37', '2023-02-12 02:19:37', 14, NULL, 0, NULL),
(4, 6, NULL, '2023-02-12 02:20:15', '2023-02-12 02:20:15', 16, NULL, 0, NULL),
(5, 1, NULL, '2023-02-13 01:14:26', '2023-02-13 01:14:26', 16, NULL, 0, NULL),
(6, 1, NULL, '2023-02-13 21:58:48', '2023-02-13 21:58:48', 16, NULL, 0, NULL),
(7, 1, NULL, '2023-02-13 21:58:48', '2023-02-13 21:58:48', 7, NULL, 0, NULL),
(8, 1, NULL, '2023-02-14 01:16:23', '2023-02-14 01:16:23', 7, NULL, 0, NULL),
(9, 1, NULL, '2023-02-14 01:16:23', '2023-03-10 03:06:39', 14, NULL, 1, NULL),
(10, 1, NULL, '2023-02-16 02:13:54', '2023-02-16 02:13:54', 7, NULL, 0, NULL),
(11, 1, NULL, '2023-02-16 02:13:54', '2023-03-10 03:47:57', 14, NULL, 1, NULL),
(12, 1, NULL, '2023-02-16 02:15:27', '2023-02-16 02:15:27', 7, NULL, 0, NULL),
(13, 1, NULL, '2023-02-16 02:15:27', '2023-02-16 02:15:27', 14, NULL, 0, NULL),
(14, 1, NULL, '2023-02-22 03:34:14', '2023-02-23 06:45:13', 7, '2023-02-22', 0, NULL),
(15, 21, NULL, '2023-03-01 01:05:27', '2023-03-01 01:05:27', 7, NULL, 0, NULL),
(16, 1, NULL, '2023-03-02 08:35:53', '2023-03-02 08:35:53', 7, NULL, 0, NULL),
(17, 1, NULL, '2023-03-02 08:35:53', '2023-03-02 08:35:53', 18, NULL, 0, NULL),
(18, 35, NULL, '2023-03-17 22:53:21', '2023-03-17 22:53:21', 23, NULL, 0, NULL),
(19, 36, NULL, '2023-03-20 21:54:16', '2023-03-20 21:54:16', 16, NULL, 0, NULL),
(20, 36, NULL, '2023-03-20 21:54:16', '2023-03-20 21:54:16', 23, NULL, 0, NULL),
(21, 1, NULL, '2023-03-22 00:40:46', '2023-03-22 00:40:46', 7, NULL, 0, NULL),
(22, 1, NULL, '2023-03-23 03:02:25', '2023-03-23 03:02:25', 18, NULL, 0, NULL),
(23, 1, NULL, '2023-03-23 03:02:34', '2023-03-23 03:02:34', 18, NULL, 0, NULL),
(24, 1, NULL, '2023-03-23 03:02:45', '2023-03-23 03:02:45', 18, NULL, 0, NULL),
(25, 1, NULL, '2023-03-23 03:09:53', '2023-03-23 03:09:53', 18, NULL, 0, NULL),
(26, 1, NULL, '2023-03-23 03:12:11', '2023-03-23 03:12:11', 18, NULL, 0, NULL),
(27, 1, NULL, '2023-03-23 03:13:41', '2023-03-23 03:13:41', 18, NULL, 0, NULL),
(28, 1, NULL, '2023-03-23 03:18:39', '2023-03-23 03:18:39', 18, NULL, 0, NULL),
(29, 1, NULL, '2023-03-23 03:21:13', '2023-03-23 03:21:13', 18, NULL, 0, NULL),
(30, 1, NULL, '2023-03-25 00:34:32', '2023-03-25 00:34:32', 18, NULL, 0, NULL),
(31, 1, NULL, '2023-03-25 00:40:03', '2023-03-25 00:40:03', 18, NULL, 0, NULL),
(32, 1, NULL, '2023-03-25 00:40:19', '2023-03-25 00:40:19', 18, NULL, 0, NULL),
(33, 1, NULL, '2023-03-25 00:40:28', '2023-03-25 00:40:28', 18, NULL, 0, NULL),
(34, 1, NULL, '2023-03-25 00:41:02', '2023-03-25 00:41:02', 18, NULL, 0, NULL),
(35, 1, NULL, '2023-03-25 00:41:43', '2023-03-25 00:41:43', 18, NULL, 0, NULL),
(36, 1, NULL, '2023-03-25 00:42:08', '2023-03-25 00:42:08', 18, NULL, 0, NULL),
(37, 1, NULL, '2023-03-25 00:42:24', '2023-03-25 00:42:24', 18, NULL, 0, NULL),
(38, 1, NULL, '2023-03-25 00:42:35', '2023-03-25 00:42:35', 18, NULL, 0, NULL),
(39, 1, NULL, '2023-03-25 00:42:55', '2023-03-25 00:42:55', 18, NULL, 0, NULL),
(40, 1, NULL, '2023-03-25 00:43:38', '2023-03-25 00:43:38', 18, NULL, 0, NULL),
(41, 1, NULL, '2023-03-25 00:44:15', '2023-03-25 00:44:15', 18, NULL, 0, NULL),
(42, 1, NULL, '2023-03-25 00:44:25', '2023-03-25 00:44:25', 18, NULL, 0, NULL),
(43, 1, NULL, '2023-03-25 00:44:49', '2023-03-25 00:44:49', 18, NULL, 0, NULL),
(44, 1, NULL, '2023-03-25 00:45:28', '2023-03-25 00:45:28', 18, NULL, 0, NULL),
(45, 1, NULL, '2023-03-25 00:45:37', '2023-03-25 00:45:37', 18, NULL, 0, NULL),
(46, 1, NULL, '2023-03-25 00:48:52', '2023-03-25 00:48:52', 18, NULL, 0, NULL),
(47, 1, NULL, '2023-03-25 00:49:27', '2023-03-25 00:49:27', 18, NULL, 0, NULL),
(48, 1, NULL, '2023-03-25 00:49:36', '2023-03-25 00:49:36', 18, NULL, 0, NULL),
(49, 1, NULL, '2023-03-25 00:49:58', '2023-03-25 00:49:58', 18, NULL, 0, NULL),
(50, 1, NULL, '2023-03-25 00:50:09', '2023-03-25 00:50:09', 18, NULL, 0, NULL),
(51, 1, NULL, '2023-03-25 00:50:22', '2023-03-25 00:50:22', 18, NULL, 0, NULL),
(52, 1, NULL, '2023-03-25 00:52:29', '2023-03-25 00:52:29', 18, NULL, 0, NULL),
(53, 1, NULL, '2023-03-25 00:53:35', '2023-03-25 00:53:35', 18, NULL, 0, NULL),
(54, 1, NULL, '2023-03-25 00:54:17', '2023-03-25 00:54:17', 18, NULL, 0, NULL),
(55, 1, NULL, '2023-03-25 00:57:32', '2023-03-25 00:57:32', 18, NULL, 0, NULL),
(56, 1, NULL, '2023-03-25 00:57:44', '2023-03-25 00:57:44', 18, NULL, 0, NULL),
(57, 1, NULL, '2023-03-25 00:57:50', '2023-03-25 00:57:50', 18, NULL, 0, NULL),
(58, 1, NULL, '2023-03-25 00:58:30', '2023-03-25 00:58:30', 18, NULL, 0, NULL),
(59, 1, NULL, '2023-03-25 00:58:34', '2023-03-25 00:58:34', 18, NULL, 0, NULL),
(60, 1, NULL, '2023-03-25 00:58:46', '2023-03-25 00:58:46', 18, NULL, 0, NULL),
(61, 1, NULL, '2023-03-25 00:58:48', '2023-03-25 00:58:48', 18, NULL, 0, NULL),
(62, 1, NULL, '2023-03-25 00:58:57', '2023-03-25 00:58:57', 18, NULL, 0, NULL),
(63, 1, NULL, '2023-03-25 00:59:17', '2023-03-25 00:59:17', 18, NULL, 0, NULL),
(64, 1, NULL, '2023-03-25 00:59:34', '2023-03-25 00:59:34', 18, NULL, 0, NULL),
(65, 1, NULL, '2023-03-25 00:59:52', '2023-03-25 00:59:52', 18, NULL, 0, NULL),
(66, 1, NULL, '2023-03-25 01:00:27', '2023-03-25 01:00:27', 18, NULL, 0, NULL),
(67, 1, NULL, '2023-03-25 01:00:38', '2023-03-25 01:00:38', 18, NULL, 0, NULL),
(68, 1, NULL, '2023-03-25 01:01:33', '2023-03-25 01:01:33', 18, NULL, 0, NULL),
(69, 1, NULL, '2023-03-25 01:01:44', '2023-03-25 01:01:44', 18, NULL, 0, NULL),
(70, 1, NULL, '2023-03-25 01:01:52', '2023-03-25 01:01:52', 18, NULL, 0, NULL),
(71, 1, NULL, '2023-03-25 01:01:58', '2023-03-25 01:01:58', 18, NULL, 0, NULL),
(72, 1, NULL, '2023-03-25 01:02:03', '2023-03-25 01:02:03', 18, NULL, 0, NULL),
(73, 1, NULL, '2023-03-25 01:02:10', '2023-03-25 01:02:10', 18, NULL, 0, NULL),
(74, 1, NULL, '2023-03-25 01:02:29', '2023-03-25 01:02:29', 18, NULL, 0, NULL),
(75, 1, NULL, '2023-03-25 01:03:10', '2023-03-25 01:03:10', 18, NULL, 0, NULL),
(76, 1, NULL, '2023-03-25 01:03:28', '2023-03-25 01:03:28', 18, NULL, 0, NULL),
(77, 1, NULL, '2023-03-25 01:03:48', '2023-03-25 01:03:48', 18, NULL, 0, NULL),
(78, 1, NULL, '2023-03-25 01:04:19', '2023-03-25 01:04:19', 18, NULL, 0, NULL),
(79, 1, NULL, '2023-03-25 01:06:04', '2023-03-25 01:06:04', 18, NULL, 0, NULL),
(80, 1, NULL, '2023-03-25 01:07:28', '2023-03-25 01:07:28', 18, NULL, 0, NULL),
(81, 1, NULL, '2023-03-25 01:08:01', '2023-03-25 01:08:01', 18, NULL, 0, NULL),
(82, 1, NULL, '2023-03-25 01:08:50', '2023-03-25 01:08:50', 18, NULL, 0, NULL),
(83, 1, NULL, '2023-03-25 01:10:26', '2023-03-25 01:10:26', 18, NULL, 0, NULL),
(84, 1, NULL, '2023-03-25 01:10:41', '2023-03-25 01:10:41', 18, NULL, 0, NULL),
(85, 1, NULL, '2023-03-25 01:11:24', '2023-03-25 01:11:24', 18, NULL, 0, NULL),
(86, 1, NULL, '2023-03-25 01:12:53', '2023-03-25 01:12:53', 18, NULL, 0, NULL),
(87, 1, NULL, '2023-03-25 01:13:23', '2023-03-25 01:13:23', 18, NULL, 0, NULL),
(88, 1, NULL, '2023-03-25 01:13:47', '2023-03-25 01:13:47', 18, NULL, 0, NULL),
(89, 1, NULL, '2023-03-25 01:13:56', '2023-03-25 01:13:56', 18, NULL, 0, NULL),
(90, 1, NULL, '2023-03-25 01:14:19', '2023-03-25 01:14:19', 18, NULL, 0, NULL),
(91, 1, NULL, '2023-03-25 01:14:40', '2023-03-25 01:14:40', 18, NULL, 0, NULL),
(92, 1, NULL, '2023-03-25 01:15:04', '2023-03-25 01:15:04', 18, NULL, 0, NULL),
(93, 1, NULL, '2023-03-25 01:15:24', '2023-03-25 01:15:24', 18, NULL, 0, NULL),
(94, 1, NULL, '2023-03-25 01:15:56', '2023-03-25 01:15:56', 18, NULL, 0, NULL),
(95, 1, NULL, '2023-03-25 01:16:15', '2023-03-25 01:16:15', 18, NULL, 0, NULL),
(96, 1, NULL, '2023-03-25 01:17:18', '2023-03-25 01:17:18', 18, NULL, 0, NULL),
(97, 1, NULL, '2023-03-25 01:18:30', '2023-03-25 01:18:30', 18, NULL, 0, NULL),
(98, 1, NULL, '2023-03-25 01:19:00', '2023-03-25 01:19:00', 18, NULL, 0, NULL),
(99, 1, NULL, '2023-03-25 01:21:34', '2023-03-25 01:21:34', 18, NULL, 0, NULL),
(100, 1, NULL, '2023-03-25 01:22:09', '2023-03-25 01:22:09', 18, NULL, 0, NULL),
(101, 1, NULL, '2023-03-25 01:22:15', '2023-03-25 01:22:15', 18, NULL, 0, NULL),
(102, 1, NULL, '2023-03-25 01:22:57', '2023-03-25 01:22:57', 18, NULL, 0, NULL),
(103, 1, NULL, '2023-03-25 01:23:13', '2023-03-25 01:23:13', 18, NULL, 0, NULL),
(104, 1, NULL, '2023-03-25 01:23:34', '2023-03-25 01:23:34', 18, NULL, 0, NULL),
(105, 1, NULL, '2023-03-25 01:23:49', '2023-03-25 01:23:49', 18, NULL, 0, NULL),
(106, 1, NULL, '2023-03-25 01:24:01', '2023-03-25 01:24:01', 18, NULL, 0, NULL),
(107, 1, NULL, '2023-03-25 01:25:29', '2023-03-25 01:25:29', 18, NULL, 0, NULL),
(108, 1, NULL, '2023-03-25 01:25:42', '2023-03-25 01:25:42', 18, NULL, 0, NULL),
(109, 1, NULL, '2023-03-25 01:25:52', '2023-03-25 01:25:52', 18, NULL, 0, NULL),
(110, 1, NULL, '2023-03-25 01:26:01', '2023-03-25 01:26:01', 18, NULL, 0, NULL),
(111, 1, NULL, '2023-03-25 01:26:11', '2023-03-25 01:26:11', 18, NULL, 0, NULL),
(112, 1, NULL, '2023-03-25 01:26:32', '2023-03-25 01:26:32', 18, NULL, 0, NULL),
(113, 1, NULL, '2023-03-25 01:26:57', '2023-03-25 01:26:57', 18, NULL, 0, NULL),
(114, 1, NULL, '2023-03-25 01:27:04', '2023-03-25 01:27:04', 18, NULL, 0, NULL),
(115, 1, NULL, '2023-03-25 01:27:21', '2023-03-25 01:27:21', 18, NULL, 0, NULL),
(116, 1, NULL, '2023-03-25 01:27:28', '2023-03-25 01:27:28', 18, NULL, 0, NULL),
(117, 1, NULL, '2023-03-25 01:27:48', '2023-03-25 01:27:48', 18, NULL, 0, NULL),
(118, 1, NULL, '2023-03-25 01:27:57', '2023-03-25 01:27:57', 18, NULL, 0, NULL),
(119, 1, NULL, '2023-03-25 01:28:05', '2023-03-25 01:28:05', 18, NULL, 0, NULL),
(120, 1, NULL, '2023-03-25 01:28:35', '2023-03-25 01:28:35', 18, NULL, 0, NULL),
(121, 1, NULL, '2023-03-25 01:28:48', '2023-03-25 01:28:48', 18, NULL, 0, NULL),
(122, 1, NULL, '2023-03-25 01:29:03', '2023-03-25 01:29:03', 18, NULL, 0, NULL),
(123, 1, NULL, '2023-03-25 01:29:43', '2023-03-25 01:29:43', 18, NULL, 0, NULL),
(124, 1, NULL, '2023-03-25 01:29:51', '2023-03-25 01:29:51', 18, NULL, 0, NULL),
(125, 1, NULL, '2023-03-25 01:30:00', '2023-03-25 01:30:00', 18, NULL, 0, NULL),
(126, 1, NULL, '2023-03-25 01:30:23', '2023-03-25 01:30:23', 18, NULL, 0, NULL),
(127, 1, NULL, '2023-03-25 01:30:27', '2023-03-25 01:30:27', 18, NULL, 0, NULL),
(128, 1, NULL, '2023-03-25 01:30:38', '2023-03-25 01:30:38', 18, NULL, 0, NULL),
(129, 1, NULL, '2023-03-25 01:31:07', '2023-03-25 01:31:07', 18, NULL, 0, NULL),
(130, 1, NULL, '2023-03-25 01:31:13', '2023-03-25 01:31:13', 18, NULL, 0, NULL),
(131, 1, NULL, '2023-03-25 01:31:48', '2023-03-25 01:31:48', 7, NULL, 0, NULL),
(132, 1, NULL, '2023-03-25 01:33:53', '2023-03-25 01:33:53', 7, NULL, 0, NULL),
(133, 1, NULL, '2023-03-25 01:34:11', '2023-03-25 01:34:11', 7, NULL, 0, NULL),
(134, 1, NULL, '2023-03-25 01:34:22', '2023-03-25 01:34:22', 7, NULL, 0, NULL),
(135, 1, NULL, '2023-03-25 01:34:42', '2023-03-25 01:34:42', 7, NULL, 0, NULL),
(136, 1, NULL, '2023-03-25 01:35:15', '2023-03-25 01:35:15', 7, NULL, 0, NULL),
(137, 1, NULL, '2023-03-25 01:35:22', '2023-03-25 01:35:22', 7, NULL, 0, NULL),
(138, 1, NULL, '2023-03-25 01:35:32', '2023-03-25 01:35:32', 7, NULL, 0, NULL),
(139, 1, NULL, '2023-03-25 01:35:41', '2023-03-25 01:35:41', 7, NULL, 0, NULL),
(140, 1, NULL, '2023-03-25 01:36:53', '2023-03-25 01:36:53', 7, NULL, 0, NULL),
(141, 1, NULL, '2023-03-25 01:37:40', '2023-03-25 01:37:40', 7, NULL, 0, NULL),
(142, 1, NULL, '2023-03-25 01:38:19', '2023-03-25 01:38:19', 7, NULL, 0, NULL),
(143, 1, NULL, '2023-03-25 01:42:10', '2023-03-25 01:42:10', 7, NULL, 0, NULL),
(144, 1, NULL, '2023-03-25 02:14:46', '2023-03-25 02:14:46', 7, NULL, 0, NULL),
(145, 1, NULL, '2023-03-25 02:16:33', '2023-03-25 02:16:33', 7, NULL, 0, NULL),
(146, 1, NULL, '2023-03-25 02:17:36', '2023-03-25 02:17:36', 7, NULL, 0, NULL),
(147, 1, NULL, '2023-03-25 02:23:24', '2023-03-25 02:23:24', 7, NULL, 0, NULL),
(148, 1, NULL, '2023-03-25 02:23:27', '2023-03-25 02:23:27', 7, NULL, 0, NULL),
(149, 1, NULL, '2023-03-25 02:23:59', '2023-03-25 02:23:59', 7, NULL, 0, NULL),
(150, 1, NULL, '2023-03-25 02:24:21', '2023-03-25 02:24:21', 7, NULL, 0, NULL),
(151, 1, NULL, '2023-03-25 02:26:13', '2023-03-25 02:26:13', 7, NULL, 0, NULL),
(152, 1, NULL, '2023-03-25 02:26:33', '2023-03-25 02:26:33', 7, NULL, 0, NULL),
(153, 1, NULL, '2023-03-25 02:27:09', '2023-03-25 02:27:09', 7, NULL, 0, NULL),
(154, 1, NULL, '2023-03-25 02:35:18', '2023-03-25 02:35:18', 7, NULL, 0, NULL),
(155, 1, NULL, '2023-03-25 02:36:12', '2023-03-25 02:36:12', 7, NULL, 0, NULL),
(156, 1, NULL, '2023-03-25 02:36:59', '2023-03-25 02:36:59', 7, NULL, 0, NULL),
(157, 1, NULL, '2023-03-25 02:38:09', '2023-03-25 02:38:09', 7, NULL, 0, NULL),
(158, 1, NULL, '2023-03-25 02:38:51', '2023-03-25 02:38:51', 7, NULL, 0, NULL),
(159, 1, NULL, '2023-03-25 02:39:28', '2023-03-25 02:39:28', 7, NULL, 0, NULL),
(160, 1, NULL, '2023-03-25 02:40:53', '2023-03-25 02:40:53', 7, NULL, 0, NULL),
(161, 1, NULL, '2023-03-25 02:41:20', '2023-03-25 02:41:20', 7, NULL, 0, NULL),
(162, 40, NULL, '2023-03-25 02:55:52', '2023-03-25 02:55:52', 7, NULL, 0, NULL),
(163, 40, NULL, '2023-03-25 02:57:18', '2023-03-25 02:57:18', 7, NULL, 0, NULL),
(164, 40, NULL, '2023-03-25 02:58:55', '2023-03-25 02:58:55', 7, NULL, 0, NULL),
(165, 40, NULL, '2023-03-25 02:59:55', '2023-03-25 02:59:55', 7, NULL, 0, NULL),
(166, 40, NULL, '2023-03-25 02:59:58', '2023-03-25 02:59:58', 7, NULL, 0, NULL),
(167, 40, NULL, '2023-03-25 03:00:23', '2023-03-25 03:00:23', 7, NULL, 0, NULL),
(168, 40, NULL, '2023-03-25 03:00:28', '2023-03-25 03:00:28', 7, NULL, 0, NULL),
(169, 40, NULL, '2023-03-25 03:00:37', '2023-03-25 03:00:37', 7, NULL, 0, NULL),
(170, 40, NULL, '2023-03-25 03:01:26', '2023-03-25 03:01:26', 7, NULL, 0, NULL),
(171, 40, NULL, '2023-03-25 03:01:29', '2023-03-25 03:01:29', 7, NULL, 0, NULL),
(172, 40, NULL, '2023-03-25 03:01:43', '2023-03-25 03:01:43', 7, NULL, 0, NULL),
(173, 40, NULL, '2023-03-25 03:02:11', '2023-03-25 03:02:11', 7, NULL, 0, NULL),
(174, 40, NULL, '2023-03-25 03:02:34', '2023-03-25 03:02:34', 7, NULL, 0, NULL),
(175, 40, NULL, '2023-03-25 03:03:19', '2023-03-25 03:03:19', 7, NULL, 0, NULL),
(176, 40, NULL, '2023-03-25 03:05:02', '2023-03-25 03:05:02', 7, NULL, 0, NULL),
(177, 40, NULL, '2023-03-25 03:05:15', '2023-03-25 03:05:15', 7, NULL, 0, NULL),
(178, 40, NULL, '2023-03-25 03:05:34', '2023-03-25 03:05:34', 7, NULL, 0, NULL),
(179, 40, NULL, '2023-03-25 03:06:23', '2023-03-25 03:06:23', 7, NULL, 0, NULL),
(180, 40, NULL, '2023-03-25 03:07:32', '2023-03-25 03:07:32', 7, NULL, 0, NULL),
(181, 40, NULL, '2023-03-25 03:08:14', '2023-03-25 03:08:14', 7, NULL, 0, NULL),
(182, 40, NULL, '2023-03-25 03:08:45', '2023-03-25 03:08:45', 7, NULL, 0, NULL),
(183, 40, NULL, '2023-03-25 03:09:20', '2023-03-25 03:09:20', 7, NULL, 0, NULL),
(184, 40, NULL, '2023-03-25 03:09:55', '2023-03-25 03:09:55', 7, NULL, 0, NULL),
(185, 40, NULL, '2023-03-25 03:10:01', '2023-03-25 03:10:01', 7, NULL, 0, NULL),
(186, 40, NULL, '2023-03-25 03:10:10', '2023-03-25 03:10:10', 7, NULL, 0, NULL),
(187, 40, NULL, '2023-03-25 03:10:26', '2023-03-25 03:10:26', 7, NULL, 0, NULL),
(188, 40, NULL, '2023-03-25 03:10:47', '2023-03-25 03:10:47', 7, NULL, 0, NULL),
(189, 40, NULL, '2023-03-25 03:11:58', '2023-03-25 03:11:58', 7, NULL, 0, NULL),
(190, 40, NULL, '2023-03-25 03:36:18', '2023-03-25 03:36:18', 7, NULL, 0, NULL),
(191, 40, NULL, '2023-03-25 03:36:56', '2023-03-25 03:36:56', 7, NULL, 0, NULL),
(192, 40, NULL, '2023-03-25 03:39:35', '2023-03-25 03:39:35', 7, NULL, 0, NULL),
(193, 40, NULL, '2023-03-25 03:39:52', '2023-03-25 03:39:52', 7, NULL, 0, NULL),
(194, 40, NULL, '2023-03-25 03:40:51', '2023-03-25 03:40:51', 7, NULL, 0, NULL),
(195, 40, NULL, '2023-03-25 03:41:27', '2023-03-25 03:41:27', 7, NULL, 0, NULL),
(196, 40, NULL, '2023-03-25 03:42:09', '2023-03-25 03:42:09', 7, NULL, 0, NULL),
(197, 40, NULL, '2023-03-25 03:43:15', '2023-03-25 03:43:15', 7, NULL, 0, NULL),
(198, 40, NULL, '2023-03-25 03:43:21', '2023-03-25 03:43:21', 7, NULL, 0, NULL),
(199, 40, NULL, '2023-03-25 03:43:44', '2023-03-25 03:43:44', 7, NULL, 0, NULL),
(200, 40, NULL, '2023-03-25 03:44:18', '2023-03-25 03:44:18', 7, NULL, 0, NULL),
(201, 40, NULL, '2023-03-25 03:44:26', '2023-03-25 03:44:26', 7, NULL, 0, NULL),
(202, 40, NULL, '2023-03-25 03:44:43', '2023-03-25 03:44:43', 7, NULL, 0, NULL),
(203, 40, NULL, '2023-03-25 03:46:03', '2023-03-25 03:46:03', 7, NULL, 0, NULL),
(204, 40, NULL, '2023-03-25 03:46:07', '2023-03-25 03:46:07', 7, NULL, 0, NULL),
(205, 40, NULL, '2023-03-25 03:46:33', '2023-03-25 03:46:33', 7, NULL, 0, NULL),
(206, 40, NULL, '2023-03-25 03:47:25', '2023-03-25 03:47:25', 7, NULL, 0, NULL),
(207, 40, NULL, '2023-03-25 03:48:06', '2023-03-25 03:48:06', 7, NULL, 0, NULL),
(208, 40, NULL, '2023-03-25 03:48:57', '2023-03-25 03:48:57', 7, NULL, 0, NULL),
(209, 40, NULL, '2023-03-25 03:49:16', '2023-03-25 03:49:16', 7, NULL, 0, NULL),
(210, 40, NULL, '2023-03-25 03:49:37', '2023-03-25 03:49:37', 7, NULL, 0, NULL),
(211, 40, NULL, '2023-03-25 03:51:22', '2023-03-25 03:51:22', 7, NULL, 0, NULL),
(212, 40, NULL, '2023-03-25 03:51:50', '2023-03-25 03:51:50', 7, NULL, 0, NULL),
(213, 40, NULL, '2023-03-25 03:53:47', '2023-03-25 03:53:47', 7, NULL, 0, NULL),
(214, 40, NULL, '2023-03-25 03:54:17', '2023-03-25 03:54:17', 7, NULL, 0, NULL),
(215, 40, NULL, '2023-03-25 03:54:35', '2023-03-25 03:54:35', 7, NULL, 0, NULL),
(216, 40, NULL, '2023-03-25 03:55:07', '2023-03-25 03:55:07', 7, NULL, 0, NULL),
(217, 40, NULL, '2023-03-25 03:55:13', '2023-03-25 03:55:13', 7, NULL, 0, NULL),
(218, 40, NULL, '2023-03-25 03:55:20', '2023-03-25 03:55:20', 7, NULL, 0, NULL),
(219, 40, NULL, '2023-03-25 03:55:31', '2023-03-25 03:55:31', 7, NULL, 0, NULL),
(220, 40, NULL, '2023-03-25 03:55:57', '2023-03-25 03:55:57', 7, NULL, 0, NULL),
(221, 40, NULL, '2023-03-25 03:56:19', '2023-03-25 03:56:19', 7, NULL, 0, NULL),
(222, 40, NULL, '2023-03-25 03:56:22', '2023-03-25 03:56:22', 7, NULL, 0, NULL),
(223, 40, NULL, '2023-03-25 03:56:42', '2023-03-25 03:56:42', 7, NULL, 0, NULL),
(224, 40, NULL, '2023-03-25 03:56:53', '2023-03-25 03:56:53', 7, NULL, 0, NULL),
(225, 40, NULL, '2023-03-25 03:57:02', '2023-03-25 03:57:02', 7, NULL, 0, NULL),
(226, 40, NULL, '2023-03-25 03:57:21', '2023-03-25 03:57:21', 7, NULL, 0, NULL),
(227, 40, NULL, '2023-03-25 03:58:02', '2023-03-25 03:58:02', 7, NULL, 0, NULL),
(228, 1, NULL, '2023-03-27 02:02:58', '2023-03-27 02:02:58', 7, NULL, 0, NULL),
(229, 1, NULL, '2023-03-27 02:08:20', '2023-03-27 02:08:20', 7, NULL, 0, NULL),
(230, 1, NULL, '2023-03-27 02:08:27', '2023-03-27 02:08:27', 7, NULL, 0, NULL),
(231, 1, NULL, '2023-03-27 02:08:53', '2023-03-27 02:08:53', 7, NULL, 0, NULL),
(232, 1, NULL, '2023-03-27 02:10:08', '2023-03-27 02:10:08', 7, NULL, 0, NULL),
(233, 1, NULL, '2023-03-27 02:10:27', '2023-03-27 02:10:27', 7, NULL, 0, NULL),
(234, 1, NULL, '2023-03-27 02:11:07', '2023-03-27 02:11:07', 7, NULL, 0, NULL),
(235, 1, NULL, '2023-03-27 02:11:36', '2023-03-27 02:11:36', 7, NULL, 0, NULL),
(236, 1, NULL, '2023-03-27 02:11:45', '2023-03-27 02:11:45', 7, NULL, 0, NULL),
(237, 1, NULL, '2023-03-27 02:11:53', '2023-03-27 02:11:53', 7, NULL, 0, NULL),
(238, 1, NULL, '2023-03-27 02:12:15', '2023-03-27 02:12:15', 7, NULL, 0, NULL),
(239, 1, NULL, '2023-03-27 02:12:19', '2023-03-27 02:12:19', 7, NULL, 0, NULL),
(240, 1, NULL, '2023-03-27 02:12:27', '2023-03-27 02:12:27', 7, NULL, 0, NULL),
(241, 1, NULL, '2023-03-27 02:13:43', '2023-03-27 02:13:43', 7, NULL, 0, NULL),
(242, 1, NULL, '2023-03-27 02:13:52', '2023-03-27 02:13:52', 7, NULL, 0, NULL),
(243, 1, NULL, '2023-03-27 02:13:58', '2023-03-27 02:13:58', 7, NULL, 0, NULL),
(244, 1, NULL, '2023-03-27 02:14:16', '2023-03-27 02:14:16', 7, NULL, 0, NULL),
(245, 1, NULL, '2023-03-27 02:14:23', '2023-03-27 02:14:23', 7, NULL, 0, NULL),
(246, 1, NULL, '2023-03-27 02:14:48', '2023-03-27 02:14:48', 7, NULL, 0, NULL),
(247, 1, NULL, '2023-03-27 02:15:21', '2023-03-27 02:15:21', 7, NULL, 0, NULL),
(248, 1, NULL, '2023-03-27 02:15:41', '2023-03-27 02:15:41', 7, NULL, 0, NULL),
(249, 1, NULL, '2023-03-27 02:15:50', '2023-03-27 02:15:50', 7, NULL, 0, NULL),
(250, 1, NULL, '2023-03-27 02:16:05', '2023-03-27 02:16:05', 7, NULL, 0, NULL),
(251, 1, NULL, '2023-03-27 02:16:12', '2023-03-27 02:16:12', 7, NULL, 0, NULL),
(252, 1, NULL, '2023-03-27 02:16:22', '2023-03-27 02:16:22', 7, NULL, 0, NULL),
(253, 1, NULL, '2023-03-27 02:17:26', '2023-03-27 02:17:26', 7, NULL, 0, NULL),
(254, 1, NULL, '2023-03-27 02:17:45', '2023-03-27 02:17:45', 7, NULL, 0, NULL),
(255, 1, NULL, '2023-03-27 02:18:35', '2023-03-27 02:18:35', 7, NULL, 0, NULL),
(256, 1, NULL, '2023-03-27 02:19:09', '2023-03-27 02:19:09', 7, NULL, 0, NULL),
(257, 1, NULL, '2023-03-27 02:19:23', '2023-03-27 02:19:23', 7, NULL, 0, NULL),
(258, 1, NULL, '2023-03-27 02:20:04', '2023-03-27 02:20:04', 7, NULL, 0, NULL),
(259, 1, NULL, '2023-03-27 02:20:10', '2023-03-27 02:20:10', 7, NULL, 0, NULL),
(260, 1, NULL, '2023-03-27 02:20:25', '2023-03-27 02:20:25', 7, NULL, 0, NULL),
(261, 1, NULL, '2023-03-27 02:20:36', '2023-03-27 02:20:36', 7, NULL, 0, NULL),
(262, 1, NULL, '2023-03-27 02:21:12', '2023-03-27 02:21:12', 7, NULL, 0, NULL),
(263, 1, NULL, '2023-03-27 02:21:30', '2023-03-27 02:21:30', 7, NULL, 0, NULL),
(264, 1, NULL, '2023-03-27 02:21:47', '2023-03-27 02:21:47', 7, NULL, 0, NULL),
(265, 1, NULL, '2023-03-27 02:24:04', '2023-03-27 02:24:04', 7, NULL, 0, NULL),
(266, 1, NULL, '2023-03-27 02:24:40', '2023-03-27 02:24:40', 7, NULL, 0, NULL),
(267, 1, NULL, '2023-03-27 22:44:25', '2023-03-27 22:44:25', 7, NULL, 0, NULL),
(268, 1, NULL, '2023-03-27 22:44:55', '2023-03-27 22:44:55', 7, NULL, 0, NULL),
(269, 1, NULL, '2023-03-27 22:49:32', '2023-03-27 22:49:32', 7, NULL, 0, NULL),
(270, 1, NULL, '2023-03-27 22:50:02', '2023-03-27 22:50:02', 7, NULL, 0, NULL),
(271, 1, NULL, '2023-03-27 22:50:19', '2023-03-27 22:50:19', 7, NULL, 0, NULL),
(272, 1, NULL, '2023-03-27 22:50:46', '2023-03-27 22:50:46', 7, NULL, 0, NULL),
(273, 1, NULL, '2023-03-27 22:51:02', '2023-03-27 22:51:02', 7, NULL, 0, NULL),
(274, 1, NULL, '2023-03-27 22:52:19', '2023-03-27 22:52:19', 7, NULL, 0, NULL),
(275, 1, NULL, '2023-03-27 22:52:36', '2023-03-27 22:52:36', 7, NULL, 0, NULL),
(276, 1, NULL, '2023-03-27 22:53:32', '2023-03-27 22:53:32', 7, NULL, 0, NULL),
(277, 1, NULL, '2023-03-27 22:54:29', '2023-03-27 22:54:29', 7, NULL, 0, NULL),
(278, 1, NULL, '2023-03-27 22:55:32', '2023-03-27 22:55:32', 7, NULL, 0, NULL),
(279, 1, NULL, '2023-03-27 22:55:57', '2023-03-27 22:55:57', 7, NULL, 0, NULL),
(280, 1, NULL, '2023-03-27 22:56:23', '2023-03-27 22:56:23', 7, NULL, 0, NULL),
(281, 1, NULL, '2023-03-27 22:57:24', '2023-03-27 22:57:24', 7, NULL, 0, NULL),
(282, 1, NULL, '2023-03-27 22:57:50', '2023-03-27 22:57:50', 7, NULL, 0, NULL),
(283, 1, NULL, '2023-03-27 22:58:09', '2023-03-27 22:58:09', 7, NULL, 0, NULL),
(284, 1, NULL, '2023-03-27 22:58:20', '2023-03-27 22:58:20', 7, NULL, 0, NULL),
(285, 1, NULL, '2023-03-27 22:59:45', '2023-03-27 22:59:45', 7, NULL, 0, NULL),
(286, 1, NULL, '2023-03-27 23:00:24', '2023-03-27 23:00:24', 7, NULL, 0, NULL),
(287, 1, NULL, '2023-03-27 23:00:38', '2023-03-27 23:00:38', 7, NULL, 0, NULL),
(288, 1, NULL, '2023-03-27 23:00:44', '2023-03-27 23:00:44', 7, NULL, 0, NULL),
(289, 1, NULL, '2023-03-27 23:01:14', '2023-03-27 23:01:14', 7, NULL, 0, NULL),
(290, 1, NULL, '2023-03-27 23:01:40', '2023-03-27 23:01:40', 7, NULL, 0, NULL),
(291, 1, NULL, '2023-03-27 23:01:47', '2023-03-27 23:01:47', 7, NULL, 0, NULL),
(292, 1, NULL, '2023-03-27 23:01:57', '2023-03-27 23:01:57', 7, NULL, 0, NULL),
(293, 1, NULL, '2023-03-27 23:02:11', '2023-03-27 23:02:11', 7, NULL, 0, NULL),
(294, 1, NULL, '2023-03-27 23:02:29', '2023-03-27 23:02:29', 7, NULL, 0, NULL),
(295, 1, NULL, '2023-03-27 23:02:45', '2023-03-27 23:02:45', 7, NULL, 0, NULL),
(296, 1, NULL, '2023-03-27 23:03:02', '2023-03-27 23:03:02', 7, NULL, 0, NULL),
(297, 1, NULL, '2023-03-27 23:03:24', '2023-03-27 23:03:24', 7, NULL, 0, NULL),
(298, 1, NULL, '2023-03-27 23:03:48', '2023-03-27 23:03:48', 7, NULL, 0, NULL),
(299, 1, NULL, '2023-03-27 23:04:56', '2023-03-27 23:04:56', 7, NULL, 0, NULL),
(300, 1, NULL, '2023-03-27 23:05:28', '2023-03-27 23:05:28', 7, NULL, 0, NULL),
(301, 1, NULL, '2023-03-27 23:05:50', '2023-03-27 23:05:50', 7, NULL, 0, NULL),
(302, 1, NULL, '2023-03-27 23:06:08', '2023-03-27 23:06:08', 7, NULL, 0, NULL),
(303, 1, NULL, '2023-03-27 23:06:30', '2023-03-27 23:06:30', 7, NULL, 0, NULL),
(304, 1, NULL, '2023-03-27 23:06:40', '2023-03-27 23:06:40', 7, NULL, 0, NULL),
(305, 1, NULL, '2023-03-27 23:08:22', '2023-03-27 23:08:22', 7, NULL, 0, NULL),
(306, 1, NULL, '2023-03-27 23:08:40', '2023-03-27 23:08:40', 7, NULL, 0, NULL),
(307, 1, NULL, '2023-03-27 23:08:54', '2023-03-27 23:08:54', 7, NULL, 0, NULL),
(308, 1, NULL, '2023-03-27 23:09:33', '2023-03-27 23:09:33', 7, NULL, 0, NULL),
(309, 1, NULL, '2023-03-27 23:09:50', '2023-03-27 23:09:50', 7, NULL, 0, NULL),
(310, 1, NULL, '2023-03-27 23:10:09', '2023-03-27 23:10:09', 7, NULL, 0, NULL),
(311, 1, NULL, '2023-03-27 23:10:26', '2023-03-27 23:10:26', 7, NULL, 0, NULL),
(312, 1, NULL, '2023-03-29 00:24:15', '2023-03-29 00:24:15', 7, NULL, 0, NULL),
(313, 1, NULL, '2023-03-29 00:26:01', '2023-03-29 00:26:01', 7, NULL, 0, NULL),
(314, 1, NULL, '2023-03-29 00:28:51', '2023-03-29 00:28:51', 7, NULL, 0, NULL),
(315, 1, NULL, '2023-03-29 00:29:19', '2023-03-29 00:29:19', 7, NULL, 0, NULL),
(316, 1, NULL, '2023-03-29 00:29:50', '2023-03-29 00:29:50', 7, NULL, 0, NULL),
(317, 1, NULL, '2023-03-29 00:31:15', '2023-03-29 00:31:15', 7, NULL, 0, NULL),
(318, 1, NULL, '2023-03-29 00:32:45', '2023-03-29 00:32:45', 7, NULL, 0, NULL),
(319, 1, NULL, '2023-03-29 00:34:38', '2023-03-29 00:34:38', 7, NULL, 0, NULL),
(320, 1, NULL, '2023-03-29 00:35:15', '2023-03-29 00:35:15', 7, NULL, 0, NULL),
(321, 1, NULL, '2023-03-29 00:36:46', '2023-03-29 00:36:46', 7, NULL, 0, NULL),
(322, 1, NULL, '2023-03-29 00:38:06', '2023-03-29 00:38:06', 7, NULL, 0, NULL),
(323, 1, NULL, '2023-03-29 00:38:44', '2023-03-29 00:38:44', 7, NULL, 0, NULL),
(324, 1, NULL, '2023-03-29 00:39:00', '2023-03-29 00:39:00', 7, NULL, 0, NULL),
(325, 1, NULL, '2023-03-29 00:40:52', '2023-03-29 00:40:52', 7, NULL, 0, NULL),
(326, 1, NULL, '2023-03-29 00:41:19', '2023-03-29 00:41:19', 7, NULL, 0, NULL),
(327, 1, NULL, '2023-03-29 00:41:45', '2023-03-29 00:41:45', 7, NULL, 0, NULL),
(328, 1, NULL, '2023-03-29 00:59:19', '2023-03-29 00:59:19', 7, NULL, 0, NULL),
(329, 1, NULL, '2023-03-29 00:59:49', '2023-03-29 00:59:49', 7, NULL, 0, NULL),
(330, 1, NULL, '2023-03-29 01:00:07', '2023-03-29 01:00:07', 7, NULL, 0, NULL),
(331, 1, NULL, '2023-03-29 01:00:41', '2023-03-29 01:00:41', 7, NULL, 0, NULL),
(332, 1, NULL, '2023-03-29 01:01:12', '2023-03-29 01:01:12', 7, NULL, 0, NULL),
(333, 1, NULL, '2023-03-29 01:02:29', '2023-03-29 01:02:29', 7, NULL, 0, NULL),
(334, 1, NULL, '2023-03-29 01:02:43', '2023-03-29 01:02:43', 7, NULL, 0, NULL),
(335, 1, NULL, '2023-03-29 01:02:57', '2023-03-29 01:02:57', 7, NULL, 0, NULL),
(336, 1, NULL, '2023-03-29 01:03:23', '2023-03-29 01:03:23', 7, NULL, 0, NULL),
(337, 1, NULL, '2023-03-29 01:04:08', '2023-03-29 01:04:08', 7, NULL, 0, NULL),
(338, 1, NULL, '2023-03-29 01:04:16', '2023-03-29 01:04:16', 7, NULL, 0, NULL),
(339, 1, NULL, '2023-03-29 01:05:09', '2023-03-29 01:05:09', 7, NULL, 0, NULL),
(340, 1, NULL, '2023-03-29 01:05:36', '2023-03-29 01:05:36', 7, NULL, 0, NULL),
(341, 1, NULL, '2023-03-29 01:05:47', '2023-03-29 01:05:47', 7, NULL, 0, NULL),
(342, 1, NULL, '2023-03-29 01:06:24', '2023-03-29 01:06:24', 7, NULL, 0, NULL),
(343, 1, NULL, '2023-03-29 01:07:12', '2023-03-29 01:07:12', 7, NULL, 0, NULL),
(344, 1, NULL, '2023-03-29 01:08:13', '2023-03-29 01:08:13', 7, NULL, 0, NULL),
(345, 1, NULL, '2023-03-29 01:09:04', '2023-03-29 01:09:04', 7, NULL, 0, NULL),
(346, 1, NULL, '2023-03-29 01:09:59', '2023-03-29 01:09:59', 7, NULL, 0, NULL),
(347, 1, NULL, '2023-03-29 01:10:34', '2023-03-29 01:10:34', 7, NULL, 0, NULL),
(348, 1, NULL, '2023-03-29 01:11:16', '2023-03-29 01:11:16', 7, NULL, 0, NULL),
(349, 1, NULL, '2023-03-29 01:11:30', '2023-03-29 01:11:30', 7, NULL, 0, NULL),
(350, 1, NULL, '2023-03-29 01:12:14', '2023-03-29 01:12:14', 7, NULL, 0, NULL),
(351, 1, NULL, '2023-03-29 01:12:52', '2023-03-29 01:12:52', 7, NULL, 0, NULL),
(352, 1, NULL, '2023-03-29 01:13:17', '2023-03-29 01:13:17', 7, NULL, 0, NULL),
(353, 1, NULL, '2023-03-29 01:13:38', '2023-03-29 01:13:38', 7, NULL, 0, NULL),
(354, 1, NULL, '2023-03-29 01:13:50', '2023-03-29 01:13:50', 7, NULL, 0, NULL),
(355, 1, NULL, '2023-03-29 01:14:41', '2023-03-29 01:14:41', 7, NULL, 0, NULL),
(356, 1, NULL, '2023-03-29 01:15:46', '2023-03-29 01:15:46', 7, NULL, 0, NULL),
(357, 1, NULL, '2023-03-29 01:16:40', '2023-03-29 01:16:40', 7, NULL, 0, NULL),
(358, 1, NULL, '2023-03-29 01:17:51', '2023-03-29 01:17:51', 7, NULL, 0, NULL),
(359, 1, NULL, '2023-03-29 01:18:50', '2023-03-29 01:18:50', 7, NULL, 0, NULL),
(360, 1, NULL, '2023-03-29 01:19:40', '2023-03-29 01:19:40', 7, NULL, 0, NULL),
(361, 1, NULL, '2023-03-29 01:24:53', '2023-03-29 01:24:53', 7, NULL, 0, NULL),
(362, 1, NULL, '2023-03-29 01:25:47', '2023-03-29 01:25:47', 7, NULL, 0, NULL),
(363, 1, NULL, '2023-03-29 07:46:54', '2023-03-29 07:46:54', 23, NULL, 0, NULL),
(364, 1, NULL, '2023-03-29 07:47:02', '2023-03-29 07:47:02', 7, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_produtos`
--

CREATE TABLE `pedido_produtos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pedido_produtos`
--

INSERT INTO `pedido_produtos` (`id`, `pedido_id`, `produto_id`, `created_at`, `updated_at`) VALUES
(1, 1, 19, '2023-01-18 04:31:11', '2023-01-18 04:31:11'),
(2, 1, 18, '2023-01-18 04:31:11', '2023-01-18 04:31:11'),
(3, 1, 19, '2023-01-18 04:31:11', '2023-01-18 04:31:11'),
(4, 2, 19, '2023-02-12 02:19:37', '2023-02-12 02:19:37'),
(5, 2, 18, '2023-02-12 02:19:37', '2023-02-12 02:19:37'),
(6, 2, 19, '2023-02-12 02:19:37', '2023-02-12 02:19:37'),
(7, 3, 26, '2023-02-12 02:19:37', '2023-02-12 02:19:37'),
(8, 4, 25, '2023-02-12 02:20:15', '2023-02-12 02:20:15'),
(9, 5, 25, '2023-02-13 01:14:26', '2023-02-13 01:14:26'),
(10, 6, 25, '2023-02-13 21:58:48', '2023-02-13 21:58:48'),
(11, 7, 19, '2023-02-13 21:58:48', '2023-02-13 21:58:48'),
(12, 7, 24, '2023-02-13 21:58:48', '2023-02-13 21:58:48'),
(13, 7, 23, '2023-02-13 21:58:48', '2023-02-13 21:58:48'),
(14, 8, 23, '2023-02-14 01:16:23', '2023-02-14 01:16:23'),
(15, 8, 24, '2023-02-14 01:16:23', '2023-02-14 01:16:23'),
(16, 9, 26, '2023-02-14 01:16:23', '2023-02-14 01:16:23'),
(17, 10, 18, '2023-02-16 02:13:54', '2023-02-16 02:13:54'),
(18, 11, 26, '2023-02-16 02:13:54', '2023-02-16 02:13:54'),
(19, 12, 23, '2023-02-16 02:15:27', '2023-02-16 02:15:27'),
(20, 12, 18, '2023-02-16 02:15:27', '2023-02-16 02:15:27'),
(21, 13, 26, '2023-02-16 02:15:27', '2023-02-16 02:15:27'),
(22, 14, 23, '2023-02-22 03:34:14', '2023-02-22 03:34:14'),
(23, 14, 18, '2023-02-22 03:34:14', '2023-02-22 03:34:14'),
(24, 15, 19, '2023-03-01 01:05:27', '2023-03-01 01:05:27'),
(25, 16, 19, '2023-03-02 08:35:53', '2023-03-02 08:35:53'),
(26, 17, 27, '2023-03-02 08:35:53', '2023-03-02 08:35:53'),
(27, 18, 31, '2023-03-17 22:53:21', '2023-03-17 22:53:21'),
(28, 19, 25, '2023-03-20 21:54:16', '2023-03-20 21:54:16'),
(29, 20, 31, '2023-03-20 21:54:16', '2023-03-20 21:54:16'),
(30, 21, 23, '2023-03-22 00:40:46', '2023-03-22 00:40:46'),
(31, 22, 27, '2023-03-23 03:02:25', '2023-03-23 03:02:25'),
(32, 23, 27, '2023-03-23 03:02:34', '2023-03-23 03:02:34'),
(33, 24, 27, '2023-03-23 03:02:45', '2023-03-23 03:02:45'),
(34, 25, 27, '2023-03-23 03:09:53', '2023-03-23 03:09:53'),
(35, 26, 27, '2023-03-23 03:12:11', '2023-03-23 03:12:11'),
(36, 27, 27, '2023-03-23 03:13:41', '2023-03-23 03:13:41'),
(37, 28, 27, '2023-03-23 03:18:39', '2023-03-23 03:18:39'),
(38, 29, 27, '2023-03-23 03:21:13', '2023-03-23 03:21:13'),
(39, 30, 27, '2023-03-25 00:34:32', '2023-03-25 00:34:32'),
(40, 31, 27, '2023-03-25 00:40:03', '2023-03-25 00:40:03'),
(41, 32, 27, '2023-03-25 00:40:19', '2023-03-25 00:40:19'),
(42, 33, 27, '2023-03-25 00:40:28', '2023-03-25 00:40:28'),
(43, 34, 27, '2023-03-25 00:41:02', '2023-03-25 00:41:02'),
(44, 35, 27, '2023-03-25 00:41:43', '2023-03-25 00:41:43'),
(45, 36, 27, '2023-03-25 00:42:08', '2023-03-25 00:42:08'),
(46, 37, 27, '2023-03-25 00:42:24', '2023-03-25 00:42:24'),
(47, 38, 27, '2023-03-25 00:42:35', '2023-03-25 00:42:35'),
(48, 39, 27, '2023-03-25 00:42:55', '2023-03-25 00:42:55'),
(49, 40, 27, '2023-03-25 00:43:38', '2023-03-25 00:43:38'),
(50, 41, 27, '2023-03-25 00:44:15', '2023-03-25 00:44:15'),
(51, 42, 27, '2023-03-25 00:44:26', '2023-03-25 00:44:26'),
(52, 43, 27, '2023-03-25 00:44:49', '2023-03-25 00:44:49'),
(53, 44, 27, '2023-03-25 00:45:28', '2023-03-25 00:45:28'),
(54, 45, 27, '2023-03-25 00:45:37', '2023-03-25 00:45:37'),
(55, 46, 27, '2023-03-25 00:48:52', '2023-03-25 00:48:52'),
(56, 47, 27, '2023-03-25 00:49:27', '2023-03-25 00:49:27'),
(57, 48, 27, '2023-03-25 00:49:36', '2023-03-25 00:49:36'),
(58, 49, 27, '2023-03-25 00:49:58', '2023-03-25 00:49:58'),
(59, 50, 27, '2023-03-25 00:50:09', '2023-03-25 00:50:09'),
(60, 51, 27, '2023-03-25 00:50:22', '2023-03-25 00:50:22'),
(61, 52, 27, '2023-03-25 00:52:29', '2023-03-25 00:52:29'),
(62, 53, 27, '2023-03-25 00:53:35', '2023-03-25 00:53:35'),
(63, 54, 27, '2023-03-25 00:54:17', '2023-03-25 00:54:17'),
(64, 55, 27, '2023-03-25 00:57:32', '2023-03-25 00:57:32'),
(65, 56, 27, '2023-03-25 00:57:44', '2023-03-25 00:57:44'),
(66, 57, 27, '2023-03-25 00:57:50', '2023-03-25 00:57:50'),
(67, 58, 27, '2023-03-25 00:58:30', '2023-03-25 00:58:30'),
(68, 59, 27, '2023-03-25 00:58:34', '2023-03-25 00:58:34'),
(69, 60, 27, '2023-03-25 00:58:46', '2023-03-25 00:58:46'),
(70, 61, 27, '2023-03-25 00:58:48', '2023-03-25 00:58:48'),
(71, 62, 27, '2023-03-25 00:58:57', '2023-03-25 00:58:57'),
(72, 63, 27, '2023-03-25 00:59:17', '2023-03-25 00:59:17'),
(73, 64, 27, '2023-03-25 00:59:34', '2023-03-25 00:59:34'),
(74, 65, 27, '2023-03-25 00:59:52', '2023-03-25 00:59:52'),
(75, 66, 27, '2023-03-25 01:00:27', '2023-03-25 01:00:27'),
(76, 67, 27, '2023-03-25 01:00:38', '2023-03-25 01:00:38'),
(77, 68, 27, '2023-03-25 01:01:33', '2023-03-25 01:01:33'),
(78, 69, 27, '2023-03-25 01:01:44', '2023-03-25 01:01:44'),
(79, 70, 27, '2023-03-25 01:01:52', '2023-03-25 01:01:52'),
(80, 71, 27, '2023-03-25 01:01:58', '2023-03-25 01:01:58'),
(81, 72, 27, '2023-03-25 01:02:04', '2023-03-25 01:02:04'),
(82, 73, 27, '2023-03-25 01:02:10', '2023-03-25 01:02:10'),
(83, 74, 27, '2023-03-25 01:02:29', '2023-03-25 01:02:29'),
(84, 75, 27, '2023-03-25 01:03:10', '2023-03-25 01:03:10'),
(85, 76, 27, '2023-03-25 01:03:28', '2023-03-25 01:03:28'),
(86, 77, 27, '2023-03-25 01:03:48', '2023-03-25 01:03:48'),
(87, 78, 27, '2023-03-25 01:04:19', '2023-03-25 01:04:19'),
(88, 79, 27, '2023-03-25 01:06:04', '2023-03-25 01:06:04'),
(89, 80, 27, '2023-03-25 01:07:28', '2023-03-25 01:07:28'),
(90, 81, 27, '2023-03-25 01:08:01', '2023-03-25 01:08:01'),
(91, 82, 27, '2023-03-25 01:08:50', '2023-03-25 01:08:50'),
(92, 83, 27, '2023-03-25 01:10:26', '2023-03-25 01:10:26'),
(93, 84, 27, '2023-03-25 01:10:41', '2023-03-25 01:10:41'),
(94, 85, 27, '2023-03-25 01:11:24', '2023-03-25 01:11:24'),
(95, 86, 27, '2023-03-25 01:12:53', '2023-03-25 01:12:53'),
(96, 87, 27, '2023-03-25 01:13:23', '2023-03-25 01:13:23'),
(97, 88, 27, '2023-03-25 01:13:47', '2023-03-25 01:13:47'),
(98, 89, 27, '2023-03-25 01:13:56', '2023-03-25 01:13:56'),
(99, 90, 27, '2023-03-25 01:14:19', '2023-03-25 01:14:19'),
(100, 91, 27, '2023-03-25 01:14:40', '2023-03-25 01:14:40'),
(101, 92, 27, '2023-03-25 01:15:04', '2023-03-25 01:15:04'),
(102, 93, 27, '2023-03-25 01:15:24', '2023-03-25 01:15:24'),
(103, 94, 27, '2023-03-25 01:15:56', '2023-03-25 01:15:56'),
(104, 95, 27, '2023-03-25 01:16:15', '2023-03-25 01:16:15'),
(105, 96, 27, '2023-03-25 01:17:18', '2023-03-25 01:17:18'),
(106, 97, 27, '2023-03-25 01:18:30', '2023-03-25 01:18:30'),
(107, 98, 27, '2023-03-25 01:19:00', '2023-03-25 01:19:00'),
(108, 99, 27, '2023-03-25 01:21:34', '2023-03-25 01:21:34'),
(109, 100, 27, '2023-03-25 01:22:09', '2023-03-25 01:22:09'),
(110, 101, 27, '2023-03-25 01:22:15', '2023-03-25 01:22:15'),
(111, 102, 27, '2023-03-25 01:22:57', '2023-03-25 01:22:57'),
(112, 103, 27, '2023-03-25 01:23:13', '2023-03-25 01:23:13'),
(113, 104, 27, '2023-03-25 01:23:34', '2023-03-25 01:23:34'),
(114, 105, 27, '2023-03-25 01:23:49', '2023-03-25 01:23:49'),
(115, 106, 27, '2023-03-25 01:24:01', '2023-03-25 01:24:01'),
(116, 107, 27, '2023-03-25 01:25:29', '2023-03-25 01:25:29'),
(117, 108, 27, '2023-03-25 01:25:42', '2023-03-25 01:25:42'),
(118, 109, 27, '2023-03-25 01:25:52', '2023-03-25 01:25:52'),
(119, 110, 27, '2023-03-25 01:26:01', '2023-03-25 01:26:01'),
(120, 111, 27, '2023-03-25 01:26:11', '2023-03-25 01:26:11'),
(121, 112, 27, '2023-03-25 01:26:32', '2023-03-25 01:26:32'),
(122, 113, 27, '2023-03-25 01:26:57', '2023-03-25 01:26:57'),
(123, 114, 27, '2023-03-25 01:27:04', '2023-03-25 01:27:04'),
(124, 115, 27, '2023-03-25 01:27:21', '2023-03-25 01:27:21'),
(125, 116, 27, '2023-03-25 01:27:28', '2023-03-25 01:27:28'),
(126, 117, 27, '2023-03-25 01:27:48', '2023-03-25 01:27:48'),
(127, 118, 27, '2023-03-25 01:27:57', '2023-03-25 01:27:57'),
(128, 119, 27, '2023-03-25 01:28:05', '2023-03-25 01:28:05'),
(129, 120, 27, '2023-03-25 01:28:35', '2023-03-25 01:28:35'),
(130, 121, 27, '2023-03-25 01:28:48', '2023-03-25 01:28:48'),
(131, 122, 27, '2023-03-25 01:29:03', '2023-03-25 01:29:03'),
(132, 123, 27, '2023-03-25 01:29:43', '2023-03-25 01:29:43'),
(133, 124, 27, '2023-03-25 01:29:51', '2023-03-25 01:29:51'),
(134, 125, 27, '2023-03-25 01:30:00', '2023-03-25 01:30:00'),
(135, 126, 27, '2023-03-25 01:30:23', '2023-03-25 01:30:23'),
(136, 127, 27, '2023-03-25 01:30:27', '2023-03-25 01:30:27'),
(137, 128, 27, '2023-03-25 01:30:38', '2023-03-25 01:30:38'),
(138, 129, 27, '2023-03-25 01:31:07', '2023-03-25 01:31:07'),
(139, 130, 27, '2023-03-25 01:31:13', '2023-03-25 01:31:13'),
(140, 131, 18, '2023-03-25 01:31:48', '2023-03-25 01:31:48'),
(141, 131, 23, '2023-03-25 01:31:48', '2023-03-25 01:31:48'),
(142, 131, 24, '2023-03-25 01:31:48', '2023-03-25 01:31:48'),
(143, 132, 18, '2023-03-25 01:33:53', '2023-03-25 01:33:53'),
(144, 132, 23, '2023-03-25 01:33:53', '2023-03-25 01:33:53'),
(145, 132, 24, '2023-03-25 01:33:53', '2023-03-25 01:33:53'),
(146, 133, 18, '2023-03-25 01:34:11', '2023-03-25 01:34:11'),
(147, 133, 23, '2023-03-25 01:34:11', '2023-03-25 01:34:11'),
(148, 133, 24, '2023-03-25 01:34:11', '2023-03-25 01:34:11'),
(149, 134, 18, '2023-03-25 01:34:22', '2023-03-25 01:34:22'),
(150, 134, 23, '2023-03-25 01:34:22', '2023-03-25 01:34:22'),
(151, 134, 24, '2023-03-25 01:34:22', '2023-03-25 01:34:22'),
(152, 135, 18, '2023-03-25 01:34:42', '2023-03-25 01:34:42'),
(153, 135, 23, '2023-03-25 01:34:42', '2023-03-25 01:34:42'),
(154, 135, 24, '2023-03-25 01:34:42', '2023-03-25 01:34:42'),
(155, 136, 18, '2023-03-25 01:35:15', '2023-03-25 01:35:15'),
(156, 136, 23, '2023-03-25 01:35:15', '2023-03-25 01:35:15'),
(157, 136, 24, '2023-03-25 01:35:15', '2023-03-25 01:35:15'),
(158, 137, 18, '2023-03-25 01:35:22', '2023-03-25 01:35:22'),
(159, 137, 23, '2023-03-25 01:35:22', '2023-03-25 01:35:22'),
(160, 137, 24, '2023-03-25 01:35:22', '2023-03-25 01:35:22'),
(161, 138, 18, '2023-03-25 01:35:32', '2023-03-25 01:35:32'),
(162, 138, 23, '2023-03-25 01:35:32', '2023-03-25 01:35:32'),
(163, 138, 24, '2023-03-25 01:35:32', '2023-03-25 01:35:32'),
(164, 139, 18, '2023-03-25 01:35:41', '2023-03-25 01:35:41'),
(165, 139, 23, '2023-03-25 01:35:41', '2023-03-25 01:35:41'),
(166, 139, 24, '2023-03-25 01:35:41', '2023-03-25 01:35:41'),
(167, 140, 18, '2023-03-25 01:36:53', '2023-03-25 01:36:53'),
(168, 140, 23, '2023-03-25 01:36:53', '2023-03-25 01:36:53'),
(169, 140, 24, '2023-03-25 01:36:53', '2023-03-25 01:36:53'),
(170, 141, 18, '2023-03-25 01:37:40', '2023-03-25 01:37:40'),
(171, 141, 23, '2023-03-25 01:37:40', '2023-03-25 01:37:40'),
(172, 141, 24, '2023-03-25 01:37:40', '2023-03-25 01:37:40'),
(173, 142, 18, '2023-03-25 01:38:19', '2023-03-25 01:38:19'),
(174, 142, 23, '2023-03-25 01:38:19', '2023-03-25 01:38:19'),
(175, 142, 24, '2023-03-25 01:38:19', '2023-03-25 01:38:19'),
(176, 143, 18, '2023-03-25 01:42:10', '2023-03-25 01:42:10'),
(177, 144, 18, '2023-03-25 02:14:46', '2023-03-25 02:14:46'),
(178, 144, 23, '2023-03-25 02:14:46', '2023-03-25 02:14:46'),
(179, 145, 18, '2023-03-25 02:16:33', '2023-03-25 02:16:33'),
(180, 145, 23, '2023-03-25 02:16:33', '2023-03-25 02:16:33'),
(181, 146, 18, '2023-03-25 02:17:36', '2023-03-25 02:17:36'),
(182, 146, 23, '2023-03-25 02:17:36', '2023-03-25 02:17:36'),
(183, 147, 18, '2023-03-25 02:23:24', '2023-03-25 02:23:24'),
(184, 147, 23, '2023-03-25 02:23:24', '2023-03-25 02:23:24'),
(185, 148, 18, '2023-03-25 02:23:27', '2023-03-25 02:23:27'),
(186, 148, 23, '2023-03-25 02:23:27', '2023-03-25 02:23:27'),
(187, 149, 18, '2023-03-25 02:23:59', '2023-03-25 02:23:59'),
(188, 149, 23, '2023-03-25 02:23:59', '2023-03-25 02:23:59'),
(189, 150, 18, '2023-03-25 02:24:21', '2023-03-25 02:24:21'),
(190, 150, 23, '2023-03-25 02:24:21', '2023-03-25 02:24:21'),
(191, 151, 18, '2023-03-25 02:26:13', '2023-03-25 02:26:13'),
(192, 151, 23, '2023-03-25 02:26:13', '2023-03-25 02:26:13'),
(193, 152, 18, '2023-03-25 02:26:33', '2023-03-25 02:26:33'),
(194, 152, 23, '2023-03-25 02:26:33', '2023-03-25 02:26:33'),
(195, 153, 18, '2023-03-25 02:27:09', '2023-03-25 02:27:09'),
(196, 153, 23, '2023-03-25 02:27:09', '2023-03-25 02:27:09'),
(197, 154, 18, '2023-03-25 02:35:18', '2023-03-25 02:35:18'),
(198, 154, 23, '2023-03-25 02:35:18', '2023-03-25 02:35:18'),
(199, 155, 18, '2023-03-25 02:36:12', '2023-03-25 02:36:12'),
(200, 155, 23, '2023-03-25 02:36:12', '2023-03-25 02:36:12'),
(201, 156, 18, '2023-03-25 02:36:59', '2023-03-25 02:36:59'),
(202, 156, 23, '2023-03-25 02:36:59', '2023-03-25 02:36:59'),
(203, 157, 18, '2023-03-25 02:38:09', '2023-03-25 02:38:09'),
(204, 157, 23, '2023-03-25 02:38:09', '2023-03-25 02:38:09'),
(205, 158, 18, '2023-03-25 02:38:51', '2023-03-25 02:38:51'),
(206, 158, 23, '2023-03-25 02:38:51', '2023-03-25 02:38:51'),
(207, 159, 18, '2023-03-25 02:39:28', '2023-03-25 02:39:28'),
(208, 159, 23, '2023-03-25 02:39:28', '2023-03-25 02:39:28'),
(209, 160, 18, '2023-03-25 02:40:53', '2023-03-25 02:40:53'),
(210, 160, 23, '2023-03-25 02:40:53', '2023-03-25 02:40:53'),
(211, 161, 18, '2023-03-25 02:41:20', '2023-03-25 02:41:20'),
(212, 161, 23, '2023-03-25 02:41:20', '2023-03-25 02:41:20'),
(213, 162, 18, '2023-03-25 02:55:52', '2023-03-25 02:55:52'),
(214, 162, 23, '2023-03-25 02:55:52', '2023-03-25 02:55:52'),
(215, 162, 23, '2023-03-25 02:55:52', '2023-03-25 02:55:52'),
(216, 163, 18, '2023-03-25 02:57:18', '2023-03-25 02:57:18'),
(217, 163, 23, '2023-03-25 02:57:18', '2023-03-25 02:57:18'),
(218, 163, 23, '2023-03-25 02:57:18', '2023-03-25 02:57:18'),
(219, 164, 18, '2023-03-25 02:58:55', '2023-03-25 02:58:55'),
(220, 164, 23, '2023-03-25 02:58:55', '2023-03-25 02:58:55'),
(221, 164, 23, '2023-03-25 02:58:55', '2023-03-25 02:58:55'),
(222, 165, 18, '2023-03-25 02:59:55', '2023-03-25 02:59:55'),
(223, 165, 23, '2023-03-25 02:59:55', '2023-03-25 02:59:55'),
(224, 165, 23, '2023-03-25 02:59:55', '2023-03-25 02:59:55'),
(225, 166, 18, '2023-03-25 02:59:58', '2023-03-25 02:59:58'),
(226, 166, 23, '2023-03-25 02:59:58', '2023-03-25 02:59:58'),
(227, 166, 23, '2023-03-25 02:59:58', '2023-03-25 02:59:58'),
(228, 167, 18, '2023-03-25 03:00:23', '2023-03-25 03:00:23'),
(229, 167, 23, '2023-03-25 03:00:23', '2023-03-25 03:00:23'),
(230, 167, 23, '2023-03-25 03:00:23', '2023-03-25 03:00:23'),
(231, 168, 18, '2023-03-25 03:00:28', '2023-03-25 03:00:28'),
(232, 168, 23, '2023-03-25 03:00:28', '2023-03-25 03:00:28'),
(233, 168, 23, '2023-03-25 03:00:28', '2023-03-25 03:00:28'),
(234, 169, 18, '2023-03-25 03:00:37', '2023-03-25 03:00:37'),
(235, 169, 23, '2023-03-25 03:00:37', '2023-03-25 03:00:37'),
(236, 169, 23, '2023-03-25 03:00:37', '2023-03-25 03:00:37'),
(237, 170, 18, '2023-03-25 03:01:26', '2023-03-25 03:01:26'),
(238, 170, 23, '2023-03-25 03:01:26', '2023-03-25 03:01:26'),
(239, 170, 23, '2023-03-25 03:01:26', '2023-03-25 03:01:26'),
(240, 171, 18, '2023-03-25 03:01:29', '2023-03-25 03:01:29'),
(241, 171, 23, '2023-03-25 03:01:29', '2023-03-25 03:01:29'),
(242, 171, 23, '2023-03-25 03:01:29', '2023-03-25 03:01:29'),
(243, 172, 18, '2023-03-25 03:01:43', '2023-03-25 03:01:43'),
(244, 172, 23, '2023-03-25 03:01:43', '2023-03-25 03:01:43'),
(245, 172, 23, '2023-03-25 03:01:43', '2023-03-25 03:01:43'),
(246, 173, 18, '2023-03-25 03:02:11', '2023-03-25 03:02:11'),
(247, 173, 23, '2023-03-25 03:02:11', '2023-03-25 03:02:11'),
(248, 173, 23, '2023-03-25 03:02:11', '2023-03-25 03:02:11'),
(249, 174, 18, '2023-03-25 03:02:34', '2023-03-25 03:02:34'),
(250, 174, 23, '2023-03-25 03:02:34', '2023-03-25 03:02:34'),
(251, 174, 23, '2023-03-25 03:02:34', '2023-03-25 03:02:34'),
(252, 175, 18, '2023-03-25 03:03:19', '2023-03-25 03:03:19'),
(253, 175, 23, '2023-03-25 03:03:19', '2023-03-25 03:03:19'),
(254, 175, 23, '2023-03-25 03:03:19', '2023-03-25 03:03:19'),
(255, 176, 18, '2023-03-25 03:05:02', '2023-03-25 03:05:02'),
(256, 176, 23, '2023-03-25 03:05:02', '2023-03-25 03:05:02'),
(257, 176, 23, '2023-03-25 03:05:02', '2023-03-25 03:05:02'),
(258, 177, 18, '2023-03-25 03:05:15', '2023-03-25 03:05:15'),
(259, 177, 23, '2023-03-25 03:05:15', '2023-03-25 03:05:15'),
(260, 177, 23, '2023-03-25 03:05:15', '2023-03-25 03:05:15'),
(261, 178, 18, '2023-03-25 03:05:34', '2023-03-25 03:05:34'),
(262, 178, 23, '2023-03-25 03:05:34', '2023-03-25 03:05:34'),
(263, 178, 23, '2023-03-25 03:05:34', '2023-03-25 03:05:34'),
(264, 179, 18, '2023-03-25 03:06:23', '2023-03-25 03:06:23'),
(265, 179, 23, '2023-03-25 03:06:23', '2023-03-25 03:06:23'),
(266, 179, 23, '2023-03-25 03:06:23', '2023-03-25 03:06:23'),
(267, 180, 18, '2023-03-25 03:07:32', '2023-03-25 03:07:32'),
(268, 180, 23, '2023-03-25 03:07:32', '2023-03-25 03:07:32'),
(269, 180, 23, '2023-03-25 03:07:32', '2023-03-25 03:07:32'),
(270, 181, 18, '2023-03-25 03:08:14', '2023-03-25 03:08:14'),
(271, 181, 23, '2023-03-25 03:08:14', '2023-03-25 03:08:14'),
(272, 181, 23, '2023-03-25 03:08:14', '2023-03-25 03:08:14'),
(273, 182, 18, '2023-03-25 03:08:45', '2023-03-25 03:08:45'),
(274, 182, 23, '2023-03-25 03:08:45', '2023-03-25 03:08:45'),
(275, 182, 23, '2023-03-25 03:08:45', '2023-03-25 03:08:45'),
(276, 183, 18, '2023-03-25 03:09:20', '2023-03-25 03:09:20'),
(277, 183, 23, '2023-03-25 03:09:20', '2023-03-25 03:09:20'),
(278, 183, 23, '2023-03-25 03:09:20', '2023-03-25 03:09:20'),
(279, 184, 18, '2023-03-25 03:09:55', '2023-03-25 03:09:55'),
(280, 184, 23, '2023-03-25 03:09:55', '2023-03-25 03:09:55'),
(281, 184, 23, '2023-03-25 03:09:55', '2023-03-25 03:09:55'),
(282, 185, 18, '2023-03-25 03:10:01', '2023-03-25 03:10:01'),
(283, 185, 23, '2023-03-25 03:10:01', '2023-03-25 03:10:01'),
(284, 185, 23, '2023-03-25 03:10:01', '2023-03-25 03:10:01'),
(285, 186, 18, '2023-03-25 03:10:10', '2023-03-25 03:10:10'),
(286, 186, 23, '2023-03-25 03:10:10', '2023-03-25 03:10:10'),
(287, 186, 23, '2023-03-25 03:10:10', '2023-03-25 03:10:10'),
(288, 187, 18, '2023-03-25 03:10:26', '2023-03-25 03:10:26'),
(289, 187, 23, '2023-03-25 03:10:26', '2023-03-25 03:10:26'),
(290, 187, 23, '2023-03-25 03:10:26', '2023-03-25 03:10:26'),
(291, 188, 18, '2023-03-25 03:10:47', '2023-03-25 03:10:47'),
(292, 188, 23, '2023-03-25 03:10:47', '2023-03-25 03:10:47'),
(293, 188, 23, '2023-03-25 03:10:47', '2023-03-25 03:10:47'),
(294, 189, 18, '2023-03-25 03:11:58', '2023-03-25 03:11:58'),
(295, 189, 23, '2023-03-25 03:11:58', '2023-03-25 03:11:58'),
(296, 189, 23, '2023-03-25 03:11:58', '2023-03-25 03:11:58'),
(297, 190, 18, '2023-03-25 03:36:18', '2023-03-25 03:36:18'),
(298, 190, 23, '2023-03-25 03:36:18', '2023-03-25 03:36:18'),
(299, 190, 23, '2023-03-25 03:36:18', '2023-03-25 03:36:18'),
(300, 191, 18, '2023-03-25 03:36:56', '2023-03-25 03:36:56'),
(301, 191, 23, '2023-03-25 03:36:56', '2023-03-25 03:36:56'),
(302, 191, 23, '2023-03-25 03:36:56', '2023-03-25 03:36:56'),
(303, 192, 18, '2023-03-25 03:39:35', '2023-03-25 03:39:35'),
(304, 192, 23, '2023-03-25 03:39:35', '2023-03-25 03:39:35'),
(305, 192, 23, '2023-03-25 03:39:35', '2023-03-25 03:39:35'),
(306, 193, 18, '2023-03-25 03:39:52', '2023-03-25 03:39:52'),
(307, 193, 23, '2023-03-25 03:39:52', '2023-03-25 03:39:52'),
(308, 193, 23, '2023-03-25 03:39:52', '2023-03-25 03:39:52'),
(309, 194, 18, '2023-03-25 03:40:51', '2023-03-25 03:40:51'),
(310, 194, 23, '2023-03-25 03:40:51', '2023-03-25 03:40:51'),
(311, 194, 23, '2023-03-25 03:40:51', '2023-03-25 03:40:51'),
(312, 195, 18, '2023-03-25 03:41:27', '2023-03-25 03:41:27'),
(313, 195, 23, '2023-03-25 03:41:27', '2023-03-25 03:41:27'),
(314, 195, 23, '2023-03-25 03:41:27', '2023-03-25 03:41:27'),
(315, 196, 18, '2023-03-25 03:42:09', '2023-03-25 03:42:09'),
(316, 196, 23, '2023-03-25 03:42:09', '2023-03-25 03:42:09'),
(317, 196, 23, '2023-03-25 03:42:09', '2023-03-25 03:42:09'),
(318, 197, 18, '2023-03-25 03:43:15', '2023-03-25 03:43:15'),
(319, 197, 23, '2023-03-25 03:43:15', '2023-03-25 03:43:15'),
(320, 197, 23, '2023-03-25 03:43:15', '2023-03-25 03:43:15'),
(321, 198, 18, '2023-03-25 03:43:21', '2023-03-25 03:43:21'),
(322, 198, 23, '2023-03-25 03:43:21', '2023-03-25 03:43:21'),
(323, 198, 23, '2023-03-25 03:43:21', '2023-03-25 03:43:21'),
(324, 199, 18, '2023-03-25 03:43:44', '2023-03-25 03:43:44'),
(325, 199, 23, '2023-03-25 03:43:44', '2023-03-25 03:43:44'),
(326, 199, 23, '2023-03-25 03:43:44', '2023-03-25 03:43:44'),
(327, 200, 18, '2023-03-25 03:44:18', '2023-03-25 03:44:18'),
(328, 200, 23, '2023-03-25 03:44:18', '2023-03-25 03:44:18'),
(329, 200, 23, '2023-03-25 03:44:18', '2023-03-25 03:44:18'),
(330, 201, 18, '2023-03-25 03:44:26', '2023-03-25 03:44:26'),
(331, 201, 23, '2023-03-25 03:44:26', '2023-03-25 03:44:26'),
(332, 201, 23, '2023-03-25 03:44:26', '2023-03-25 03:44:26'),
(333, 202, 18, '2023-03-25 03:44:43', '2023-03-25 03:44:43'),
(334, 202, 23, '2023-03-25 03:44:43', '2023-03-25 03:44:43'),
(335, 202, 23, '2023-03-25 03:44:43', '2023-03-25 03:44:43'),
(336, 203, 18, '2023-03-25 03:46:03', '2023-03-25 03:46:03'),
(337, 203, 23, '2023-03-25 03:46:03', '2023-03-25 03:46:03'),
(338, 203, 23, '2023-03-25 03:46:03', '2023-03-25 03:46:03'),
(339, 204, 18, '2023-03-25 03:46:07', '2023-03-25 03:46:07'),
(340, 204, 23, '2023-03-25 03:46:07', '2023-03-25 03:46:07'),
(341, 204, 23, '2023-03-25 03:46:07', '2023-03-25 03:46:07'),
(342, 205, 18, '2023-03-25 03:46:33', '2023-03-25 03:46:33'),
(343, 205, 23, '2023-03-25 03:46:33', '2023-03-25 03:46:33'),
(344, 205, 23, '2023-03-25 03:46:33', '2023-03-25 03:46:33'),
(345, 206, 18, '2023-03-25 03:47:25', '2023-03-25 03:47:25'),
(346, 206, 23, '2023-03-25 03:47:25', '2023-03-25 03:47:25'),
(347, 206, 23, '2023-03-25 03:47:25', '2023-03-25 03:47:25'),
(348, 207, 18, '2023-03-25 03:48:06', '2023-03-25 03:48:06'),
(349, 207, 23, '2023-03-25 03:48:06', '2023-03-25 03:48:06'),
(350, 207, 23, '2023-03-25 03:48:06', '2023-03-25 03:48:06'),
(351, 208, 18, '2023-03-25 03:48:57', '2023-03-25 03:48:57'),
(352, 208, 23, '2023-03-25 03:48:57', '2023-03-25 03:48:57'),
(353, 208, 23, '2023-03-25 03:48:57', '2023-03-25 03:48:57'),
(354, 209, 18, '2023-03-25 03:49:16', '2023-03-25 03:49:16'),
(355, 209, 23, '2023-03-25 03:49:16', '2023-03-25 03:49:16'),
(356, 209, 23, '2023-03-25 03:49:16', '2023-03-25 03:49:16'),
(357, 210, 18, '2023-03-25 03:49:37', '2023-03-25 03:49:37'),
(358, 210, 23, '2023-03-25 03:49:37', '2023-03-25 03:49:37'),
(359, 210, 23, '2023-03-25 03:49:37', '2023-03-25 03:49:37'),
(360, 211, 18, '2023-03-25 03:51:22', '2023-03-25 03:51:22'),
(361, 211, 23, '2023-03-25 03:51:22', '2023-03-25 03:51:22'),
(362, 211, 23, '2023-03-25 03:51:22', '2023-03-25 03:51:22'),
(363, 212, 18, '2023-03-25 03:51:50', '2023-03-25 03:51:50'),
(364, 212, 23, '2023-03-25 03:51:50', '2023-03-25 03:51:50'),
(365, 212, 23, '2023-03-25 03:51:50', '2023-03-25 03:51:50'),
(366, 213, 18, '2023-03-25 03:53:47', '2023-03-25 03:53:47'),
(367, 213, 23, '2023-03-25 03:53:47', '2023-03-25 03:53:47'),
(368, 213, 23, '2023-03-25 03:53:47', '2023-03-25 03:53:47'),
(369, 214, 18, '2023-03-25 03:54:17', '2023-03-25 03:54:17'),
(370, 214, 23, '2023-03-25 03:54:17', '2023-03-25 03:54:17'),
(371, 214, 23, '2023-03-25 03:54:17', '2023-03-25 03:54:17'),
(372, 215, 18, '2023-03-25 03:54:35', '2023-03-25 03:54:35'),
(373, 215, 23, '2023-03-25 03:54:35', '2023-03-25 03:54:35'),
(374, 215, 23, '2023-03-25 03:54:35', '2023-03-25 03:54:35'),
(375, 216, 18, '2023-03-25 03:55:07', '2023-03-25 03:55:07'),
(376, 216, 23, '2023-03-25 03:55:07', '2023-03-25 03:55:07'),
(377, 216, 23, '2023-03-25 03:55:07', '2023-03-25 03:55:07'),
(378, 217, 18, '2023-03-25 03:55:13', '2023-03-25 03:55:13'),
(379, 217, 23, '2023-03-25 03:55:13', '2023-03-25 03:55:13'),
(380, 217, 23, '2023-03-25 03:55:13', '2023-03-25 03:55:13'),
(381, 218, 18, '2023-03-25 03:55:20', '2023-03-25 03:55:20'),
(382, 218, 23, '2023-03-25 03:55:20', '2023-03-25 03:55:20'),
(383, 218, 23, '2023-03-25 03:55:20', '2023-03-25 03:55:20'),
(384, 219, 18, '2023-03-25 03:55:31', '2023-03-25 03:55:31'),
(385, 219, 23, '2023-03-25 03:55:31', '2023-03-25 03:55:31'),
(386, 219, 23, '2023-03-25 03:55:31', '2023-03-25 03:55:31'),
(387, 220, 18, '2023-03-25 03:55:57', '2023-03-25 03:55:57'),
(388, 220, 23, '2023-03-25 03:55:57', '2023-03-25 03:55:57'),
(389, 220, 23, '2023-03-25 03:55:57', '2023-03-25 03:55:57'),
(390, 221, 18, '2023-03-25 03:56:19', '2023-03-25 03:56:19'),
(391, 221, 23, '2023-03-25 03:56:19', '2023-03-25 03:56:19'),
(392, 221, 23, '2023-03-25 03:56:19', '2023-03-25 03:56:19'),
(393, 222, 18, '2023-03-25 03:56:22', '2023-03-25 03:56:22'),
(394, 222, 23, '2023-03-25 03:56:22', '2023-03-25 03:56:22'),
(395, 222, 23, '2023-03-25 03:56:22', '2023-03-25 03:56:22'),
(396, 223, 18, '2023-03-25 03:56:42', '2023-03-25 03:56:42'),
(397, 223, 23, '2023-03-25 03:56:42', '2023-03-25 03:56:42'),
(398, 223, 23, '2023-03-25 03:56:42', '2023-03-25 03:56:42'),
(399, 224, 18, '2023-03-25 03:56:53', '2023-03-25 03:56:53'),
(400, 224, 23, '2023-03-25 03:56:53', '2023-03-25 03:56:53'),
(401, 224, 23, '2023-03-25 03:56:53', '2023-03-25 03:56:53'),
(402, 225, 18, '2023-03-25 03:57:02', '2023-03-25 03:57:02'),
(403, 225, 23, '2023-03-25 03:57:02', '2023-03-25 03:57:02'),
(404, 225, 23, '2023-03-25 03:57:02', '2023-03-25 03:57:02'),
(405, 226, 18, '2023-03-25 03:57:21', '2023-03-25 03:57:21'),
(406, 226, 23, '2023-03-25 03:57:21', '2023-03-25 03:57:21'),
(407, 226, 23, '2023-03-25 03:57:21', '2023-03-25 03:57:21'),
(408, 227, 18, '2023-03-25 03:58:02', '2023-03-25 03:58:02'),
(409, 227, 23, '2023-03-25 03:58:02', '2023-03-25 03:58:02'),
(410, 227, 23, '2023-03-25 03:58:02', '2023-03-25 03:58:02'),
(411, 228, 18, '2023-03-27 02:02:58', '2023-03-27 02:02:58'),
(412, 228, 23, '2023-03-27 02:02:58', '2023-03-27 02:02:58'),
(413, 229, 18, '2023-03-27 02:08:20', '2023-03-27 02:08:20'),
(414, 229, 23, '2023-03-27 02:08:20', '2023-03-27 02:08:20'),
(415, 230, 18, '2023-03-27 02:08:27', '2023-03-27 02:08:27'),
(416, 230, 23, '2023-03-27 02:08:27', '2023-03-27 02:08:27'),
(417, 231, 18, '2023-03-27 02:08:53', '2023-03-27 02:08:53'),
(418, 231, 23, '2023-03-27 02:08:53', '2023-03-27 02:08:53'),
(419, 232, 18, '2023-03-27 02:10:08', '2023-03-27 02:10:08'),
(420, 232, 23, '2023-03-27 02:10:08', '2023-03-27 02:10:08'),
(421, 233, 18, '2023-03-27 02:10:27', '2023-03-27 02:10:27'),
(422, 233, 23, '2023-03-27 02:10:27', '2023-03-27 02:10:27'),
(423, 234, 18, '2023-03-27 02:11:07', '2023-03-27 02:11:07'),
(424, 234, 23, '2023-03-27 02:11:07', '2023-03-27 02:11:07'),
(425, 235, 18, '2023-03-27 02:11:36', '2023-03-27 02:11:36'),
(426, 235, 23, '2023-03-27 02:11:36', '2023-03-27 02:11:36'),
(427, 236, 18, '2023-03-27 02:11:45', '2023-03-27 02:11:45'),
(428, 236, 23, '2023-03-27 02:11:45', '2023-03-27 02:11:45'),
(429, 237, 18, '2023-03-27 02:11:53', '2023-03-27 02:11:53'),
(430, 237, 23, '2023-03-27 02:11:53', '2023-03-27 02:11:53'),
(431, 238, 18, '2023-03-27 02:12:15', '2023-03-27 02:12:15'),
(432, 238, 23, '2023-03-27 02:12:15', '2023-03-27 02:12:15'),
(433, 239, 18, '2023-03-27 02:12:19', '2023-03-27 02:12:19'),
(434, 239, 23, '2023-03-27 02:12:19', '2023-03-27 02:12:19'),
(435, 240, 18, '2023-03-27 02:12:27', '2023-03-27 02:12:27'),
(436, 240, 23, '2023-03-27 02:12:27', '2023-03-27 02:12:27'),
(437, 241, 18, '2023-03-27 02:13:43', '2023-03-27 02:13:43'),
(438, 241, 23, '2023-03-27 02:13:43', '2023-03-27 02:13:43'),
(439, 242, 18, '2023-03-27 02:13:52', '2023-03-27 02:13:52'),
(440, 242, 23, '2023-03-27 02:13:52', '2023-03-27 02:13:52'),
(441, 243, 18, '2023-03-27 02:13:58', '2023-03-27 02:13:58'),
(442, 243, 23, '2023-03-27 02:13:58', '2023-03-27 02:13:58'),
(443, 244, 18, '2023-03-27 02:14:16', '2023-03-27 02:14:16'),
(444, 244, 23, '2023-03-27 02:14:16', '2023-03-27 02:14:16'),
(445, 245, 18, '2023-03-27 02:14:23', '2023-03-27 02:14:23'),
(446, 245, 23, '2023-03-27 02:14:23', '2023-03-27 02:14:23'),
(447, 246, 18, '2023-03-27 02:14:48', '2023-03-27 02:14:48'),
(448, 246, 23, '2023-03-27 02:14:48', '2023-03-27 02:14:48'),
(449, 247, 18, '2023-03-27 02:15:21', '2023-03-27 02:15:21'),
(450, 247, 23, '2023-03-27 02:15:21', '2023-03-27 02:15:21'),
(451, 248, 18, '2023-03-27 02:15:41', '2023-03-27 02:15:41'),
(452, 248, 23, '2023-03-27 02:15:41', '2023-03-27 02:15:41'),
(453, 249, 18, '2023-03-27 02:15:50', '2023-03-27 02:15:50'),
(454, 249, 23, '2023-03-27 02:15:50', '2023-03-27 02:15:50'),
(455, 250, 18, '2023-03-27 02:16:05', '2023-03-27 02:16:05'),
(456, 250, 23, '2023-03-27 02:16:05', '2023-03-27 02:16:05'),
(457, 251, 18, '2023-03-27 02:16:12', '2023-03-27 02:16:12'),
(458, 251, 23, '2023-03-27 02:16:12', '2023-03-27 02:16:12'),
(459, 252, 18, '2023-03-27 02:16:22', '2023-03-27 02:16:22'),
(460, 252, 23, '2023-03-27 02:16:22', '2023-03-27 02:16:22'),
(461, 253, 18, '2023-03-27 02:17:26', '2023-03-27 02:17:26'),
(462, 253, 23, '2023-03-27 02:17:26', '2023-03-27 02:17:26'),
(463, 254, 18, '2023-03-27 02:17:45', '2023-03-27 02:17:45'),
(464, 254, 23, '2023-03-27 02:17:45', '2023-03-27 02:17:45'),
(465, 255, 18, '2023-03-27 02:18:35', '2023-03-27 02:18:35'),
(466, 255, 23, '2023-03-27 02:18:35', '2023-03-27 02:18:35'),
(467, 256, 18, '2023-03-27 02:19:09', '2023-03-27 02:19:09'),
(468, 256, 23, '2023-03-27 02:19:09', '2023-03-27 02:19:09'),
(469, 257, 18, '2023-03-27 02:19:24', '2023-03-27 02:19:24'),
(470, 257, 23, '2023-03-27 02:19:24', '2023-03-27 02:19:24'),
(471, 258, 18, '2023-03-27 02:20:04', '2023-03-27 02:20:04'),
(472, 258, 23, '2023-03-27 02:20:04', '2023-03-27 02:20:04'),
(473, 259, 18, '2023-03-27 02:20:10', '2023-03-27 02:20:10'),
(474, 259, 23, '2023-03-27 02:20:10', '2023-03-27 02:20:10'),
(475, 260, 18, '2023-03-27 02:20:25', '2023-03-27 02:20:25'),
(476, 260, 23, '2023-03-27 02:20:25', '2023-03-27 02:20:25'),
(477, 261, 18, '2023-03-27 02:20:36', '2023-03-27 02:20:36'),
(478, 261, 23, '2023-03-27 02:20:36', '2023-03-27 02:20:36'),
(479, 262, 18, '2023-03-27 02:21:12', '2023-03-27 02:21:12'),
(480, 262, 23, '2023-03-27 02:21:12', '2023-03-27 02:21:12'),
(481, 263, 18, '2023-03-27 02:21:30', '2023-03-27 02:21:30'),
(482, 263, 23, '2023-03-27 02:21:30', '2023-03-27 02:21:30'),
(483, 264, 18, '2023-03-27 02:21:47', '2023-03-27 02:21:47'),
(484, 264, 23, '2023-03-27 02:21:47', '2023-03-27 02:21:47'),
(485, 265, 18, '2023-03-27 02:24:04', '2023-03-27 02:24:04'),
(486, 265, 23, '2023-03-27 02:24:04', '2023-03-27 02:24:04'),
(487, 266, 18, '2023-03-27 02:24:40', '2023-03-27 02:24:40'),
(488, 266, 23, '2023-03-27 02:24:40', '2023-03-27 02:24:40'),
(489, 267, 18, '2023-03-27 22:44:25', '2023-03-27 22:44:25'),
(490, 267, 23, '2023-03-27 22:44:25', '2023-03-27 22:44:25'),
(491, 268, 18, '2023-03-27 22:44:55', '2023-03-27 22:44:55'),
(492, 268, 23, '2023-03-27 22:44:55', '2023-03-27 22:44:55'),
(493, 269, 18, '2023-03-27 22:49:32', '2023-03-27 22:49:32'),
(494, 269, 23, '2023-03-27 22:49:32', '2023-03-27 22:49:32'),
(495, 270, 18, '2023-03-27 22:50:02', '2023-03-27 22:50:02'),
(496, 270, 23, '2023-03-27 22:50:02', '2023-03-27 22:50:02'),
(497, 271, 18, '2023-03-27 22:50:19', '2023-03-27 22:50:19'),
(498, 271, 23, '2023-03-27 22:50:19', '2023-03-27 22:50:19'),
(499, 272, 18, '2023-03-27 22:50:46', '2023-03-27 22:50:46'),
(500, 272, 23, '2023-03-27 22:50:46', '2023-03-27 22:50:46'),
(501, 273, 18, '2023-03-27 22:51:02', '2023-03-27 22:51:02'),
(502, 273, 23, '2023-03-27 22:51:02', '2023-03-27 22:51:02'),
(503, 274, 18, '2023-03-27 22:52:19', '2023-03-27 22:52:19'),
(504, 274, 23, '2023-03-27 22:52:19', '2023-03-27 22:52:19'),
(505, 275, 18, '2023-03-27 22:52:36', '2023-03-27 22:52:36'),
(506, 275, 23, '2023-03-27 22:52:36', '2023-03-27 22:52:36'),
(507, 276, 18, '2023-03-27 22:53:32', '2023-03-27 22:53:32'),
(508, 276, 23, '2023-03-27 22:53:32', '2023-03-27 22:53:32'),
(509, 277, 18, '2023-03-27 22:54:29', '2023-03-27 22:54:29'),
(510, 277, 23, '2023-03-27 22:54:29', '2023-03-27 22:54:29'),
(511, 278, 18, '2023-03-27 22:55:32', '2023-03-27 22:55:32'),
(512, 278, 23, '2023-03-27 22:55:32', '2023-03-27 22:55:32'),
(513, 279, 18, '2023-03-27 22:55:57', '2023-03-27 22:55:57'),
(514, 279, 23, '2023-03-27 22:55:57', '2023-03-27 22:55:57'),
(515, 280, 18, '2023-03-27 22:56:23', '2023-03-27 22:56:23'),
(516, 280, 23, '2023-03-27 22:56:23', '2023-03-27 22:56:23'),
(517, 281, 18, '2023-03-27 22:57:24', '2023-03-27 22:57:24'),
(518, 281, 23, '2023-03-27 22:57:24', '2023-03-27 22:57:24'),
(519, 282, 18, '2023-03-27 22:57:50', '2023-03-27 22:57:50'),
(520, 282, 23, '2023-03-27 22:57:50', '2023-03-27 22:57:50'),
(521, 283, 18, '2023-03-27 22:58:09', '2023-03-27 22:58:09'),
(522, 283, 23, '2023-03-27 22:58:09', '2023-03-27 22:58:09'),
(523, 284, 18, '2023-03-27 22:58:20', '2023-03-27 22:58:20'),
(524, 284, 23, '2023-03-27 22:58:20', '2023-03-27 22:58:20'),
(525, 285, 18, '2023-03-27 22:59:45', '2023-03-27 22:59:45'),
(526, 285, 23, '2023-03-27 22:59:45', '2023-03-27 22:59:45'),
(527, 286, 18, '2023-03-27 23:00:24', '2023-03-27 23:00:24'),
(528, 286, 23, '2023-03-27 23:00:24', '2023-03-27 23:00:24'),
(529, 287, 18, '2023-03-27 23:00:38', '2023-03-27 23:00:38'),
(530, 287, 23, '2023-03-27 23:00:38', '2023-03-27 23:00:38'),
(531, 288, 18, '2023-03-27 23:00:44', '2023-03-27 23:00:44'),
(532, 288, 23, '2023-03-27 23:00:44', '2023-03-27 23:00:44'),
(533, 289, 18, '2023-03-27 23:01:14', '2023-03-27 23:01:14'),
(534, 289, 23, '2023-03-27 23:01:14', '2023-03-27 23:01:14'),
(535, 290, 18, '2023-03-27 23:01:40', '2023-03-27 23:01:40'),
(536, 290, 23, '2023-03-27 23:01:40', '2023-03-27 23:01:40'),
(537, 291, 18, '2023-03-27 23:01:47', '2023-03-27 23:01:47'),
(538, 291, 23, '2023-03-27 23:01:47', '2023-03-27 23:01:47'),
(539, 292, 18, '2023-03-27 23:01:57', '2023-03-27 23:01:57'),
(540, 292, 23, '2023-03-27 23:01:57', '2023-03-27 23:01:57'),
(541, 293, 18, '2023-03-27 23:02:11', '2023-03-27 23:02:11'),
(542, 293, 23, '2023-03-27 23:02:11', '2023-03-27 23:02:11'),
(543, 294, 18, '2023-03-27 23:02:29', '2023-03-27 23:02:29'),
(544, 294, 23, '2023-03-27 23:02:29', '2023-03-27 23:02:29'),
(545, 295, 18, '2023-03-27 23:02:45', '2023-03-27 23:02:45'),
(546, 295, 23, '2023-03-27 23:02:45', '2023-03-27 23:02:45'),
(547, 296, 18, '2023-03-27 23:03:02', '2023-03-27 23:03:02'),
(548, 296, 23, '2023-03-27 23:03:02', '2023-03-27 23:03:02'),
(549, 297, 18, '2023-03-27 23:03:24', '2023-03-27 23:03:24'),
(550, 297, 23, '2023-03-27 23:03:24', '2023-03-27 23:03:24'),
(551, 298, 18, '2023-03-27 23:03:48', '2023-03-27 23:03:48'),
(552, 298, 23, '2023-03-27 23:03:48', '2023-03-27 23:03:48'),
(553, 299, 18, '2023-03-27 23:04:56', '2023-03-27 23:04:56'),
(554, 299, 23, '2023-03-27 23:04:56', '2023-03-27 23:04:56'),
(555, 300, 18, '2023-03-27 23:05:28', '2023-03-27 23:05:28'),
(556, 300, 23, '2023-03-27 23:05:28', '2023-03-27 23:05:28'),
(557, 301, 18, '2023-03-27 23:05:50', '2023-03-27 23:05:50'),
(558, 301, 23, '2023-03-27 23:05:50', '2023-03-27 23:05:50'),
(559, 302, 18, '2023-03-27 23:06:08', '2023-03-27 23:06:08'),
(560, 302, 23, '2023-03-27 23:06:08', '2023-03-27 23:06:08'),
(561, 303, 18, '2023-03-27 23:06:30', '2023-03-27 23:06:30'),
(562, 303, 23, '2023-03-27 23:06:30', '2023-03-27 23:06:30'),
(563, 304, 18, '2023-03-27 23:06:40', '2023-03-27 23:06:40'),
(564, 304, 23, '2023-03-27 23:06:40', '2023-03-27 23:06:40'),
(565, 305, 18, '2023-03-27 23:08:22', '2023-03-27 23:08:22'),
(566, 305, 23, '2023-03-27 23:08:22', '2023-03-27 23:08:22'),
(567, 306, 18, '2023-03-27 23:08:40', '2023-03-27 23:08:40'),
(568, 306, 23, '2023-03-27 23:08:40', '2023-03-27 23:08:40'),
(569, 307, 18, '2023-03-27 23:08:54', '2023-03-27 23:08:54'),
(570, 307, 23, '2023-03-27 23:08:54', '2023-03-27 23:08:54'),
(571, 308, 18, '2023-03-27 23:09:33', '2023-03-27 23:09:33'),
(572, 308, 23, '2023-03-27 23:09:33', '2023-03-27 23:09:33'),
(573, 309, 18, '2023-03-27 23:09:50', '2023-03-27 23:09:50'),
(574, 309, 23, '2023-03-27 23:09:50', '2023-03-27 23:09:50'),
(575, 310, 18, '2023-03-27 23:10:09', '2023-03-27 23:10:09'),
(576, 310, 23, '2023-03-27 23:10:09', '2023-03-27 23:10:09'),
(577, 311, 18, '2023-03-27 23:10:26', '2023-03-27 23:10:26'),
(578, 311, 23, '2023-03-27 23:10:26', '2023-03-27 23:10:26'),
(579, 312, 18, '2023-03-29 00:24:15', '2023-03-29 00:24:15'),
(580, 312, 23, '2023-03-29 00:24:15', '2023-03-29 00:24:15'),
(581, 313, 18, '2023-03-29 00:26:01', '2023-03-29 00:26:01'),
(582, 313, 23, '2023-03-29 00:26:01', '2023-03-29 00:26:01'),
(583, 314, 18, '2023-03-29 00:28:51', '2023-03-29 00:28:51'),
(584, 314, 23, '2023-03-29 00:28:51', '2023-03-29 00:28:51'),
(585, 315, 18, '2023-03-29 00:29:19', '2023-03-29 00:29:19'),
(586, 315, 23, '2023-03-29 00:29:19', '2023-03-29 00:29:19'),
(587, 316, 18, '2023-03-29 00:29:50', '2023-03-29 00:29:50'),
(588, 316, 23, '2023-03-29 00:29:50', '2023-03-29 00:29:50'),
(589, 317, 18, '2023-03-29 00:31:15', '2023-03-29 00:31:15'),
(590, 317, 23, '2023-03-29 00:31:15', '2023-03-29 00:31:15'),
(591, 318, 18, '2023-03-29 00:32:45', '2023-03-29 00:32:45'),
(592, 318, 23, '2023-03-29 00:32:45', '2023-03-29 00:32:45'),
(593, 319, 18, '2023-03-29 00:34:38', '2023-03-29 00:34:38'),
(594, 319, 23, '2023-03-29 00:34:38', '2023-03-29 00:34:38'),
(595, 320, 18, '2023-03-29 00:35:15', '2023-03-29 00:35:15'),
(596, 320, 23, '2023-03-29 00:35:15', '2023-03-29 00:35:15'),
(597, 321, 18, '2023-03-29 00:36:46', '2023-03-29 00:36:46'),
(598, 321, 23, '2023-03-29 00:36:46', '2023-03-29 00:36:46'),
(599, 322, 18, '2023-03-29 00:38:06', '2023-03-29 00:38:06'),
(600, 322, 23, '2023-03-29 00:38:06', '2023-03-29 00:38:06'),
(601, 323, 18, '2023-03-29 00:38:44', '2023-03-29 00:38:44'),
(602, 323, 23, '2023-03-29 00:38:44', '2023-03-29 00:38:44'),
(603, 324, 18, '2023-03-29 00:39:00', '2023-03-29 00:39:00'),
(604, 324, 23, '2023-03-29 00:39:00', '2023-03-29 00:39:00'),
(605, 325, 18, '2023-03-29 00:40:52', '2023-03-29 00:40:52'),
(606, 325, 23, '2023-03-29 00:40:52', '2023-03-29 00:40:52'),
(607, 326, 18, '2023-03-29 00:41:19', '2023-03-29 00:41:19'),
(608, 326, 23, '2023-03-29 00:41:19', '2023-03-29 00:41:19'),
(609, 327, 18, '2023-03-29 00:41:45', '2023-03-29 00:41:45'),
(610, 327, 23, '2023-03-29 00:41:45', '2023-03-29 00:41:45'),
(611, 328, 18, '2023-03-29 00:59:19', '2023-03-29 00:59:19'),
(612, 328, 23, '2023-03-29 00:59:19', '2023-03-29 00:59:19'),
(613, 329, 18, '2023-03-29 00:59:49', '2023-03-29 00:59:49'),
(614, 329, 23, '2023-03-29 00:59:49', '2023-03-29 00:59:49'),
(615, 330, 18, '2023-03-29 01:00:07', '2023-03-29 01:00:07'),
(616, 330, 23, '2023-03-29 01:00:07', '2023-03-29 01:00:07'),
(617, 331, 18, '2023-03-29 01:00:41', '2023-03-29 01:00:41'),
(618, 331, 23, '2023-03-29 01:00:41', '2023-03-29 01:00:41'),
(619, 332, 18, '2023-03-29 01:01:12', '2023-03-29 01:01:12'),
(620, 332, 23, '2023-03-29 01:01:12', '2023-03-29 01:01:12'),
(621, 333, 18, '2023-03-29 01:02:29', '2023-03-29 01:02:29'),
(622, 333, 23, '2023-03-29 01:02:29', '2023-03-29 01:02:29'),
(623, 334, 18, '2023-03-29 01:02:43', '2023-03-29 01:02:43'),
(624, 334, 23, '2023-03-29 01:02:43', '2023-03-29 01:02:43'),
(625, 335, 18, '2023-03-29 01:02:57', '2023-03-29 01:02:57'),
(626, 335, 23, '2023-03-29 01:02:57', '2023-03-29 01:02:57'),
(627, 336, 18, '2023-03-29 01:03:23', '2023-03-29 01:03:23'),
(628, 336, 23, '2023-03-29 01:03:23', '2023-03-29 01:03:23'),
(629, 337, 18, '2023-03-29 01:04:08', '2023-03-29 01:04:08'),
(630, 337, 23, '2023-03-29 01:04:08', '2023-03-29 01:04:08'),
(631, 338, 18, '2023-03-29 01:04:16', '2023-03-29 01:04:16'),
(632, 338, 23, '2023-03-29 01:04:16', '2023-03-29 01:04:16'),
(633, 339, 18, '2023-03-29 01:05:09', '2023-03-29 01:05:09'),
(634, 339, 23, '2023-03-29 01:05:09', '2023-03-29 01:05:09'),
(635, 340, 18, '2023-03-29 01:05:36', '2023-03-29 01:05:36'),
(636, 340, 23, '2023-03-29 01:05:36', '2023-03-29 01:05:36'),
(637, 341, 18, '2023-03-29 01:05:47', '2023-03-29 01:05:47'),
(638, 341, 23, '2023-03-29 01:05:47', '2023-03-29 01:05:47'),
(639, 342, 18, '2023-03-29 01:06:24', '2023-03-29 01:06:24'),
(640, 342, 23, '2023-03-29 01:06:24', '2023-03-29 01:06:24'),
(641, 343, 18, '2023-03-29 01:07:12', '2023-03-29 01:07:12'),
(642, 343, 23, '2023-03-29 01:07:12', '2023-03-29 01:07:12'),
(643, 344, 18, '2023-03-29 01:08:13', '2023-03-29 01:08:13'),
(644, 344, 23, '2023-03-29 01:08:13', '2023-03-29 01:08:13'),
(645, 345, 18, '2023-03-29 01:09:04', '2023-03-29 01:09:04'),
(646, 345, 23, '2023-03-29 01:09:04', '2023-03-29 01:09:04'),
(647, 346, 18, '2023-03-29 01:09:59', '2023-03-29 01:09:59'),
(648, 346, 23, '2023-03-29 01:09:59', '2023-03-29 01:09:59'),
(649, 347, 18, '2023-03-29 01:10:34', '2023-03-29 01:10:34'),
(650, 347, 23, '2023-03-29 01:10:34', '2023-03-29 01:10:34'),
(651, 348, 18, '2023-03-29 01:11:16', '2023-03-29 01:11:16'),
(652, 348, 23, '2023-03-29 01:11:16', '2023-03-29 01:11:16'),
(653, 349, 18, '2023-03-29 01:11:30', '2023-03-29 01:11:30'),
(654, 349, 23, '2023-03-29 01:11:30', '2023-03-29 01:11:30'),
(655, 350, 18, '2023-03-29 01:12:14', '2023-03-29 01:12:14'),
(656, 350, 23, '2023-03-29 01:12:14', '2023-03-29 01:12:14'),
(657, 351, 18, '2023-03-29 01:12:52', '2023-03-29 01:12:52'),
(658, 351, 23, '2023-03-29 01:12:52', '2023-03-29 01:12:52'),
(659, 352, 18, '2023-03-29 01:13:17', '2023-03-29 01:13:17'),
(660, 352, 23, '2023-03-29 01:13:17', '2023-03-29 01:13:17'),
(661, 353, 18, '2023-03-29 01:13:38', '2023-03-29 01:13:38'),
(662, 353, 23, '2023-03-29 01:13:38', '2023-03-29 01:13:38'),
(663, 354, 18, '2023-03-29 01:13:50', '2023-03-29 01:13:50'),
(664, 354, 23, '2023-03-29 01:13:50', '2023-03-29 01:13:50'),
(665, 355, 18, '2023-03-29 01:14:41', '2023-03-29 01:14:41'),
(666, 355, 23, '2023-03-29 01:14:41', '2023-03-29 01:14:41'),
(667, 356, 18, '2023-03-29 01:15:46', '2023-03-29 01:15:46'),
(668, 356, 23, '2023-03-29 01:15:46', '2023-03-29 01:15:46'),
(669, 357, 18, '2023-03-29 01:16:40', '2023-03-29 01:16:40'),
(670, 357, 23, '2023-03-29 01:16:40', '2023-03-29 01:16:40'),
(671, 358, 18, '2023-03-29 01:17:51', '2023-03-29 01:17:51'),
(672, 358, 23, '2023-03-29 01:17:51', '2023-03-29 01:17:51'),
(673, 359, 18, '2023-03-29 01:18:50', '2023-03-29 01:18:50'),
(674, 359, 23, '2023-03-29 01:18:50', '2023-03-29 01:18:50'),
(675, 360, 18, '2023-03-29 01:19:40', '2023-03-29 01:19:40'),
(676, 360, 23, '2023-03-29 01:19:40', '2023-03-29 01:19:40'),
(677, 361, 18, '2023-03-29 01:24:53', '2023-03-29 01:24:53'),
(678, 361, 23, '2023-03-29 01:24:53', '2023-03-29 01:24:53'),
(679, 362, 18, '2023-03-29 01:25:47', '2023-03-29 01:25:47'),
(680, 362, 23, '2023-03-29 01:25:47', '2023-03-29 01:25:47'),
(681, 363, 31, '2023-03-29 07:46:54', '2023-03-29 07:46:54'),
(682, 364, 18, '2023-03-29 07:47:02', '2023-03-29 07:47:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
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
(150, 'delete_cidades', 'cidades', '2022-11-10 03:38:01', '2022-11-10 03:38:01'),
(151, 'browse_avaliacoes_empresas', 'avaliacoes_empresas', '2022-12-06 00:38:08', '2022-12-06 00:38:08'),
(152, 'read_avaliacoes_empresas', 'avaliacoes_empresas', '2022-12-06 00:38:08', '2022-12-06 00:38:08'),
(153, 'edit_avaliacoes_empresas', 'avaliacoes_empresas', '2022-12-06 00:38:08', '2022-12-06 00:38:08'),
(154, 'add_avaliacoes_empresas', 'avaliacoes_empresas', '2022-12-06 00:38:08', '2022-12-06 00:38:08'),
(155, 'delete_avaliacoes_empresas', 'avaliacoes_empresas', '2022-12-06 00:38:08', '2022-12-06 00:38:08'),
(156, 'browse_pedidos', 'pedidos', '2022-12-08 02:13:48', '2022-12-08 02:13:48'),
(157, 'read_pedidos', 'pedidos', '2022-12-08 02:13:48', '2022-12-08 02:13:48'),
(158, 'edit_pedidos', 'pedidos', '2022-12-08 02:13:48', '2022-12-08 02:13:48'),
(159, 'add_pedidos', 'pedidos', '2022-12-08 02:13:48', '2022-12-08 02:13:48'),
(160, 'delete_pedidos', 'pedidos', '2022-12-08 02:13:48', '2022-12-08 02:13:48'),
(161, 'browse_avaliacao_empresas', 'avaliacao_empresas', '2022-12-09 23:52:39', '2022-12-09 23:52:39'),
(162, 'read_avaliacao_empresas', 'avaliacao_empresas', '2022-12-09 23:52:39', '2022-12-09 23:52:39'),
(163, 'edit_avaliacao_empresas', 'avaliacao_empresas', '2022-12-09 23:52:39', '2022-12-09 23:52:39'),
(164, 'add_avaliacao_empresas', 'avaliacao_empresas', '2022-12-09 23:52:39', '2022-12-09 23:52:39'),
(165, 'delete_avaliacao_empresas', 'avaliacao_empresas', '2022-12-09 23:52:39', '2022-12-09 23:52:39'),
(166, 'browse_avaliacoes_produtos', 'avaliacoes_produtos', '2022-12-09 23:56:56', '2022-12-09 23:56:56'),
(167, 'read_avaliacoes_produtos', 'avaliacoes_produtos', '2022-12-09 23:56:56', '2022-12-09 23:56:56'),
(168, 'edit_avaliacoes_produtos', 'avaliacoes_produtos', '2022-12-09 23:56:56', '2022-12-09 23:56:56'),
(169, 'add_avaliacoes_produtos', 'avaliacoes_produtos', '2022-12-09 23:56:56', '2022-12-09 23:56:56'),
(170, 'delete_avaliacoes_produtos', 'avaliacoes_produtos', '2022-12-09 23:56:56', '2022-12-09 23:56:56'),
(171, 'browse_produto_destaques', 'produto_destaques', '2023-03-15 23:03:24', '2023-03-15 23:03:24'),
(172, 'read_produto_destaques', 'produto_destaques', '2023-03-15 23:03:24', '2023-03-15 23:03:24'),
(173, 'edit_produto_destaques', 'produto_destaques', '2023-03-15 23:03:24', '2023-03-15 23:03:24'),
(174, 'add_produto_destaques', 'produto_destaques', '2023-03-15 23:03:24', '2023-03-15 23:03:24'),
(175, 'delete_produto_destaques', 'produto_destaques', '2023-03-15 23:03:24', '2023-03-15 23:03:24'),
(176, 'browse_empresa_destaques', 'empresa_destaques', '2023-03-15 23:14:06', '2023-03-15 23:14:06'),
(177, 'read_empresa_destaques', 'empresa_destaques', '2023-03-15 23:14:06', '2023-03-15 23:14:06'),
(178, 'edit_empresa_destaques', 'empresa_destaques', '2023-03-15 23:14:06', '2023-03-15 23:14:06'),
(179, 'add_empresa_destaques', 'empresa_destaques', '2023-03-15 23:14:06', '2023-03-15 23:14:06'),
(180, 'delete_empresa_destaques', 'empresa_destaques', '2023-03-15 23:14:06', '2023-03-15 23:14:06'),
(181, 'ativar_empresas', 'empresas', NULL, NULL);

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
(1, 4),
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
(96, 4),
(97, 1),
(97, 3),
(97, 4),
(98, 1),
(98, 3),
(98, 4),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(101, 4),
(102, 1),
(102, 3),
(102, 4),
(103, 1),
(103, 3),
(103, 4),
(104, 1),
(104, 3),
(104, 4),
(105, 1),
(105, 3),
(105, 4),
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
(150, 1),
(151, 1),
(151, 2),
(152, 1),
(152, 2),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(156, 3),
(156, 4),
(157, 1),
(157, 2),
(157, 3),
(157, 4),
(158, 1),
(158, 4),
(159, 1),
(160, 1),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(165, 1),
(165, 2),
(166, 1),
(166, 2),
(167, 1),
(167, 2),
(168, 1),
(168, 2),
(169, 1),
(169, 2),
(170, 1),
(170, 2),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
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
  `nome` text NOT NULL,
  `imagem` blob NOT NULL,
  `descricao` longtext NOT NULL,
  `categoria_produto_id` int(10) UNSIGNED NOT NULL,
  `video_curto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preco` text NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `avaliacao` float DEFAULT NULL,
  `cidade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `imagem`, `descricao`, `categoria_produto_id`, `video_curto`, `created_at`, `updated_at`, `preco`, `empresa_id`, `user_id`, `avaliacao`, `cidade_id`) VALUES
(18, 'Pizza', 0x70726f6475746f735c4f63746f626572323032325c415855464d4c416146523477424846376c3137482e6a706567, 'Pizza feita de xxxxxx', 1, 'https://www.youtube.com/watch?v=E4zoMmuScPY', '2022-10-21 05:54:30', '2023-02-25 06:41:42', '10', 7, 1, NULL, 0),
(19, 'Esfirra', 0x70726f6475746f735c4e6f76656d626572323032325c6d70796a4d5a3978334e706641585454394131622e6a7067, 'Marquinhos lanches', 2, NULL, '2022-11-10 02:38:04', '2023-03-01 01:05:52', '20', 7, 1, 4.375, 0),
(22, 'sorvete 90g', 0x70726f6475746f735c4a616e75617279323032335c71354958466677656c3070486c6e5465783749652e6a706567, 'fvfv', 2, NULL, '2023-01-16 23:58:13', '2023-01-16 23:58:13', '12', 16, 22, NULL, 0),
(23, 'Marmita', 0x70726f6475746f735c4a616e75617279323032335c386678634a6556314f35557a426c38424c50446a2e77656270, 'jujuuj', 1, NULL, '2023-01-17 02:06:22', '2023-03-22 00:41:02', '22', 7, 1, 5, 0),
(24, 'Peixe assado', 0x70726f6475746f735c4a616e75617279323032335c6d5a67546e367a585259754c63546e786367736e2e77656270, 'tgrrgr', 1, NULL, '2023-01-17 02:08:01', '2023-01-17 02:08:01', '22', 7, 1, NULL, 0),
(25, 'Açai', 0x70726f6475746f735c4a616e75617279323032335c7877645852487536574e4e386f6e3178384e58782e6a7067, '56y5yggggggggggggggggggg', 3, NULL, '2023-01-17 02:09:56', '2023-02-23 06:11:13', '22', 16, 1, 52.5, 0),
(26, 'Maça', 0x70726f6475746f735c4665627275617279323032335c64547a5758585173635550776157794f4a3458482e676966, 'bguhu', 5, NULL, '2023-02-12 02:12:43', '2023-02-23 06:12:22', '99', 14, 1, 3.75, 0),
(27, 'alface', 0x70726f6475746f735c4d61726368323032335c59643059384450743741423046566c586634304d2e77656270, 'ddddddddddddd', 3, NULL, '2023-03-02 08:34:48', '2023-03-02 08:35:28', '22', 18, 1, 5, 0),
(28, 'joao_empresario7', 0x70726f6475746f735c4d61726368323032335c6d4d6a61377732394e62466330675a616a6732762e77656270, 'fffffffffff', 5, NULL, '2023-03-02 23:00:00', '2023-03-02 23:00:00', '22', 16, 21, NULL, 0),
(29, 'Pizza', 0x70726f6475746f735c4d61726368323032335c74484b46326272364f6369495435625432626d652e706e67, 'dddddddddddddddddddd', 2, NULL, '2023-03-10 02:18:25', '2023-03-10 02:18:25', '10', 22, 29, NULL, 0),
(30, 'alface sss', 0x70726f6475746f735c4d61726368323032335c5952536747744b3771424872624f4a624a33324c2e706e67, 'sssssssssssssssssssssssss', 2, NULL, '2023-03-10 02:18:47', '2023-03-10 02:18:47', '20', 22, 29, NULL, 0),
(31, 'Classico pastel de sushi', 0x70726f6475746f735c4d61726368323032335c4637554c444363724231756a4b563466646577782e6a7067, 'Feito com atum caçados a 5mil pes de profundidade nas ilhas de filipinas e o recheio feito de leite coletado dos gnus que mataram o pai do rei leão alface é colhido diretamente da montanha mais alta do mundo  morro da rocinha', 6, NULL, '2023-03-17 22:51:53', '2023-03-21 00:22:12', '395', 23, 35, 5, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_destaques`
--

CREATE TABLE `produto_destaques` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordem` text DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produto_destaques`
--

INSERT INTO `produto_destaques` (`id`, `ordem`, `titulo`, `descricao`, `created_at`, `updated_at`, `produto_id`) VALUES
(1, '1', 'sdd', 'ssss', '2023-03-15 23:05:05', '2023-03-15 23:07:13', 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(2, 'user', 'Normal User', '2022-07-23 07:43:51', '2022-07-23 07:43:51'),
(3, 'empresario', 'Empresário', '2022-09-24 01:53:42', '2022-09-24 01:53:42'),
(4, 'atendente', 'Atendente', '2023-03-02 22:37:22', '2023-03-02 22:37:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
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
(6, 'admin.title', 'Admin Title', 'Janela do Produtor', '', 'text', 1, 'Admin'),
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
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cidade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `created_at`, `updated_at`, `cidade_id`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$MBKWO2YPTLf699.B1z3pbOmrNR3fCQFlqX3y9GRP0bLnH5Yv.Zbgu', NULL, NULL, NULL, 'Vu72useFprAnqoljEGibiDnxBxgbxlKApFIAZMZFO3zq5VvOwRjWbdWy53EO', NULL, '2022-07-23 07:43:52', '2022-07-23 07:43:52', NULL),
(2, 2, 'joao', 'joao@gmail.com', 'users/default.png', NULL, '$2y$10$DuopizLqJtdezVL9HOwYsurNOjhjb99nvKlzpkyQwYeLTIuAvbQ0O', NULL, NULL, NULL, NULL, NULL, '2022-09-18 01:25:54', '2022-09-18 01:25:54', NULL),
(3, 2, 'joao', 'joao5@gmail.com', 'users/default.png', NULL, '$2y$10$nJ5BjciJ5YgACyKlUFxgi.GcA.EaGoIpDrV0RDoEujv7DbVjaGSkm', NULL, NULL, NULL, NULL, NULL, '2022-11-20 02:59:54', '2022-11-20 02:59:54', NULL),
(4, 3, 'joao  empresario', 'joao_empresario@gmail.com', 'users/default.png', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, '2022-11-27 03:57:21', '2022-11-27 03:57:21', 1),
(5, 3, 'joao  empresario2', 'joao_empresario2@gmail.com', 'users/default.png', NULL, '$2y$10$y8y2M.Vb2EGLn2f2lOFQp.pKJJzoNxEAA.R9NcGr/l9dxsXR2DCF.', NULL, NULL, NULL, NULL, NULL, '2022-11-27 04:12:40', '2022-11-27 04:12:40', NULL),
(6, 3, 'joao  empresario3', 'joao_empresario3@gmail.com', 'users/default.png', NULL, '$2y$10$./OQv.Lzcrz/9cE2CvYVB.UGaDYrqoFX/1hif7pGDACNY0zzfc4L2', NULL, NULL, NULL, NULL, NULL, '2022-11-27 04:18:39', '2022-11-27 04:18:39', 1),
(7, 3, 'joao  empresario4', 'joao_empresario4@gmail.com', 'users/default.png', NULL, '$2y$10$YyiLNKMIMTNfYVQR.Ay1peuKD7YlWuSgmPPvS36xJWa4DkcGpR2kW', NULL, NULL, NULL, NULL, NULL, '2022-11-28 02:56:18', '2022-11-28 02:56:18', NULL),
(8, 2, 'joao paulo', 'joao_Paulo@gmail.com', 'users/default.png', NULL, '$2y$10$mDyZAMa7dp0UAUlh9d7wguku0mP1Qi0lfOdnm5i2HQJoNspe5LGj2', NULL, NULL, NULL, NULL, NULL, '2022-12-01 18:38:49', '2022-12-01 18:38:49', NULL),
(9, 2, 'joao_usuario@gmail.com', 'joao_usuario@gmail.com', 'users/default.png', NULL, '$2y$10$F7N8NuX1G618Itux3EGBGOYdNMNdlz2KuucLA6/c926ECfeKCRYvq', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2022-12-06 00:55:16', '2023-02-11 23:28:50', NULL),
(10, 2, 'Joao', 'joaousuario2@gamil.com', 'users/default.png', NULL, '$2y$10$k9w1Te22B7eQeJIj5f4iteShHFd4E3qZaD40lO8bwqWhYWk.4EGca', NULL, NULL, NULL, NULL, NULL, '2022-12-06 00:58:21', '2022-12-06 00:58:21', NULL),
(11, 2, 'joao', 'joaomarcelo@gmail.com', 'users/default.png', NULL, '$2y$10$Ryw8.oxp0imwYXST/E9rqeoPz.iqJS0HK2Ppj4wCkYXFOQdMpf6Sy', NULL, NULL, NULL, NULL, NULL, '2022-12-30 20:03:18', '2022-12-30 20:03:18', NULL),
(12, 2, 'teste1', 'teste1@gmail.com', 'users/default.png', NULL, '$2y$10$1nHqLiHCA9GdpNeWgF0NBeoSkQQZvAF/HPzNjc9DxS5cQnpKgwOB2', NULL, NULL, NULL, NULL, NULL, '2023-01-03 20:50:31', '2023-01-03 20:50:31', NULL),
(13, 3, 'teste1empresario', 'teste1empresario@gmail.com', 'users/default.png', NULL, '$2y$10$rnMT71OWjaZ22uywNjcPAeG4.V79IgUtK2xAKLYL8LUM/BgqGKfh6', NULL, NULL, NULL, NULL, NULL, '2023-01-03 20:51:11', '2023-01-03 20:51:11', NULL),
(14, 3, 'Charlingtonglaevionbeecheknavare dos Anjos Mendonça', 'teste2@gmail.com', 'users/default.png', NULL, '$2y$10$OWaZYABj/Q4lZxtMpHnREuHwmgB02ZGtSacAjerQU6JnuIbIkfdnS', NULL, NULL, NULL, NULL, NULL, '2023-01-06 03:03:50', '2023-01-06 03:03:50', NULL),
(15, 3, 'joao1empresa', 'joao1empresa@gmail.com', 'users/default.png', NULL, '$2y$10$gAf4oNxu65udk/vUU.I/4.OaIPqWkz8m8bES1rihklL2XtjO3vLZO', NULL, NULL, NULL, NULL, NULL, '2023-01-06 03:24:08', '2023-01-06 03:24:08', NULL),
(16, 3, 'joao2empresario', 'joao2empresario@gmail.com', 'users/default.png', NULL, '$2y$10$ntWnP1KAiXBKpN0qpzlhzOHYCKOuRvdoPXkGByZUCd.h/3t/UgHR6', NULL, NULL, NULL, NULL, NULL, '2023-01-06 03:25:35', '2023-01-06 03:25:35', NULL),
(17, 3, 'joao empresario', 'joao_empresariolojas@gmail.com', 'users/default.png', NULL, '$2y$10$zrBtiRXAl1wgip7ksRB4XObesvBH1SooMpCOI7ke1eAW6iayOJANy', NULL, NULL, NULL, NULL, NULL, '2023-01-12 22:59:06', '2023-01-12 22:59:06', NULL),
(18, 3, 'Joao Marcelo', 'joaoempresario14@gmail.com', 'users/default.png', NULL, '$2y$10$WDxuBQ60l3dHqDoUT1HKAutN5LIYBkewlc8xGqoJAoi6XIGNq5X8i', NULL, NULL, NULL, NULL, NULL, '2023-01-12 23:11:17', '2023-01-12 23:11:17', NULL),
(19, 3, 'joao Empresario 5', 'joao_empresario5@gmail.com', 'users/default.png', NULL, '$2y$10$SiqAb/O/qTrnEM/1GiAw4OXggOByhDugh6y22E2VK9UwEYhVBCnfm', NULL, NULL, NULL, NULL, NULL, '2023-01-16 23:33:21', '2023-01-16 23:33:21', NULL),
(20, 3, 'joao empresario 6', 'joao_empresario6@gmail.com', 'users/default.png', NULL, '$2y$10$rg6vQWPnNWwwoXFuZ7UmduoVxnXdAFX9Ot3I7ehXqD07amf3tXFcW', NULL, NULL, NULL, NULL, NULL, '2023-01-16 23:35:54', '2023-01-16 23:35:55', NULL),
(21, 3, 'João Empresário 7', 'joao_empresario7@gmail.com', 'users\\February2023\\9Bqev3Ae7cpPhxzJc8Nv.jpg', NULL, '$2y$10$ftwjcRHlkTw69JUVJWkDkOp0TJsjBwfbHuGB4VpYXe0Muhj4O8YrK', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2023-01-16 23:45:55', '2023-03-01 02:01:25', NULL),
(22, 3, 'joao empresario 8', 'joao_empresario8@gmail.com', 'users/default.png', NULL, '$2y$10$Wy4HhAfDw78lA6/Dn3CAJuuSqKAEntwTjpq2V53iiF8wUjy1lHPju', NULL, NULL, NULL, NULL, NULL, '2023-01-16 23:52:07', '2023-01-16 23:52:07', NULL),
(23, 3, 'joao empresario 9', 'joao_empresario9@gmail.com', 'users/default.png', NULL, '$2y$10$//ygIHxppvB4uQieEZyiQ.izTKyzgtXLS4ALUNLF7etDGW./PAgsq', NULL, NULL, NULL, NULL, NULL, '2023-01-18 02:44:33', '2023-01-18 02:44:33', NULL),
(24, 2, 'joaomarcelo', 'joaomarcelo2@gmail.com', 'users/default.png', NULL, '$2y$10$IsJp1NV6gDTNSZgcpfuu5ug3CYO0l4PMSaxS8UNt/ue2cfa4JQRT6', NULL, NULL, NULL, NULL, NULL, '2023-01-24 00:57:18', '2023-01-24 00:57:18', NULL),
(25, 3, 'Joao paulo vay da silva', 'joaopaulo_@gmail.com', 'users/default.png', NULL, '$2y$10$SIjYKfDqMcXfdqZeEeld7O53ujQeW2ycTaP23YW0kdIFQE1jdrP0e', NULL, NULL, NULL, NULL, NULL, '2023-02-08 01:19:00', '2023-02-08 01:19:00', NULL),
(26, 3, 'fssssssss', 'sfffffff@gmail.com', 'users/default.png', NULL, '$2y$10$1GnlpM7OKymUwZjY.jdbeuwHkWZqgBwom4JTLTsXEx9IYfabQmLcC', NULL, NULL, NULL, NULL, NULL, '2023-02-16 02:30:34', '2023-02-16 02:30:34', NULL),
(28, 4, 'Atendente joaozinho', 'joaoatendente@gmail.com', 'users/default.png', NULL, '$2y$10$MvD2DTvCrHTAYZZGasb5Se7M9Domg0OhPz5PwljAY0QyzpR9Dx9IK', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2023-03-02 22:38:50', '2023-03-02 22:38:50', NULL),
(29, 3, 'joaowww', 'joao_empresario11@gmail.com', 'users/default.png', NULL, '$2y$10$o4GG2TNeUw.K9hrW1P0L7uGXt//jNB8QAzE1ZKTnQrtzXIPOHJMl.', NULL, NULL, NULL, NULL, NULL, '2023-03-10 01:45:08', '2023-03-10 01:45:08', NULL),
(30, 4, 'joazinho atendente 2', 'joaoatendente2@gmail.com', 'users/default.png', NULL, '$2y$10$OqTwWTw58FX62WrEvelLOOQhOOiIt7S7/hFuJOpEUrzECtKPb9K1.', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2023-03-10 02:52:57', '2023-03-10 02:52:57', NULL),
(31, 2, 'joao usuario1', 'joao_usuario1@gmail.com', 'users/default.png', NULL, '$2y$10$y2c2NT3dYQ3131hXzxFtSu29rt6RprJKwKQgmJxKp//Af97ZrmZUq', NULL, NULL, NULL, NULL, NULL, '2023-03-10 03:04:28', '2023-03-10 03:04:28', NULL),
(32, 3, 'joao_empresario_cidade', 'joao_empresario_cidade@gmail.com', 'users/default.png', NULL, '$2y$10$PKZVgSjmb4qdWQYA1i1AW.MlvT7tFAV5CmWcdJDrzKUaMgjV7bVs6', NULL, NULL, NULL, NULL, NULL, '2023-03-16 00:15:51', '2023-03-16 00:15:51', 1),
(33, 2, 'joao_usuario_cidade', 'joao_usuario_cidade@gmail.com', 'users/default.png', NULL, '$2y$10$z2/tX0U7KBOyftLl5XItuuuMs3NyuvOEE8o4C06YrSz0rB0rGLQuu', NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:54:25', '2023-03-16 02:54:25', NULL),
(34, 2, 'joao_usuario_cidade2', 'joao_usuario_cidade2@gmail.com', 'users/default.png', NULL, '$2y$10$u8yH/WbBPu9D8H53eO5k7OetMCsfV/GkjZdqkKCrZFUmLMbSppjAW', NULL, NULL, NULL, NULL, NULL, '2023-03-16 02:57:27', '2023-03-16 02:57:27', 1),
(35, 3, 'João Paulo da silva gomes de andrade', 'joaopaulogomesandrade@gmail.com', 'users\\March2023\\cTwFUTS5CEdALA3VHEVk.jpg', NULL, '$2y$10$SXquHG8Wwi.JoarYyIsNSOtA1GsfcNiRkvXIg/M.VAdNNYapF6Mcq', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2023-03-17 22:37:18', '2023-03-17 22:59:57', NULL),
(36, 3, 'Joao Paulo andra', 'andra_estorm@gmail.com', 'users\\March2023\\lFlwgTQ9sOHQUrjnGOwQ.jpg', NULL, '$2y$10$YnCGVbDPwZUzqjyWK97m7.wffotgJJ6p3N0HoLCNSMftn0d6lLm8q', NULL, NULL, NULL, NULL, '{\"locale\":\"en\"}', '2023-03-20 21:43:32', '2023-03-20 21:50:41', NULL),
(37, 3, 'teste_2', 'teste_2@gmail.com', 'users/default.png', NULL, '$2y$10$nsUHXww.ENdxQ6rYs.wRfOO9WKncddyOmPszw4UDmVXR6q88jFiki', NULL, NULL, NULL, NULL, NULL, '2023-03-23 03:40:01', '2023-03-23 03:40:01', 6),
(46, 3, 'joao_empresario_cidade2', 'joao_empresario_cidade2@gmail.com', 'users/default.png', NULL, '$2y$10$v99Wk/7n16BnrLFUdBcqiePYvzyE6B9RMNLteMOWi68NAIFHNHUkq', NULL, NULL, NULL, NULL, NULL, '2023-03-25 04:35:06', '2023-03-25 04:35:06', 7);

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
-- Índices para tabela `avaliacao_empresas`
--
ALTER TABLE `avaliacao_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacoes_produtos`
--
ALTER TABLE `avaliacoes_produtos`
  ADD PRIMARY KEY (`id`);

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
-- Índices para tabela `empresa_destaques`
--
ALTER TABLE `empresa_destaques`
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
-- Índices para tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
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
-- Índices para tabela `produto_destaques`
--
ALTER TABLE `produto_destaques`
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
-- AUTO_INCREMENT de tabela `avaliacao_empresas`
--
ALTER TABLE `avaliacao_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `avaliacoes_produtos`
--
ALTER TABLE `avaliacoes_produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categoria_empresas`
--
ALTER TABLE `categoria_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `categoria_produtos`
--
ALTER TABLE `categoria_produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT de tabela `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `empresa_destaques`
--
ALTER TABLE `empresa_destaques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT de tabela `pedido_produtos`
--
ALTER TABLE `pedido_produtos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `produto_destaques`
--
ALTER TABLE `produto_destaques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
