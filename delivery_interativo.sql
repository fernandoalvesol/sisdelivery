-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Set-2023 às 03:10
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `delivery_interativo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(35) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`id`, `nome`, `chave`, `grupo`) VALUES
(1, 'Home', 'home', 0),
(2, 'Pedidos', 'pedidos', 0),
(3, 'Usuários', 'usuarios', 2),
(4, 'Funcionários', 'funcionarios', 2),
(5, 'Clientes', 'clientes', 2),
(6, 'Fornecedores', 'fornecedores', 2),
(7, 'Bairros / Locais', 'bairros', 3),
(8, 'Cargos', 'cargos', 3),
(9, 'Dias Fechado', 'dias', 3),
(10, 'Grupo Acessos', 'grupos', 3),
(11, 'Acessos', 'acessos', 3),
(12, 'Produtos', 'produtos', 4),
(13, 'Categorias', 'categorias', 4),
(14, 'Estoque', 'estoque', 4),
(15, 'Entradas', 'entradas', 4),
(16, 'Saídas', 'saidas', 4),
(17, 'Vendas', 'vendas', 5),
(18, 'Contas à Pagar', 'pagar', 5),
(19, 'Contas à Receber', 'receber', 5),
(20, 'Compras', 'compras', 5),
(21, 'Relatório Produtos', 'rel_produtos', 6),
(22, 'Relatório de Contas', 'rel_contas', 6),
(23, 'Relatório de Lucro', 'rel_lucro', 6),
(24, 'Relatório de Vendas', 'rel_vendas', 6),
(25, 'Configurações', 'configuracoes', 0),
(26, 'Banner Rotativo', 'banner_rotativo', 3),
(27, 'Mesas', 'mesas', 3),
(28, 'Pedidos Balcão', 'novo_pedido', 0),
(29, 'Cupom de Desconto', 'cupons', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adicionais`
--

CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adicionais`
--

INSERT INTO `adicionais` (`id`, `produto`, `nome`, `ativo`, `valor`) VALUES
(5, 4, 'Bacon', 'Sim', '6.00'),
(6, 3, 'Nutela', 'Sim', '3.00'),
(7, 3, 'Leite em Pó', 'Sim', '2.00'),
(10, 1, 'Leite em Pó', 'Sim', '2.00'),
(11, 1, 'Banana', 'Sim', '2.00'),
(12, 16, 'Calabresa', 'Sim', '5.00'),
(13, 16, 'Palmito', 'Sim', '3.00'),
(14, 20, 'Bacon', 'Sim', '3.00'),
(15, 20, 'Molho Especial', 'Sim', '2.00'),
(16, 20, 'Cheddar', 'Sim', '4.00'),
(17, 18, 'Cheddar', 'Sim', '5.00'),
(18, 18, 'Bacon', 'Sim', '4.00'),
(19, 19, 'Bacon', 'Sim', '4.00'),
(20, 19, 'Cheddar', 'Sim', '4.00'),
(22, 16, 'Borda Cheddar', 'Sim', '4.90'),
(24, 14, 'Bacon', 'Sim', '5.00'),
(25, 28, 'Bacon', 'Sim', '3.00'),
(26, 28, 'Cheddar', 'Sim', '4.00'),
(27, 28, 'Milho', 'Sim', '2.00'),
(28, 28, 'Batata Grande', 'Sim', '3.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adicionais_cat`
--

CREATE TABLE `adicionais_cat` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `adicionais_cat`
--

INSERT INTO `adicionais_cat` (`id`, `categoria`, `nome`, `ativo`, `valor`) VALUES
(2, 1, 'Bacon', 'Sim', '4.00'),
(3, 1, 'Catupiri', 'Sim', '3.00'),
(5, 1, 'Cheddar', 'Sim', '5.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `valor`) VALUES
(1, 'Santa Mônica', '3.00'),
(2, 'São João Batista', '5.00'),
(3, 'Santa Amélia', '5.00'),
(4, 'Candelária', '4.00'),
(5, 'Pampulha', '6.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_rotativo`
--

CREATE TABLE `banner_rotativo` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner_rotativo`
--

INSERT INTO `banner_rotativo` (`id`, `foto`, `categoria`) VALUES
(3, '11-04-2023-19-21-13-01.jpg', 1),
(4, '11-04-2023-19-21-05-03.jpg', 2),
(5, '11-04-2023-19-21-17-02.png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bordas`
--

CREATE TABLE `bordas` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `valor` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bordas`
--

INSERT INTO `bordas` (`id`, `categoria`, `nome`, `ativo`, `valor`) VALUES
(1, 1, 'Borda Cheddar', 'Sim', '5.00'),
(2, 1, 'Borda Catupiri', 'Sim', '4.00'),
(3, 1, 'Borda Cream Chese', 'Sim', '5.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `nome`) VALUES
(3, 'Administrador'),
(4, 'Gerente'),
(5, 'Recepcionista'),
(6, 'Atendente'),
(7, 'Entregador');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `sessao` varchar(35) NOT NULL,
  `cliente` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `total_item` decimal(8,2) NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `pedido` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `id_sabor` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `variacao` int(11) NOT NULL,
  `mesa` varchar(25) DEFAULT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `sabores` int(11) DEFAULT NULL,
  `borda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `sessao`, `cliente`, `produto`, `quantidade`, `total_item`, `obs`, `pedido`, `data`, `id_sabor`, `categoria`, `item`, `variacao`, `mesa`, `nome_cliente`, `nome_produto`, `sabores`, `borda`) VALUES
(192, '2023-08-26-13:09:56-930', 1, 7, 15, '15.00', '', 94, '2023-08-26', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(193, '2023-08-26-13:11:44-1282', 0, 19, 1, '25.00', '', 95, '2023-08-26', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(194, '2023-08-26-13:11:44-1282', 0, 7, 1, '1.00', '', 95, '2023-08-26', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(195, '2023-08-26-14:27:57-1283', 0, 14, 1, '30.00', '', 0, '2023-08-26', 1, 0, 0, 21, '0', '', NULL, NULL, NULL),
(196, '2023-08-26-14:56:18-121', 1, 31, 1, '30.00', '', 96, '2023-08-26', 1, 0, 0, 28, '0', '', NULL, NULL, NULL),
(207, '2023-08-26-14:56:18-121', 1, 31, 1, '0.00', '', 96, '2023-08-26', 5, 0, 0, 28, '0', '', NULL, NULL, NULL),
(208, '2023-08-26-14:56:18-121', 1, 31, 1, '0.00', '', 96, '2023-08-26', 6, 0, 0, 28, '0', '', NULL, NULL, NULL),
(209, '2023-08-26-14:56:18-121', 1, 31, 1, '0.00', '', 96, '2023-08-26', 7, 0, 0, 28, '0', '', NULL, NULL, NULL),
(213, '2023-08-26-14:56:18-121', 1, 31, 1, '30.00', '', 96, '2023-08-26', 8, 0, 0, 28, '0', '', NULL, NULL, NULL),
(214, '2023-08-26-14:56:18-121', 1, 16, 1, '28.00', '', 96, '2023-08-26', 8, 0, 0, 23, '0', '', NULL, NULL, NULL),
(215, '2023-08-26-14:56:18-121', 1, 0, 1, '30.00', NULL, 96, '2023-08-26', 0, 1, 8, 23, '0', '', NULL, NULL, NULL),
(216, '2023-08-26-14:56:18-121', 1, 14, 1, '35.00', '', 96, '2023-08-26', 0, 0, 0, 21, '0', '', NULL, NULL, NULL),
(217, '2023-08-26-14:56:18-121', 1, 16, 1, '33.00', '', 96, '2023-08-26', 9, 0, 0, 23, '0', '', NULL, NULL, NULL),
(218, '2023-08-26-14:56:18-121', 1, 31, 1, '30.00', '', 96, '2023-08-26', 9, 0, 0, 28, '0', '', NULL, NULL, NULL),
(219, '2023-08-26-14:56:18-121', 1, 0, 1, '35.00', NULL, 96, '2023-08-26', 0, 1, 9, 28, '0', '', NULL, NULL, NULL),
(220, '2023-08-26-14:56:18-121', 1, 19, 1, '25.00', '', 96, '2023-08-26', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(221, '2023-08-26-14:56:18-121', 1, 7, 1, '1.00', '', 96, '2023-08-26', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(222, '2023-09-12-23:06:18-23', 0, 19, 1, '25.00', '', 0, '2023-09-12', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(223, '2023-09-12-23:07:28-459', 0, 20, 1, '30.00', '', 0, '2023-09-12', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(245, '2023-09-23-21:20:10-656', 0, 14, 1, '39.50', '', 97, '2023-09-25', 0, 1, 0, 39, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 1),
(250, '2023-09-25-15:49:38-1494', 1, 14, 1, '39.50', '', 98, '2023-09-25', 0, 1, 0, 39, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 1),
(251, '2023-09-25-15:49:38-1494', 1, 18, 1, '27.00', '', 98, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(254, '2023-09-25-17:25:00-221', 1, 19, 1, '33.00', '', 104, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(258, '2023-09-25-17:50:20-548', 1, 14, 1, '35.50', '', 110, '2023-09-25', 0, 1, 0, 39, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 1),
(259, '2023-09-25-17:52:46-71', 33, 18, 2, '56.00', '', 111, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(260, '2023-09-25-17:52:46-71', 33, 7, 1, '1.00', '', 111, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(261, '2023-09-25-17:52:46-71', 33, 14, 1, '51.25', 'aaaaaaaaaaaaa', 111, '2023-09-25', 0, 1, 0, 31, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni /  teste ', 4, 1),
(262, '2023-09-25-17:58:10-589', 33, 14, 1, '51.00', '', 112, '2023-09-25', 0, 1, 0, 35, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni ', 3, 1),
(263, '2023-09-25-18:00:15-307', 33, 14, 1, '51.00', 'fdsfdsf', 113, '2023-09-25', 0, 1, 0, 35, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni ', 3, 3),
(264, '2023-09-25-18:02:06-792', 33, 18, 1, '32.00', '', 114, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(265, '2023-09-25-18:02:06-792', 33, 14, 1, '51.00', '', 114, '2023-09-25', 0, 1, 0, 35, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni ', 3, 1),
(266, '2023-09-25-18:07:12-1316', 33, 18, 1, '32.00', '', 115, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(267, '2023-09-25-18:07:12-1316', 33, 14, 1, '51.00', '', 115, '2023-09-25', 0, 1, 0, 35, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni ', 3, 1),
(268, '2023-09-25-18:12:34-1270', 33, 14, 1, '35.00', '', 116, '2023-09-25', 0, 0, 0, 21, '0', '', NULL, NULL, NULL),
(269, '2023-09-25-18:12:34-1270', 33, 18, 1, '28.00', '', 116, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(270, '2023-09-25-18:12:34-1270', 33, 14, 1, '39.00', '', 116, '2023-09-25', 0, 1, 0, 22, '0', '', 'Pizza de Bacon ', 1, 0),
(271, '', 33, 14, 1, '40.00', '', 117, '2023-09-25', 0, 1, 0, 34, '0', '', 'Pizza de Bacon /  Peperoni ', 2, 1),
(272, '2023-09-25-18:23:21-360', 1, 14, 1, '46.00', '', 118, '2023-09-25', 0, 1, 0, 40, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 2),
(278, '2023-09-25-20:03:31-18', 0, 14, 1, '44.00', '', 0, '2023-09-25', 0, 1, 0, 35, '0', '', 'Pizza de Bacon /  Peperoni ', 2, 2),
(279, '2023-09-25-20:03:31-18', 0, 14, 1, '35.00', '', 0, '2023-09-25', 0, 1, 0, 21, '0', '', 'Pizza de Bacon ', 1, 0),
(280, '2023-09-25-20:20:35-14', 33, 14, 1, '62.00', 'dfdsfsfsdafa', 119, '2023-09-25', 0, 1, 0, 32, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni /  teste ', 4, 3),
(281, '2023-09-25-20:20:35-14', 33, 16, 1, '22.00', '', 119, '2023-09-25', 0, 1, 0, 38, '0', '', 'Pizza Calabresa ', 1, 0),
(282, '2023-09-25-20:42:12-666', 0, 14, 1, '39.50', '', 0, '2023-09-25', 0, 1, 0, 39, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 1),
(283, '2023-09-25-20:48:29-423', 33, 14, 1, '45.00', '', 120, '2023-09-25', 0, 1, 0, 34, '0', '', 'Pizza de Bacon /  Peperoni ', 2, 1),
(284, '2023-09-25-20:48:29-423', 33, 14, 1, '38.25', '', 120, '2023-09-25', 0, 1, 0, 31, '0', '', 'Pizza de Bacon /  Calabresa /  Peperoni /  teste ', 4, 0),
(285, '2023-09-25-20:56:38-859', 0, 19, 1, '25.00', '', 0, '2023-09-25', 0, 0, 0, 0, '0', '', NULL, NULL, NULL),
(286, '2023-09-25-20:56:38-859', 0, 14, 1, '43.00', '', 0, '2023-09-25', 0, 1, 0, 22, '0', '', 'Pizza de Bacon ', 1, 1),
(287, '2023-09-25-20:58:34-279', 0, 14, 1, '31.50', '', 0, '2023-09-25', 0, 1, 0, 39, '0', '', 'Pizza de Bacon /  Calabresa ', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `cor` varchar(30) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `url` varchar(100) NOT NULL,
  `mais_sabores` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `foto`, `cor`, `ativo`, `url`, `mais_sabores`) VALUES
(1, 'Pizzas', 'Pizzas Vários Sabores', '09-07-2022-18-23-05-PIZZA.jpg', 'azul', 'Sim', 'pizzas', 'Sim'),
(2, 'Sanduiches', 'Comuns e Artesanais', '09-07-2022-18-23-30-SANDUICHE.jpg', 'rosa', 'Sim', 'sanduiches', 'Não'),
(4, 'Bebidas', 'Refrigerantes, Sucos, Cervejas', '09-07-2022-18-23-50-BEBIDAS.jpg', 'azul-escuro', 'Sim', 'bebidas', 'Não'),
(6, 'Hot Dogs', 'Deliciosos Cachorro Quente', '09-07-2022-18-24-31-HOT.jpg', 'verde', 'Sim', 'hot-dogs', 'Não'),
(7, 'Pastéis', 'Comuns e Especiais', '09-07-2022-18-24-48-PASTEL.jpg', 'roxo', 'Sim', 'pasteis', 'Não'),
(8, 'Açaí', 'Vitaminas e Creme', '09-07-2022-18-25-20-ACAI.jpg', 'vermelho', 'Sim', 'acai', 'Não'),
(9, 'Sobremesas', 'Diversos Doces', '09-07-2022-18-25-53-SOBREMESAS.jpg', 'verde-escuro', 'Sim', 'sobremesas', 'Não'),
(10, 'Sorvetes', 'Pote e Agranel', '09-07-2022-18-26-22-SORVETES.jpg', 'laranja', 'Sim', 'sorvetes', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `rua` varchar(35) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `data` date NOT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `rua`, `numero`, `bairro`, `complemento`, `data`, `cep`, `cidade`) VALUES
(1, 'Hugo Vasconcelos', '(31) 97527-5084', 'Rua Corretor Juventino de Jesus', '01', 'Candelária', 'Edifício Guajajaras Sala 106', '2022-07-12', '31535-522', 'Belo Horizonte'),
(2, 'Cliente 2', '(65) 55555-5555', 'Rua A', '130', 'Santa Amélia', '', '2022-07-05', NULL, NULL),
(5, 'Cliente 3', '(34) 44444-4444', '', '', '', NULL, '2022-07-11', NULL, NULL),
(6, 'Cliente 4', '(11) 41111-1111', '', '', '', NULL, '2022-07-11', NULL, NULL),
(7, 'Teste', '(31) 45555-5555', '', '', '', NULL, '2022-07-11', NULL, NULL),
(8, 'Teste 6', '(31) 97527-5075', 'Rua de Teste Exemplo', '105', 'Pampulha', 'Bloco 01 Ap 1250', '2022-07-12', NULL, NULL),
(9, 'Cliente Teste 50', '(31) 97527-5085', '', '', '', NULL, '2022-07-12', NULL, NULL),
(10, 'Cliente para Teste', '(32) 47855-5555', 'Rua XXXX', '540', 'São João Batista', '', '2022-07-12', NULL, NULL),
(11, 'aaaaaa', '(55) 56664-5454', 'fsdaf', '40', 'Santa Mônica', '50', '2022-07-12', NULL, NULL),
(12, 'teste 5', '(44) 54545-4544', '', '', '', '', '2022-07-13', NULL, NULL),
(13, 'Cliente 10', '(44) 44444-4444', 'Rua X', '50', 'São João Batista', '', '2022-07-13', NULL, NULL),
(14, 'Testando Projeto', '(31) 22222-2222', '', '', '', '', '2022-07-13', NULL, NULL),
(15, 'Cliente teste 50', '(88) 88888-8888', '', '', '', '', '2022-07-13', NULL, NULL),
(16, 'Teste', '(76) 32233-3343', 'Sfdf', '58', 'Santa Mônica', '34', '2022-07-13', NULL, NULL),
(17, 'Nome de Teste', '(11) 11111-1111', '', '', '', '', '2022-08-01', NULL, NULL),
(18, 'Testessss', '(25) 88888-8888', '', '', '', '', '2022-08-01', NULL, NULL),
(19, 'Teste Cliente', '(55) 55555-5556', '', '', '', '', '2022-09-05', NULL, NULL),
(20, 'Testess', '(44) 56666-6666', 'Rua C', '150', 'São João Batista', 'BBB', '2022-09-05', NULL, NULL),
(21, '', '', '', '', '', NULL, '2022-09-05', NULL, NULL),
(22, 'ASsddssdfdsf', '(87) 85874-5485', 'DAF', '41', 'São João Batista', 'AAA', '2022-09-05', NULL, NULL),
(23, 'Teste', '(31) 97139-0746', 'Rua de Teste', '50', 'Santa Amélia', 'teste', '2022-09-21', NULL, NULL),
(24, 'dfsdfdsfdsfsfs', '(44) 44444-5555', '', '', '', NULL, '2022-10-04', NULL, NULL),
(25, '', '(33) 33233-3333', 'Rua CC', '50', 'Santa Mônica', '50', '2022-10-17', NULL, NULL),
(26, '', '(36) 88888-8888', 'Rua 555', '555', 'Santa Amélia', '555', '2022-10-17', NULL, NULL),
(27, '', '(47) 77777-7777', 'Rua 558', '88', 'São João Batista', '8888', '2022-10-17', NULL, NULL),
(28, 'Marta Silva', '(87) 77777-7777', 'Rua B', '222', 'São João Batista', '222', '2022-10-17', NULL, NULL),
(29, '', '(33) 33333-3333', 'Rua 5', '55', 'São João Batista', '55', '2022-10-17', NULL, NULL),
(30, 'Teste Cliente', '(45) 55555-5555', 'Rua 5', '55', 'Santa Amélia', '55', '2022-10-17', NULL, NULL),
(31, 'Júlio Cesar', '(16) 99167-3475', '', '', '', '', '2022-11-03', NULL, NULL),
(32, 'grttet', '(56) 66666-6666', '', '', '', '', '2022-11-12', NULL, NULL),
(33, 'Hugo Testes', '(31) 99534-8118', 'Rua Corretor Juventino de Jesus', '60', 'Candelária', '', '2023-04-11', '', ''),
(34, 'Hugo Freitas', '(31) 97527-5087', 'Rua A', '190', 'Santa Mônica', '', '2023-06-13', NULL, NULL),
(35, 'teste', '(22) 22222-2222', 'Rua Corretor Juventino de Jesus', '100', 'Candelária', '', '2023-08-22', '31535-522', 'Belo Horizonte'),
(36, 'novo', '(89) 99999-9999', 'fafddafa', '50', 'São João Batista', 'daffdfa', '2023-08-22', '', ''),
(37, 'fdfdfsf', '(10) 45555-5555', 'Rua Corretor Juventino de Jesus', '60', 'Candelária', '', '2023-08-22', '31535-522', 'Belo Horizonte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nome_sistema` varchar(50) NOT NULL,
  `email_sistema` varchar(50) NOT NULL,
  `telefone_sistema` varchar(20) NOT NULL,
  `telefone_fixo` varchar(20) DEFAULT NULL,
  `endereco_sistema` varchar(255) DEFAULT NULL,
  `instagram_sistema` varchar(100) DEFAULT NULL,
  `tipo_rel` varchar(10) NOT NULL,
  `tipo_miniatura` varchar(10) NOT NULL,
  `status_whatsapp` varchar(5) NOT NULL,
  `previsao_entrega` int(11) NOT NULL,
  `horario_abertura` time NOT NULL,
  `horario_fechamento` time NOT NULL,
  `texto_fechamento_horario` varchar(255) DEFAULT NULL,
  `status_estabelecimento` varchar(20) NOT NULL,
  `texto_fechamento` varchar(255) DEFAULT NULL,
  `logo_sistema` varchar(100) NOT NULL,
  `favicon_sistema` varchar(100) NOT NULL,
  `logo_rel` varchar(100) NOT NULL,
  `tempo_atualizar` int(11) NOT NULL,
  `tipo_chave` varchar(35) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `dias_apagar` int(11) NOT NULL,
  `impressao_automatica` varchar(5) NOT NULL,
  `fonte_comprovante` int(11) NOT NULL,
  `banner_rotativo` varchar(5) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `instancia` varchar(50) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `pedido_minimo` decimal(8,2) DEFAULT NULL,
  `mostrar_aberto` varchar(5) DEFAULT NULL,
  `entrega_distancia` varchar(5) DEFAULT NULL,
  `chave_api_maps` varchar(255) DEFAULT NULL,
  `latitude_rest` varchar(100) DEFAULT NULL,
  `longitude_rest` varchar(100) DEFAULT NULL,
  `distancia_entrega_km` int(11) DEFAULT NULL,
  `valor_km` int(11) DEFAULT NULL,
  `mais_sabores` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `nome_sistema`, `email_sistema`, `telefone_sistema`, `telefone_fixo`, `endereco_sistema`, `instagram_sistema`, `tipo_rel`, `tipo_miniatura`, `status_whatsapp`, `previsao_entrega`, `horario_abertura`, `horario_fechamento`, `texto_fechamento_horario`, `status_estabelecimento`, `texto_fechamento`, `logo_sistema`, `favicon_sistema`, `logo_rel`, `tempo_atualizar`, `tipo_chave`, `chave_pix`, `cnpj`, `dias_apagar`, `impressao_automatica`, `fonte_comprovante`, `banner_rotativo`, `token`, `instancia`, `ativo`, `pedido_minimo`, `mostrar_aberto`, `entrega_distancia`, `chave_api_maps`, `latitude_rest`, `longitude_rest`, `distancia_entrega_km`, `valor_km`, `mais_sabores`) VALUES
(1, 'Delivery Interativo', 'contato@hugocursos.com.br', '(31) 97527-5084', '', 'Rua X Número 150 - Bairro Centro', 'https://www.instagram.com/portal_hugo_cursos/', 'PDF', 'Foto', 'Api', 50, '00:02:00', '23:59:00', 'Estamos Fechados, funcionamos das 09:00 as 00:00', 'Aberto', 'Fechamos por falta de produtos', '04-07-2022-19-14-56-logo.png', '04-07-2022-19-29-34-favicon.png', '04-07-2022-19-36-41-logo_rel.jpg', 30, 'CNPJ', '18.314.555/5558-05', '18.314.555/5558-05', 30, 'Site', 11, 'Sim', 'DBFY7-5NP-090U0', '64H220823065902OWN96', 'Sim', '12.00', 'Não', 'Sim', 'AIzaSyAOxzyRE83t6kHAR5FtaD5f4uEURqovWJY', '-19.825076167124443', '-43.9794694877301', 10, 1, 'Média');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupons`
--

CREATE TABLE `cupons` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valor_minimo` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cupons`
--

INSERT INTO `cupons` (`id`, `codigo`, `valor`, `data`, `quantidade`, `valor_minimo`) VALUES
(4, '20', '20.00', NULL, NULL, NULL),
(5, '25', '25.00', NULL, NULL, NULL),
(6, '30', '30.00', NULL, NULL, NULL),
(8, '3', '3.00', '2024-06-14', 28, '0.00'),
(9, '5', '5.00', '0000-00-00', 8, NULL),
(10, '8', '8.00', '2023-06-13', 0, NULL),
(11, '1', '1.00', '2023-06-12', 0, NULL),
(12, '7', '7.00', '2023-06-15', 8, '30.00'),
(13, '008', '8.00', '2023-06-17', 10, '30.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dias`
--

CREATE TABLE `dias` (
  `id` int(11) NOT NULL,
  `dia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(50) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entradas`
--

INSERT INTO `entradas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 3, 15, 'Compra', 1, '2022-07-05'),
(2, 6, 5, 'Encontrado', 1, '2022-07-11'),
(3, 27, 50, 'Teste', 1, '2022-10-18'),
(4, 7, 50, 'Teste', 1, '2022-10-18'),
(5, 7, 5, '5', 1, '2023-06-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `tipo_chave` varchar(30) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `telefone`, `email`, `endereco`, `data`, `tipo_chave`, `chave_pix`) VALUES
(1, 'Fornecedor 1', '(41) 11111-1111', 'fornecedor@hotmail.com', 'Rua Guajajaras 140 Centro', '2022-07-05', 'Email', 'fornecedor@hotmail.com'),
(2, 'Fornecedor 2', '(85) 78454-8545', 'fornecedor2@hotmail.com', 'Rua X', '2022-07-05', 'Telefone', '3198888-8888');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo_acessos`
--

CREATE TABLE `grupo_acessos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `grupo_acessos`
--

INSERT INTO `grupo_acessos` (`id`, `nome`) VALUES
(2, 'Pessoas'),
(3, 'Cadastros'),
(4, 'Produtos'),
(5, 'Financeiro'),
(6, 'Relatórios');

-- --------------------------------------------------------

--
-- Estrutura da tabela `guarnicoes`
--

CREATE TABLE `guarnicoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `guarnicoes`
--

INSERT INTO `guarnicoes` (`id`, `nome`, `ativo`, `produto`) VALUES
(1, 'Leite em Pó', 'Sim', 3),
(2, 'Chocobol', 'Sim', 3),
(3, 'Bombom', 'Sim', 3),
(4, 'Morango', 'Sim', 3),
(5, 'Banana', 'Sim', 3),
(6, 'Manga', 'Sim', 3),
(7, 'Confete', 'Sim', 3),
(11, 'Leite em Pó', 'Sim', 1),
(12, 'Banana', 'Sim', 1),
(13, 'Manga', 'Sim', 1),
(14, 'Nutela', 'Sim', 1),
(15, 'Chocobol', 'Sim', 1),
(16, 'Morango', 'Sim', 1),
(17, 'Chocobol', 'Sim', 25),
(18, 'Bombom', 'Sim', 25),
(19, 'Catupiri', 'Sim', 17),
(20, 'Borda Cheddar', 'Sim', 17),
(21, 'Presunto', 'Sim', 17),
(22, 'Leite em Pó', 'Sim', 24),
(23, 'Nutela', 'Sim', 24),
(24, 'Chocobol', 'Sim', 24),
(25, 'Confete', 'Sim', 24);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `produto`, `nome`, `ativo`) VALUES
(6, 4, 'Tomate', 'Sim'),
(7, 4, 'Cebola', 'Sim'),
(8, 4, 'Molho Especial', 'Sim'),
(9, 3, 'Creme de Acaí', 'Sim'),
(10, 3, 'Leite em Pó', 'Sim'),
(11, 1, 'Crocante', 'Sim'),
(12, 1, 'Leite em Pó', 'Sim'),
(13, 16, 'Cebola', 'Sim'),
(14, 16, 'Borda Cheddar', 'Sim'),
(15, 16, 'Calabresa', 'Sim'),
(16, 16, 'Palmito', 'Sim'),
(17, 20, 'Cebola', 'Sim'),
(18, 20, 'Alface', 'Sim'),
(19, 20, 'Tomate', 'Sim'),
(20, 20, 'Cheddar', 'Sim'),
(21, 20, 'Molho Especial', 'Sim'),
(22, 18, 'Cheddar', 'Sim'),
(23, 18, 'Bacon', 'Sim'),
(24, 18, 'Cebola', 'Sim'),
(25, 18, 'Alface', 'Sim'),
(26, 19, 'Cebola', 'Sim'),
(27, 19, 'Alface', 'Sim'),
(28, 19, 'Cheddar', 'Sim'),
(29, 19, 'Bacon', 'Sim'),
(31, 17, 'Cebola', 'Sim'),
(32, 28, 'Cebola', 'Sim'),
(33, 28, 'Picles', 'Sim'),
(34, 28, 'Alface', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mesas`
--

INSERT INTO `mesas` (`id`, `nome`) VALUES
(1, '01'),
(2, '02'),
(3, '03'),
(4, '04'),
(5, '05'),
(6, '06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagar`
--

CREATE TABLE `pagar` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date NOT NULL,
  `data_pgto` date NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pessoa` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL,
  `cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagar`
--

INSERT INTO `pagar` (`id`, `descricao`, `tipo`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_baixa`, `foto`, `pessoa`, `pago`, `produto`, `quantidade`, `funcionario`, `cliente`) VALUES
(2, 'Conta de Luz', 'Conta', '570.00', '2022-07-05', '2022-07-05', '2022-07-05', 1, 1, '05-07-2022-20-43-53-09-11-2021-09-21-26-conta3.jpg', 0, 'Sim', 0, 0, 0, 0),
(3, 'Conta de Água', 'Conta', '380.00', '2022-07-05', '2022-07-05', '0000-00-00', 1, 0, '05-07-2022-20-44-29-09-11-2021-10-17-10-pdfteste.pdf', 0, 'Não', 0, 0, 0, 0),
(4, 'Pagamento Funcionário', 'Conta', '850.00', '2022-07-05', '2022-07-05', '2022-01-05', 1, 1, '05-07-2022-20-45-32-09-11-2021-12-04-29-pdfteste.zip', 0, 'Sim', 0, 0, 8, 0),
(5, 'Pagamento Atrasado', 'Conta', '85.00', '2022-07-06', '2022-07-06', '0000-00-00', 1, 0, 'sem-foto.jpg', 1, 'Não', 0, 0, 0, 0),
(7, 'Compra - (8) Coca Cola Lata 350 ML', 'Compra', '25.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, '06-07-2022-10-15-35-09-11-2021-12-04-29-pdfteste.zip', 1, 'Sim', 3, 8, 0, 0),
(8, 'Aluguél', 'Conta', '800.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0, 0),
(10, 'Compra - (15) Coca Cola Lata 350 ML', 'Compra', '60.00', '2022-07-11', '2022-07-11', '2022-07-11', 1, 1, 'sem-foto.jpg', 1, 'Sim', 7, 15, 0, 0),
(11, 'Compra - (15) Coca Cola Lata 350 ML', 'Compra', '70.00', '2022-07-11', '2022-07-11', '2022-07-11', 1, 1, 'sem-foto.jpg', 2, 'Sim', 7, 15, 0, 0),
(12, 'Compra - (3) Coca Cola Lata 350 ML', 'Compra', '10.00', '2022-07-13', '2022-07-13', '2022-07-13', 1, 1, 'sem-foto.jpg', 0, 'Sim', 7, 3, 0, 0),
(14, 'Pagamento Entregador', 'Entregador', '10.00', '2023-04-11', '2023-04-11', '2023-04-11', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 9, 0),
(15, 'Pagamento Entregador', 'Entregador', '3.00', '2023-04-11', '2023-04-10', '2023-04-10', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 10, 0),
(16, 'Pagamento Entregador', 'Entregador', '8.00', '2023-04-11', '2023-04-12', '0000-00-00', 1, 0, 'sem-foto.jpg', 0, 'Não', 0, 0, 9, 0),
(17, 'Pagamento Entregador', 'Entregador', '8.00', '2023-04-11', '2023-04-11', '2023-04-11', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 9, 0),
(18, 'Pagamento Entregador', 'Entregador', '16.00', '2023-04-11', '2023-04-11', '2023-04-11', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 9, 0),
(19, 'Pagamento Entregador', 'Entregador', '7.00', '2023-04-11', '2023-04-11', '2023-04-11', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 10, 0),
(20, 'Pagamento Entregador', 'Entregador', '12.00', '2023-06-13', '2023-06-13', '2023-06-13', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `categoria` int(11) NOT NULL,
  `valor_compra` decimal(8,2) NOT NULL,
  `valor_venda` decimal(8,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nivel_estoque` int(11) NOT NULL,
  `tem_estoque` varchar(5) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `url` varchar(100) NOT NULL,
  `guarnicoes` int(11) DEFAULT NULL,
  `promocao` varchar(5) DEFAULT NULL,
  `combo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `categoria`, `valor_compra`, `valor_venda`, `estoque`, `foto`, `nivel_estoque`, `tem_estoque`, `ativo`, `url`, `guarnicoes`, `promocao`, `combo`) VALUES
(1, 'Vitamina de Açaí', 'Vitamina ou suco de Açaí', 8, '0.00', '20.00', 0, '10-07-2022-11-04-21-VITAMINA.jpg', 0, 'Não', 'Sim', 'vitamina-de-acai', 3, NULL, NULL),
(3, 'Taça de Açaí', 'Taça de Açaí', 8, '0.00', '0.00', 9, '09-07-2022-21-16-16-FRUTAS.jpg', 0, 'Não', 'Sim', 'taca-de-acai', 5, NULL, NULL),
(4, 'Açaí Pote 1 Litro', 'Pote de Açai de 1 Litro', 8, '0.00', '20.00', 0, '10-07-2022-11-04-15-POTE.jpg', 10, 'Sim', 'Sim', 'acai-pote-1-litro', 3, NULL, NULL),
(6, 'Água Mineral 500 ML', 'Água Garrafa 500 ML', 4, '0.00', '6.00', 0, '10-07-2022-10-59-20-AGUA.jpg', 15, 'Sim', 'Sim', 'agua-mineral-500-ml', NULL, NULL, NULL),
(7, 'Coca Cola Lata 350 ML', 'Lata 350 ML', 4, '3.33', '1.00', 53, '10-07-2022-10-58-50-COCACOLA.jpg', 15, 'Sim', 'Sim', 'coca-cola-lata-350-ml', 0, NULL, NULL),
(8, 'Hot Dog Picante', 'Cachorro quente Picante', 6, '0.00', '11.00', 0, '09-07-2022-21-20-20-DOG-PICANTE.jpg', 0, 'Não', 'Sim', 'hot-dog-picante', NULL, NULL, NULL),
(9, 'Hot Dog Tradicional', 'Cachorro quente tradicional', 6, '0.00', '9.00', 0, '09-07-2022-21-20-54-DOG-TRADICIONAL.jpg', 0, 'Não', 'Sim', 'hot-dog-tradicional', NULL, NULL, NULL),
(10, 'Hot Dog Vinagrete', 'Cachorro quente com vinagrete', 6, '0.00', '10.00', 0, '09-07-2022-21-21-18-DOG-VINAGRETE.jpg', 0, 'Não', 'Sim', 'hot-dog-vinagrete', NULL, NULL, NULL),
(11, 'Pastel de Carne', 'Pastel de Carne moída', 7, '0.00', '7.00', 0, '09-07-2022-21-21-45-PASTEL-CARNE.jpg', 0, 'Não', 'Sim', 'pastel-de-carne', NULL, NULL, NULL),
(12, 'Pastel Napolitano', 'Pastel Napolitando', 7, '0.00', '7.00', 0, '09-07-2022-21-22-03-PASTEL-NAPOLITANO.jpg', 0, 'Não', 'Sim', 'pastel-napolitano', NULL, NULL, NULL),
(13, 'Pastel de Queijo', 'Pastel queijo canastra', 7, '0.00', '8.00', 0, '09-07-2022-21-22-26-PASTEL-QUEIJO.jpg', 0, 'Não', 'Sim', 'pastel-de-queijo', NULL, NULL, NULL),
(14, 'Pizza de Bacon', 'Pizza de bacon e milho', 1, '0.00', '20.00', 0, '09-07-2022-21-23-01-PIZZA-BACON.jpg', 0, 'Não', 'Sim', 'pizza-de-bacon', 0, 'Sim', 'Não'),
(15, 'Suco Lata 350 ML', 'Suco Del Vale Lata', 4, '0.00', '7.00', 0, '10-07-2022-10-59-56-SUCO.jpg', 10, 'Sim', 'Sim', 'suco-lata-350-ml', 0, 'Sim', 'Não'),
(16, 'Pizza Calabresa', 'Deliciosa pizza de calabresa com bacon, milho, borda rechedada com cheddar.', 1, '0.00', '0.00', 0, '10-07-2022-11-05-04-PIZZA-CALABRESA.jpg', 0, 'Não', 'Sim', 'pizza-calabresa', NULL, NULL, NULL),
(17, 'Pizza Peperoni', 'Pizza de Peperoni', 1, '0.00', '0.00', 0, '10-07-2022-11-08-05-PIZZA-PEPERONI.jpg', 0, 'Não', 'Sim', 'pizza-peperoni', 2, NULL, NULL),
(18, 'Burguer Cheddar', 'Sanduíche artesanal de cheddar com bacon, carne de 150 Gramas com molho especial, cheddar, bacon, tomate, cebola, alface e pão gourmet.', 2, '0.00', '23.00', 0, '10-07-2022-11-08-50-BURGUER-CHEDDAR.jpg', 0, 'Não', 'Sim', 'burguer-cheddar', NULL, NULL, NULL),
(19, 'Burguer Costelinha', 'Sanduíche artesanal de costeinha suína, carne de 150 Gramas com molho especial, cheddar, tomate, cebola, alface e pão gourmet.', 2, '0.00', '25.00', 0, '10-07-2022-11-09-20-BURGUER-COSTELINHA.jpg', 0, 'Não', 'Sim', 'burguer-costelinha', 0, 'Sim', 'Não'),
(20, 'Burguer Picanha', 'Sanduíche artesanal de picanha Carne de 180 Gramas com molho especial, cheddar, tomate, cebola, alface e pão gourmet.', 2, '0.00', '30.00', 0, '10-07-2022-11-09-39-BURGUER-PICANHA.jpg', 0, 'Não', 'Sim', 'burguer-picanha', NULL, NULL, NULL),
(21, 'Mousse de Chocolate', 'Pote de 300 ML', 9, '0.00', '18.00', 0, '10-07-2022-11-10-28-MOUSSE.jpg', 0, 'Não', 'Sim', 'mousse-de-chocolate', 0, 'Sim', 'Não'),
(22, 'Pave de Maracujá', 'Delicioso pavê de maracuja...', 9, '0.00', '16.00', 0, '10-07-2022-11-10-58-PAVE.jpg', 0, 'Não', 'Sim', 'pave-de-maracuja', NULL, NULL, NULL),
(23, 'Pudim de Leite Condensado', 'Pudim de leite condensado, cerca de 350 Gramas.', 9, '0.00', '16.00', 0, '10-07-2022-11-11-36-PUDIM.jpg', 0, 'Não', 'Sim', 'pudim-de-leite-condensado', NULL, NULL, NULL),
(24, 'Sorvete de Baunilha 300 ML', 'Delicioso sorte de baunilha, pote de 300 ML', 10, '0.00', '8.00', 0, '10-07-2022-11-12-25-BAUNILHA.jpg', 0, 'Não', 'Sim', 'sorvete-de-baunilha-300-ml', 3, 'Sim', 'Não'),
(25, 'Sortete de Chocolate', 'Pote de 300 ML de sorvete de chocolate', 10, '0.00', '9.00', 0, '10-07-2022-11-12-46-CHOCOLATE.jpg', 0, 'Não', 'Sim', 'sortete-de-chocolate', 1, 'Não', 'Não'),
(27, 'Enérgetico Red Bull', 'Red Bull 476 ML', 4, '0.00', '13.00', 33, '05-09-2022-14-29-17-red.jpg', 5, 'Sim', 'Sim', 'energetico-red-bull', NULL, NULL, NULL),
(28, 'Combo Burguer X', 'Sanduiche + Batata + Bebida', 2, '0.00', '30.00', 0, '22-08-2023-10-57-11-combo-4-8551.jpg', 0, 'Não', 'Sim', 'combo-burguer-x', 0, 'Sim', 'Sim'),
(29, 'Combo Burguer Costelinha', 'Sanduiche + Batata + Bebida', 2, '0.00', '39.00', 0, '22-08-2023-11-18-38-combo2.jpg', 0, 'Não', 'Sim', 'combo-burguer-costelinha', 0, 'Não', 'Sim'),
(30, 'combo', 'adfad afd afdfa dfa fad fa fda fafa fdsaf asfaadfad afd afdfa dfa fad fa fda fafa fdsaf asfa adfad afd afdfa dfa fad fa fda fafa fdsaf asfa', 2, '0.00', '50.00', 0, 'sem-foto.jpg', 0, 'Não', 'Sim', 'combo', 0, 'Não', 'Sim'),
(31, 'Pizza teste', '', 1, '0.00', '0.00', 0, 'sem-foto.jpg', 0, 'Não', 'Sim', 'pizza-teste', 0, 'Não', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receber`
--

CREATE TABLE `receber` (
  `id` int(11) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `tipo` varchar(30) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_lanc` date NOT NULL,
  `data_venc` date NOT NULL,
  `data_pgto` date NOT NULL,
  `usuario_lanc` int(11) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pessoa` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `receber`
--

INSERT INTO `receber` (`id`, `descricao`, `tipo`, `valor`, `data_lanc`, `data_venc`, `data_pgto`, `usuario_lanc`, `usuario_baixa`, `foto`, `pessoa`, `pago`, `produto`, `quantidade`, `funcionario`) VALUES
(1, 'Pagamento Teste', 'Conta', '215.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, '06-07-2022-10-04-37-09-11-2021-10-17-10-pdfteste.pdf', 1, 'Sim', 0, 0, 0),
(2, 'Recebimento', 'Conta', '120.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, '06-07-2022-10-06-12-09-11-2021-12-04-29-pdfteste.zip', 0, 'Sim', 0, 0, 0),
(4, 'Recebido', 'Conta', '1600.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0),
(5, 'Teste', 'Conta', '400.00', '2022-07-06', '2022-07-06', '2022-07-06', 1, 1, 'sem-foto.jpg', 0, 'Sim', 0, 0, 0),
(6, 'Receber', 'Conta', '50.00', '2022-07-06', '2022-07-06', '0000-00-00', 1, 0, 'sem-foto.jpg', 2, 'Não', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saidas`
--

CREATE TABLE `saidas` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `motivo` varchar(50) NOT NULL,
  `usuario` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `saidas`
--

INSERT INTO `saidas` (`id`, `produto`, `quantidade`, `motivo`, `usuario`, `data`) VALUES
(1, 3, 5, 'Furto', 1, '2022-07-05'),
(2, 3, 9, 'Sumiu', 1, '2022-07-06'),
(3, 7, 15, 'Perda', 1, '2022-07-11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `sessao` varchar(35) NOT NULL,
  `tabela` varchar(25) NOT NULL,
  `id_item` int(11) NOT NULL,
  `carrinho` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `categoria` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `temp`
--

INSERT INTO `temp` (`id`, `sessao`, `tabela`, `id_item`, `carrinho`, `data`, `categoria`) VALUES
(176, '2023-08-26-14:56:18-121', 'adicionais', 24, 216, '2023-08-26', NULL),
(177, '2023-08-26-14:56:18-121', 'adicionais', 12, 217, '2023-08-26', NULL),
(178, '2023-09-23-21:20:10-656', 'adicionais', 17, 225, '2023-09-25', NULL),
(183, '2023-09-23-21:20:10-656', 'adicionais', 2, 229, '2023-09-25', 'Sim'),
(184, '2023-09-23-21:20:10-656', 'adicionais', 3, 229, '2023-09-25', 'Sim'),
(185, '2023-09-23-21:20:10-656', 'adicionais', 2, 230, '2023-09-25', 'Sim'),
(186, '2023-09-23-21:20:10-656', 'adicionais', 3, 230, '2023-09-25', 'Sim'),
(187, '2023-09-23-21:20:10-656', 'adicionais', 3, 231, '2023-09-25', 'Sim'),
(188, '2023-09-23-21:20:10-656', 'adicionais', 3, 232, '2023-09-25', 'Sim'),
(189, '2023-09-23-21:20:10-656', 'adicionais', 5, 234, '2023-09-25', 'Sim'),
(190, '2023-09-23-21:20:10-656', 'adicionais', 3, 234, '2023-09-25', 'Sim'),
(193, '2023-09-23-21:20:10-656', 'adicionais', 17, 236, '2023-09-25', ''),
(194, '2023-09-23-21:20:10-656', 'adicionais', 18, 236, '2023-09-25', ''),
(195, '2023-09-23-21:20:10-656', 'adicionais', 2, 237, '2023-09-25', 'Sim'),
(196, '2023-09-23-21:20:10-656', 'adicionais', 3, 237, '2023-09-25', 'Sim'),
(199, '2023-09-23-21:20:10-656', 'adicionais', 3, 239, '2023-09-25', 'Sim'),
(200, '2023-09-23-21:20:10-656', 'adicionais', 5, 239, '2023-09-25', 'Sim'),
(201, '2023-09-23-21:20:10-656', 'adicionais', 3, 241, '2023-09-25', 'Sim'),
(202, '2023-09-23-21:20:10-656', 'adicionais', 5, 241, '2023-09-25', 'Sim'),
(203, '2023-09-23-21:20:10-656', 'adicionais', 3, 242, '2023-09-25', 'Sim'),
(204, '2023-09-23-21:20:10-656', 'adicionais', 5, 243, '2023-09-25', 'Sim'),
(205, '2023-09-23-21:20:10-656', 'adicionais', 2, 244, '2023-09-25', 'Sim'),
(206, '2023-09-23-21:20:10-656', 'adicionais', 2, 245, '2023-09-25', 'Sim'),
(207, '2023-09-23-21:20:10-656', 'adicionais', 3, 245, '2023-09-25', 'Sim'),
(208, '', 'adicionais', 2, 246, '2023-09-25', 'Sim'),
(209, '', 'adicionais', 3, 246, '2023-09-25', 'Sim'),
(210, '', 'adicionais', 2, 247, '2023-09-25', 'Sim'),
(211, '', 'adicionais', 3, 247, '2023-09-25', 'Sim'),
(212, '2023-09-25-15:49:38-1494', 'adicionais', 5, 249, '2023-09-25', 'Sim'),
(213, '2023-09-25-15:49:38-1494', 'adicionais', 2, 250, '2023-09-25', 'Sim'),
(214, '2023-09-25-15:49:38-1494', 'adicionais', 3, 250, '2023-09-25', 'Sim'),
(215, '2023-09-25-15:49:38-1494', 'adicionais', 18, 251, '2023-09-25', ''),
(216, '2023-09-25-15:49:38-1494', 'ingredientes', 22, 251, '2023-09-25', NULL),
(217, '2023-09-25-15:49:38-1494', 'ingredientes', 23, 251, '2023-09-25', NULL),
(218, '', 'adicionais', 3, 252, '2023-09-25', 'Sim'),
(219, '2023-09-25-17:25:00-221', 'adicionais', 20, 254, '2023-09-25', ''),
(220, '2023-09-25-17:25:00-221', 'adicionais', 19, 254, '2023-09-25', ''),
(221, '2023-09-25-17:25:00-221', 'ingredientes', 26, 254, '2023-09-25', NULL),
(222, '', 'adicionais', 2, 255, '2023-09-25', 'Sim'),
(223, '', 'adicionais', 3, 257, '2023-09-25', 'Sim'),
(224, '2023-09-25-17:50:20-548', 'adicionais', 3, 258, '2023-09-25', 'Sim'),
(225, '2023-09-25-17:52:46-71', 'adicionais', 17, 259, '2023-09-25', ''),
(226, '2023-09-25-17:52:46-71', 'ingredientes', 22, 259, '2023-09-25', NULL),
(227, '2023-09-25-17:52:46-71', 'ingredientes', 23, 259, '2023-09-25', NULL),
(228, '2023-09-25-17:52:46-71', 'adicionais', 2, 261, '2023-09-25', 'Sim'),
(229, '2023-09-25-17:52:46-71', 'adicionais', 3, 261, '2023-09-25', 'Sim'),
(230, '2023-09-25-17:52:46-71', 'adicionais', 5, 261, '2023-09-25', 'Sim'),
(231, '2023-09-25-17:58:10-589', 'adicionais', 3, 262, '2023-09-25', 'Sim'),
(232, '2023-09-25-17:58:10-589', 'adicionais', 5, 262, '2023-09-25', 'Sim'),
(233, '2023-09-25-17:58:10-589', 'adicionais', 2, 262, '2023-09-25', 'Sim'),
(234, '2023-09-25-18:00:15-307', 'adicionais', 2, 263, '2023-09-25', 'Sim'),
(235, '2023-09-25-18:00:15-307', 'adicionais', 3, 263, '2023-09-25', 'Sim'),
(236, '2023-09-25-18:00:15-307', 'adicionais', 5, 263, '2023-09-25', 'Sim'),
(237, '2023-09-25-18:02:06-792', 'adicionais', 17, 264, '2023-09-25', ''),
(238, '2023-09-25-18:02:06-792', 'adicionais', 18, 264, '2023-09-25', ''),
(239, '2023-09-25-18:02:06-792', 'ingredientes', 22, 264, '2023-09-25', NULL),
(240, '2023-09-25-18:02:06-792', 'ingredientes', 23, 264, '2023-09-25', NULL),
(241, '2023-09-25-18:02:06-792', 'ingredientes', 24, 264, '2023-09-25', NULL),
(242, '2023-09-25-18:02:06-792', 'ingredientes', 25, 264, '2023-09-25', NULL),
(243, '2023-09-25-18:02:06-792', 'adicionais', 2, 265, '2023-09-25', 'Sim'),
(244, '2023-09-25-18:02:06-792', 'adicionais', 3, 265, '2023-09-25', 'Sim'),
(245, '2023-09-25-18:02:06-792', 'adicionais', 5, 265, '2023-09-25', 'Sim'),
(246, '2023-09-25-18:07:12-1316', 'adicionais', 17, 266, '2023-09-25', ''),
(247, '2023-09-25-18:07:12-1316', 'adicionais', 18, 266, '2023-09-25', ''),
(248, '2023-09-25-18:07:12-1316', 'ingredientes', 22, 266, '2023-09-25', NULL),
(249, '2023-09-25-18:07:12-1316', 'ingredientes', 24, 266, '2023-09-25', NULL),
(250, '2023-09-25-18:07:12-1316', 'ingredientes', 25, 266, '2023-09-25', NULL),
(252, '2023-09-25-18:07:12-1316', 'ingredientes', 23, 266, '2023-09-25', NULL),
(253, '2023-09-25-18:07:12-1316', 'adicionais', 2, 267, '2023-09-25', 'Sim'),
(254, '2023-09-25-18:07:12-1316', 'adicionais', 3, 267, '2023-09-25', 'Sim'),
(255, '2023-09-25-18:07:12-1316', 'adicionais', 5, 267, '2023-09-25', 'Sim'),
(256, '2023-09-25-18:12:34-1270', 'adicionais', 24, 268, '2023-09-25', ''),
(257, '2023-09-25-18:12:34-1270', 'adicionais', 17, 269, '2023-09-25', ''),
(258, '2023-09-25-18:12:34-1270', 'ingredientes', 22, 269, '2023-09-25', NULL),
(259, '2023-09-25-18:12:34-1270', 'adicionais', 2, 270, '2023-09-25', 'Sim'),
(260, '', 'adicionais', 3, 271, '2023-09-25', 'Sim'),
(261, '2023-09-25-18:23:21-360', 'adicionais', 3, 272, '2023-09-25', 'Sim'),
(262, '2023-09-25-18:23:21-360', 'adicionais', 2, 272, '2023-09-25', 'Sim'),
(283, '2023-09-25-18:26:05-272', 'adicionais', 3, 273, '2023-09-25', 'Sim'),
(284, '2023-09-25-18:26:05-272', 'adicionais', 5, 273, '2023-09-25', 'Sim'),
(285, '2023-09-25-18:26:05-272', 'adicionais', 5, 274, '2023-09-25', 'Sim'),
(288, '2023-09-25-18:26:05-272', 'adicionais', 5, 275, '2023-09-25', 'Sim'),
(291, '2023-09-25-18:26:05-272', 'adicionais', 2, 276, '2023-09-25', 'Sim'),
(292, '2023-09-25-18:26:05-272', 'adicionais', 3, 277, '2023-09-25', 'Sim'),
(323, '2023-09-25-20:03:31-18', 'adicionais', 3, 278, '2023-09-25', 'Sim'),
(325, '2023-09-25-20:03:31-18', 'adicionais', 5, 279, '2023-09-25', 'Sim'),
(326, '2023-09-25-20:20:35-14', 'adicionais', 2, 280, '2023-09-25', 'Sim'),
(327, '2023-09-25-20:20:35-14', 'adicionais', 3, 280, '2023-09-25', 'Sim'),
(328, '2023-09-25-20:20:35-14', 'adicionais', 5, 280, '2023-09-25', 'Sim'),
(329, '2023-09-25-20:42:12-666', 'adicionais', 2, 282, '2023-09-25', 'Sim'),
(330, '2023-09-25-20:42:12-666', 'adicionais', 3, 282, '2023-09-25', 'Sim'),
(331, '2023-09-25-20:48:29-423', 'adicionais', 2, 283, '2023-09-25', 'Sim'),
(332, '2023-09-25-20:48:29-423', 'adicionais', 5, 283, '2023-09-25', 'Sim'),
(333, '2023-09-25-20:48:29-423', 'adicionais', 2, 284, '2023-09-25', 'Sim'),
(334, '2023-09-25-20:56:38-859', 'adicionais', 3, 286, '2023-09-25', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `senha` varchar(35) NOT NULL,
  `senha_crip` varchar(100) NOT NULL,
  `nivel` varchar(30) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `tipo_chave` varchar(35) DEFAULT NULL,
  `chave_pix` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `senha`, `senha_crip`, `nivel`, `ativo`, `data`, `foto`, `telefone`, `tipo_chave`, `chave_pix`) VALUES
(1, 'Administrador', 'contato@hugocursos.com.br', '000.000.000-00', '123', '202cb962ac59075b964b07152d234b70', 'Administrador', 'Sim', '2022-07-04', '22-08-2023-13-44-02-ARTE-PERFIL-WHATSAPP.jpg', '(31) 97527-5084', NULL, NULL),
(5, 'Atendente', 'atendente@hotmail.com', '555.555.555-56', '123', '202cb962ac59075b964b07152d234b70', 'Atendente', 'Sim', '2022-07-05', '05-07-2022-11-25-11-about-img.jpg', '(55) 55555-5556', 'Email', 'atendente@hotmail.com'),
(6, 'Gerente', 'gerente@hotmail.com', '555.555.555-57', '123', '202cb962ac59075b964b07152d234b70', 'Gerente', 'Sim', '2022-07-05', '05-07-2022-11-16-29-c1.jpg', '(55) 55555-5559', 'CPF', '555.555.555-57'),
(8, 'Balconista Teste', 'balconista@hotmail.com', '222.222.222-22', '123', '202cb962ac59075b964b07152d234b70', 'Atendente', 'Sim', '2022-07-06', 'sem-foto.jpg', '(14) 52222-2222', 'Código', '013525555'),
(9, 'Entregador 1', 'entregador1@hotmail.com', '333.333.333-33', '123', '202cb962ac59075b964b07152d234b70', 'Entregador', 'Sim', '2023-04-11', 'sem-foto.jpg', '(33) 33333-3333', 'CPF', '333.333.333-33'),
(10, 'Entregador 2', 'entregador2@hotmail.com', '222.222.222-23', '123', '202cb962ac59075b964b07152d234b70', 'Entregador', 'Sim', '2023-04-11', 'sem-foto.jpg', '(31) 97527-5084', 'CPF', '22222222223');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_permissoes`
--

CREATE TABLE `usuarios_permissoes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios_permissoes`
--

INSERT INTO `usuarios_permissoes` (`id`, `usuario`, `permissao`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 5, 4),
(4, 5, 3),
(5, 5, 8),
(6, 5, 9),
(7, 5, 14),
(8, 5, 19),
(9, 5, 20),
(11, 6, 1),
(12, 6, 2),
(13, 6, 3),
(14, 6, 4),
(15, 6, 5),
(16, 6, 6),
(17, 6, 7),
(18, 6, 8),
(19, 6, 9),
(20, 6, 10),
(21, 6, 11),
(22, 6, 12),
(23, 6, 13),
(24, 6, 14),
(25, 6, 15),
(26, 6, 16),
(31, 6, 21),
(32, 6, 22),
(33, 6, 23),
(34, 6, 24),
(36, 6, 25),
(37, 8, 2),
(38, 8, 28),
(39, 8, 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `variacoes`
--

CREATE TABLE `variacoes` (
  `id` int(11) NOT NULL,
  `produto` int(11) NOT NULL,
  `sigla` varchar(5) NOT NULL,
  `nome` varchar(35) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `variacoes`
--

INSERT INTO `variacoes` (`id`, `produto`, `sigla`, `nome`, `descricao`, `valor`, `ativo`) VALUES
(2, 4, 'M', 'Médio', '25CM', '35.00', 'Sim'),
(3, 0, 'f', 'f', 'f', '50.00', 'Sim'),
(4, 0, 'M', 'Média', '6 Fatias', '30.00', 'Sim'),
(12, 3, '300ML', 'Pequeno', 'Pote de 300 ML', '15.00', 'Sim'),
(13, 3, '500ML', 'Médio', 'Pote de 500 ML', '20.00', 'Sim'),
(14, 3, '700ML', 'Grande', 'Pote de 500 ML', '25.00', 'Sim'),
(15, 1, '300ML', 'Pequena', 'Vitamina 300 ML', '10.00', 'Sim'),
(16, 1, '500ML', 'Média', 'Vitamina de 500 ML', '18.00', 'Sim'),
(20, 14, 'P', 'Pequena', '4 Fatias', '25.00', 'Sim'),
(21, 14, 'M', 'Média', '6 Fatias', '30.00', 'Sim'),
(22, 14, 'G', 'Grande', '8 Fatias', '35.00', 'Sim'),
(26, 25, 'P', '300 ML', 'Pote Pequeno', '25.00', 'Sim'),
(27, 25, 'M', '500 ML', '', '35.00', 'Sim'),
(29, 31, 'P', 'Pequena', '4 Fatias', '25.00', 'Sim'),
(30, 31, 'M', 'Média', '6 Fatias', '30.00', 'Sim'),
(31, 31, 'G', 'Grande', '8 Fatias', '35.00', 'Sim'),
(32, 31, 'GG', 'Gigante', '10 Fatias', '40.00', 'Sim'),
(33, 17, 'P', 'Pequena', '4 Fatias', '28.00', 'Sim'),
(34, 17, 'M', 'Média', '6 Fatias', '32.00', 'Sim'),
(35, 17, 'G', 'Grande', '8 Fatias', '37.00', 'Sim'),
(36, 17, 'GG', 'Gigante', '10 Fatias', '45.00', 'Sim'),
(38, 16, 'P', 'Pequena', '4 Fatias', '22.00', 'Sim'),
(39, 16, 'M', 'Média', '6 Fatias', '25.00', 'Sim'),
(40, 16, 'G', 'Grande', '8 Fatias', '30.00', 'Sim'),
(41, 16, 'GG', 'Gigante', '10 Fatias', '35.00', 'Sim'),
(42, 14, 'GG', 'Gigante', '10 Fatias', '42.00', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `variacoes_cat`
--

CREATE TABLE `variacoes_cat` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `sigla` varchar(15) NOT NULL,
  `nome` varchar(35) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `sabores` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `variacoes_cat`
--

INSERT INTO `variacoes_cat` (`id`, `categoria`, `sigla`, `nome`, `descricao`, `sabores`) VALUES
(9, 1, 'P', 'Pequena', '4 Fatias', 2),
(10, 1, 'M', 'Média', '6 Fatias', 2),
(11, 1, 'G', 'Grande', '8 Fatias', 4),
(12, 1, 'GG', 'Gigante', '10 Fatias', 6),
(13, 8, 'P', 'Pequeno', '300 ML', 0),
(14, 8, 'M', 'Médio', '500 ML', 0),
(15, 8, 'G', 'Grande', '700 ML', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `cliente` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `total_pago` decimal(8,2) NOT NULL,
  `troco` decimal(8,2) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(25) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `taxa_entrega` decimal(8,2) NOT NULL,
  `tipo_pgto` varchar(25) NOT NULL,
  `usuario_baixa` int(11) NOT NULL,
  `entrega` varchar(25) NOT NULL,
  `mesa` varchar(15) DEFAULT NULL,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `cupom` decimal(8,2) DEFAULT NULL,
  `entregador` int(11) DEFAULT NULL,
  `pago_entregador` varchar(5) DEFAULT NULL,
  `pedido` int(11) DEFAULT NULL,
  `impressao` varchar(5) DEFAULT NULL,
  `ref_api` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `cliente`, `valor`, `total_pago`, `troco`, `data`, `hora`, `status`, `pago`, `obs`, `taxa_entrega`, `tipo_pgto`, `usuario_baixa`, `entrega`, `mesa`, `nome_cliente`, `cupom`, `entregador`, `pago_entregador`, `pedido`, `impressao`, `ref_api`) VALUES
(115, 33, '83.00', '83.00', '0.00', '2023-09-25', '18:07:53', 'Iniciado', 'Não', '', '0.00', 'Cartão de Débito', 0, 'Consumir Local', '', 'Hugo Testes', '0.00', NULL, 'Não', 19, 'Sim', ''),
(116, 33, '102.00', '102.00', '0.00', '2023-09-25', '18:18:16', 'Iniciado', 'Não', '', '0.00', 'Cartão de Crédito', 0, 'Consumir Local', '', 'Hugo Testes', '0.00', NULL, 'Não', 20, 'Sim', ''),
(117, 33, '40.00', '40.00', '0.00', '2023-09-25', '18:22:42', 'Iniciado', 'Não', '', '0.00', 'Cartão de Débito', 0, 'Consumir Local', '', 'Hugo Testes', '0.00', NULL, 'Não', 21, 'Sim', ''),
(118, 1, '46.00', '46.00', '0.00', '2023-09-25', '18:24:40', 'Finalizado', 'Sim', '', '0.00', 'Cartão de Crédito', 0, 'Consumir Local', '', 'Hugo Vasconcelos', '0.00', NULL, 'Não', 22, 'Sim', ''),
(119, 33, '84.00', '84.00', '0.00', '2023-09-25', '20:21:43', 'Iniciado', 'Não', '', '0.00', 'Cartão de Crédito', 0, 'Consumir Local', '', 'Hugo Testes', '0.00', NULL, 'Não', 23, 'Sim', ''),
(120, 33, '83.25', '83.25', '0.00', '2023-09-25', '20:50:54', 'Iniciado', 'Não', '', '0.00', 'Cartão de Crédito', 0, 'Consumir Local', '', 'Hugo Testes', '0.00', NULL, 'Não', 24, 'Sim', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adicionais`
--
ALTER TABLE `adicionais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adicionais_cat`
--
ALTER TABLE `adicionais_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_rotativo`
--
ALTER TABLE `banner_rotativo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bordas`
--
ALTER TABLE `bordas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `guarnicoes`
--
ALTER TABLE `guarnicoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pagar`
--
ALTER TABLE `pagar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receber`
--
ALTER TABLE `receber`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `saidas`
--
ALTER TABLE `saidas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `variacoes`
--
ALTER TABLE `variacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `variacoes_cat`
--
ALTER TABLE `variacoes_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `adicionais`
--
ALTER TABLE `adicionais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `adicionais_cat`
--
ALTER TABLE `adicionais_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `banner_rotativo`
--
ALTER TABLE `banner_rotativo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `bordas`
--
ALTER TABLE `bordas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `dias`
--
ALTER TABLE `dias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `grupo_acessos`
--
ALTER TABLE `grupo_acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `guarnicoes`
--
ALTER TABLE `guarnicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `pagar`
--
ALTER TABLE `pagar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `receber`
--
ALTER TABLE `receber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `saidas`
--
ALTER TABLE `saidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios_permissoes`
--
ALTER TABLE `usuarios_permissoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `variacoes`
--
ALTER TABLE `variacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `variacoes_cat`
--
ALTER TABLE `variacoes_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
