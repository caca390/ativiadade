-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2024 às 00:29
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
-- Banco de dados: `bd_senai_at2`
--
CREATE DATABASE IF NOT EXISTS `bd_senai_at2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_senai_at2`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cargos`
--

CREATE TABLE `tb_cargos` (
  `id_cargo` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `salario` int(11) DEFAULT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tb_cargos`
--

INSERT INTO `tb_cargos` (`id_cargo`, `nome`, `data_nascimento`, `salario`, `sexo`, `cargo`) VALUES
(1, 'teste', '2024-10-17', 1556, 'Masculino', 'Gestor de TI');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_cargos`
--
ALTER TABLE `tb_cargos`
  ADD PRIMARY KEY (`id_cargo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_cargos`
--
ALTER TABLE `tb_cargos`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
