-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2024 às 02:00
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
-- Banco de dados: `bd_senai_at3`
--
CREATE DATABASE IF NOT EXISTS `bd_senai_at3` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_senai_at3`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome_completo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`nome`, `senha`, `id_usuario`, `nome_completo`) VALUES
('admin', '1234', 1, 'cassiano gomes'),
('admin2', '1234', 2, 'jhon');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_veiculos`
--

CREATE TABLE `tb_veiculos` (
  `id_veiculo` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `ano` int(11) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_veiculos`
--

INSERT INTO `tb_veiculos` (`id_veiculo`, `modelo`, `placa`, `ano`, `preco`) VALUES
(4, 'fiat uno', 'ks2424', 2357, 30000);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `tb_veiculos`
--
ALTER TABLE `tb_veiculos`
  ADD PRIMARY KEY (`id_veiculo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_veiculos`
--
ALTER TABLE `tb_veiculos`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
