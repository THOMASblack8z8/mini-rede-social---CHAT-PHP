-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Out-2025 às 19:47
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `rede_social_rl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `data_comentario` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario_id`, `post_id`, `comentario`, `data_comentario`) VALUES
(4, 6, 3, 'pinchiling', '2025-10-10 14:22:07'),
(5, 3, 12, '100 condições ', '2025-10-10 14:41:36'),
(6, 7, 16, 'que engraçado', '2025-10-10 14:52:08'),
(7, 7, 14, 'muito verdade', '2025-10-10 14:52:23'),
(8, 5, 9, 'lindoooo', '2025-10-10 15:23:29'),
(10, 6, 13, 'raijungo', '2025-10-10 17:36:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curtidas`
--

CREATE TABLE `curtidas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `data_curtida` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curtidas`
--

INSERT INTO `curtidas` (`id`, `usuario_id`, `post_id`, `data_curtida`) VALUES
(4, 3, 3, '2025-10-10 12:48:45'),
(5, 4, 4, '2025-10-10 12:51:58'),
(6, 4, 3, '2025-10-10 12:52:08'),
(7, 5, 5, '2025-10-10 14:13:07'),
(8, 5, 4, '2025-10-10 14:13:25'),
(9, 6, 7, '2025-10-10 14:21:23'),
(10, 6, 4, '2025-10-10 14:21:51'),
(11, 6, 3, '2025-10-10 14:21:55'),
(12, 7, 9, '2025-10-10 14:31:20'),
(13, 7, 8, '2025-10-10 14:31:22'),
(14, 7, 4, '2025-10-10 14:31:35'),
(15, 7, 5, '2025-10-10 14:31:50'),
(16, 3, 4, '2025-10-10 14:37:05'),
(17, 4, 11, '2025-10-10 14:37:24'),
(18, 4, 12, '2025-10-10 14:40:50'),
(19, 3, 12, '2025-10-10 14:41:38'),
(20, 4, 9, '2025-10-10 14:44:02'),
(21, 8, 15, '2025-10-10 14:48:40'),
(22, 8, 14, '2025-10-10 14:48:43'),
(23, 8, 13, '2025-10-10 14:48:46'),
(24, 8, 12, '2025-10-10 14:49:05'),
(25, 8, 4, '2025-10-10 14:49:09'),
(26, 8, 3, '2025-10-10 14:49:15'),
(27, 8, 16, '2025-10-10 14:50:07'),
(28, 7, 16, '2025-10-10 14:52:09'),
(29, 7, 15, '2025-10-10 14:52:32'),
(30, 7, 12, '2025-10-10 14:52:35'),
(31, 7, 14, '2025-10-10 14:52:37'),
(32, 4, 8, '2025-10-10 14:53:31'),
(33, 4, 5, '2025-10-10 15:20:50'),
(34, 5, 9, '2025-10-10 15:23:17'),
(35, 5, 12, '2025-10-10 15:23:35'),
(37, 5, 7, '2025-10-10 16:43:35'),
(41, 5, 17, '2025-10-10 16:45:13'),
(42, 3, 9, '2025-10-10 17:00:27'),
(45, 6, 13, '2025-10-10 17:36:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) NOT NULL,
  `remetente_id` int(11) NOT NULL,
  `destinatario_id` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp(),
  `lida` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `remetente_id`, `destinatario_id`, `mensagem`, `data_envio`, `lida`) VALUES
(3, 4, 3, 'mel', '2025-10-10 13:58:21', 1),
(4, 4, 3, 'Joao Marcos', '2025-10-10 14:06:56', 1),
(5, 5, 4, 'oi gatinho', '2025-10-10 14:13:59', 1),
(6, 4, 5, 'sai fora demonio', '2025-10-10 14:14:59', 1),
(7, 6, 5, '奥拉诺维尼亚', '2025-10-10 14:23:31', 1),
(8, 4, 3, 'eae', '2025-10-10 15:21:52', 1),
(9, 3, 4, 'eae', '2025-10-10 15:22:13', 1),
(10, 3, 7, 'sallvee', '2025-10-10 17:00:46', 1),
(11, 7, 5, ',ngfjfvk', '2025-10-10 17:21:48', 1),
(12, 5, 7, 'mgjfgd', '2025-10-10 17:22:35', 1),
(13, 4, 7, 'uga uga', '2025-10-10 17:30:48', 1),
(14, 4, 7, 'peitin hj?', '2025-10-10 17:30:57', 1),
(15, 7, 4, 'lgc', '2025-10-10 17:31:35', 0),
(16, 7, 6, 'pinchilin', '2025-10-10 17:35:57', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `conteudo` text NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `data_postagem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `usuario_id`, `conteudo`, `imagem`, `data_postagem`) VALUES
(3, 3, '????????', '68e9008425938.jpg', '2025-10-10 12:48:04'),
(4, 4, 'desse lado é mais engraçado mkkkkkkkkkkk', '68e9016bbecef.gif', '2025-10-10 12:51:55'),
(5, 5, 'ADORO ser legal e sombria', NULL, '2025-10-10 14:13:02'),
(6, 6, 'EUA desglaçado ', NULL, '2025-10-10 14:18:51'),
(7, 6, 'cool', '68e9165805569.gif', '2025-10-10 14:21:12'),
(8, 7, 'setup daora', '68e918766ba74.jpg', '2025-10-10 14:30:14'),
(9, 7, 'hoje foi peitin e costas', '68e918aa12077.jpg', '2025-10-10 14:31:06'),
(11, 3, 'meu amigo gente', '68e91a4f0f3c3.png', '2025-10-10 14:35:51'),
(12, 4, 'tryhard, kkkkkkkkkkkkk falo nd ', '68e91af08004e.jpg', '2025-10-10 14:40:48'),
(13, 8, 'BATMAN!!!\r\n', '68e91c877ee98.jpg', '2025-10-10 14:47:35'),
(14, 8, 'hahahaha ', '68e91c95b202d.webp', '2025-10-10 14:47:49'),
(15, 8, 'true', '68e91ca6a19c2.webp', '2025-10-10 14:48:06'),
(16, 8, 'carambolas', '68e91d17d483a.jpg', '2025-10-10 14:49:59'),
(17, 5, 'NA MARATONA!!!', '68e9256388a23.png', '2025-10-10 15:25:23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `seguidores`
--

CREATE TABLE `seguidores` (
  `id` int(11) NOT NULL,
  `seguidor_id` int(11) NOT NULL,
  `seguido_id` int(11) NOT NULL,
  `data_seguimento` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `seguidores`
--

INSERT INTO `seguidores` (`id`, `seguidor_id`, `seguido_id`, `data_seguimento`) VALUES
(3, 4, 3, '2025-10-10 13:56:54'),
(4, 5, 4, '2025-10-10 14:13:29'),
(5, 4, 5, '2025-10-10 14:14:26'),
(6, 6, 4, '2025-10-10 14:21:30'),
(7, 6, 3, '2025-10-10 14:21:35'),
(8, 6, 5, '2025-10-10 14:21:40'),
(9, 7, 3, '2025-10-10 14:31:28'),
(11, 7, 4, '2025-10-10 14:31:42'),
(12, 3, 4, '2025-10-10 14:36:22'),
(13, 3, 7, '2025-10-10 14:36:26'),
(14, 8, 4, '2025-10-10 14:48:50'),
(15, 8, 3, '2025-10-10 14:48:53'),
(16, 7, 8, '2025-10-10 14:52:01'),
(17, 4, 7, '2025-10-10 14:52:57'),
(18, 4, 8, '2025-10-10 15:21:04'),
(19, 5, 7, '2025-10-10 15:23:12'),
(20, 7, 5, '2025-10-10 17:21:10'),
(21, 7, 6, '2025-10-10 17:31:21'),
(22, 6, 7, '2025-10-10 17:36:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `avatar` varchar(255) DEFAULT 'default-avatar.jpg',
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `username`, `bio`, `avatar`, `data_criacao`) VALUES
(3, 'Samuel Lopes', 'samuel@gmail.com', '$2y$10$w6unRj3S2eYC3QQssiPMO.hbUf2OYJhbe9PnVBKfEtYZh0I0IGlWa', 'SamuelLopes244', 'os drake que manda', '68e91a6160cfa.jpg', '2025-10-10 12:44:55'),
(4, 'Thomas', 'thomas@gmail.com', '$2y$10$VxYI5kBmn0ZjWMYft160Q.az7BfXjW0opWmiFY5uglwn7KOZTZgvS', 'THOMASblack8z8', 'Onde os fracos não tem vez.', '68e922c3bc5ad.jpg', '2025-10-10 12:51:25'),
(5, 'wandinha', 'wandinha@gmail.com', '$2y$10$YO37f3nFKP05ixT3dLgRwO8lu3Zk8iJsoVVj2/2IIY9QkRv3rdGsq', 'wandão', 'I´M DANCE WITH MY HANDS ????', '68e91455a828c.jpg', '2025-10-10 14:11:20'),
(6, 'xigimpin', 'xigimpin@gmail.com', '$2y$10$sKQfdTZLYgD6hGGeLDhyi.2AOM8.3OIGm1Y7Nq4LZZhZMB/Uu.p1O', 'come_cachorro123', 'cacholo', '68e915ad8da95.jpg', '2025-10-10 14:18:02'),
(7, 'indio', 'indo@gmail.com', '$2y$10$FiuFTsXt4AzMbVLdigJ2/e95UzPO5MnoWyb6nvqYp/yRiVfyE/oP6', 'indio bombado emo', '', '68e9188fbd751.jpg', '2025-10-10 14:29:15'),
(8, 'memes', 'meme@gmail.com', '$2y$10$C0lUp0/CBTL5JhRcvX4yNunEj//9ayQNTRd0yfk0YRE3iV0FwmfH2', 'memessss', '', '68e91cbf595d1.jpg', '2025-10-10 14:45:50');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Índices para tabela `curtidas`
--
ALTER TABLE `curtidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_curtida` (`usuario_id`,`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Índices para tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remetente_id` (`remetente_id`),
  ADD KEY `destinatario_id` (`destinatario_id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices para tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_seguimento` (`seguidor_id`,`seguido_id`),
  ADD KEY `seguido_id` (`seguido_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `curtidas`
--
ALTER TABLE `curtidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `curtidas`
--
ALTER TABLE `curtidas`
  ADD CONSTRAINT `curtidas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `curtidas_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `mensagens`
--
ALTER TABLE `mensagens`
  ADD CONSTRAINT `mensagens_ibfk_1` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mensagens_ibfk_2` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `seguidores`
--
ALTER TABLE `seguidores`
  ADD CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`seguidor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `seguidores_ibfk_2` FOREIGN KEY (`seguido_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
