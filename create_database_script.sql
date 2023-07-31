-- Criação do Banco de Dados para Cenário de E-Commerce

CREATE DATABASE IF NOT EXISTS projeto_oficina;
USE projeto_oficina;

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereço VARCHAR(200), -- Atributo Composto
    Telefone VARCHAR(15)
);

-- Criação da tabela Veículo
CREATE TABLE Veículo (
    VeículoID INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10) UNIQUE,
    Modelo VARCHAR(50),
    Ano INT
);

-- Criação da tabela Serviço
CREATE TABLE Serviço (
    ServiçoID INT PRIMARY KEY AUTO_INCREMENT,
    Descrição VARCHAR(200),
    Preço DECIMAL(10, 2)
);

-- Criação da tabela OrdemDeServiço
CREATE TABLE OrdemDeServiço (
    OrdemID INT PRIMARY KEY AUTO_INCREMENT,
    DataServico DATE,
    ClienteID INT,
    VeículoID INT,
    Serviços VARCHAR(100),
    statusOrdem ENUM('Em andamento', 'Finalizada', 'Paga'), 
    TipoPagamento ENUM('Dinheiro', 'Cartão', 'Dois Cartões'), 
    Parcelamento ENUM('A vista', 'Parcelado') 
);
