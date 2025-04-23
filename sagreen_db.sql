
CREATE DATABASE IF NOT EXISTS SAGreenCash;
USE SAGreenCash;

-- Tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de despesas
CREATE TABLE despesas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    categoria VARCHAR(100),
    descricao TEXT,
    valor DECIMAL(10, 2),
    data DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabela de receitas
CREATE TABLE receitas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    categoria VARCHAR(100),
    descricao TEXT,
    valor DECIMAL(10, 2),
    data DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabela de planos
CREATE TABLE planos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nome VARCHAR(100),
    limite DECIMAL(10, 2),
    ativo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabela de configurações
CREATE TABLE configuracoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    tema VARCHAR(50),
    notificacoes BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
