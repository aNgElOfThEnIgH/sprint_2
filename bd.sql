-- Expressçao SQL para criar banco de dados
CREATE DATABASE espacopets;

-- Expressão SQL para informar à IDE que este é o banco que estará em uso.
USE espacopets;

-- Expressão SQL para criar a tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criando a tabela do Dono do Animal (Clientes)
create table Clientes(
	CodCliente int not null primary key auto_increment,
	Cliente varchar(100),
    Telefone varchar(100),
    QtdAnimal int);

create unique index IDX_Cliente
	on Clientes(Cliente);

-- Criando a tabela do animal
create table Animal(
	CodAnimal int not null primary key auto_increment,
    CodCliente int not null,
    Nome varchar(100),
    Raça varchar(100),
    RGA varchar(50),
    Observação text);

-- Adicionando Chave Estrangeira (Relacionamento entre as duas tabelas)    
alter table Animal add constraint FK_Clientes_Animal
	foreign key(CodCliente)references Clientes(CodCliente);

-- Expressão SQL para cadastrar um usuário
INSERT INTO usuarios (usuario, senha) VALUES ('admin', MD5('admin123'));