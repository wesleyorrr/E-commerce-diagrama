-- criação do  banco de dados E-commerce 
create database ecommerce;
use ecommerce;
-- criar tabela cliente
create table client(
idClient int auto_increment primary key,
Fname varchar(30),
Minit char(3),
Lname varchar(20),
CPF char(11) not null,
Address varchar(30),
constraint unique_cpf_client unique(CPF)
);
-- criar tabela produto
create table product(
idProduct int auto_increment primary key,
Pname varchar(30),
classification_kids bool default false,
category enum('Eletronico','Vestimenta','Brinquedos','Alimentos','Moveis') not null,
avaliação float default 0,
Address varchar(30),
constraint unique_cpf_client unique(CPF)
);

-- criar tabela pedido

create table pedido(idPedido int auto_increment primary key);