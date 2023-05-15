CREATE DATABASE at_consulta;
use at_consulta;
create table ESTADO (

    cod_estado varchar (10),

    nome varchar (100) not null,

    PRIMARY KEY (cod_estado));
create table CLIENTE (

    id_cliente SMALLINT AUTO_INCREMENT,

    nome varchar (100) not null,

    endereço varchar (100),
   
    cidade varchar (100),
   
    cep int,

    telefone int,
   
    desconto decimal (8,2),

    cod_estado varchar (10),

    PRIMARY KEY (id_cliente),
   
FOREIGN key (cod_estado) REFERENCES ESTADO(cod_estado));

create table UE_PRODUTO  (

    cod_ue_produto varchar(10),

    descrição varchar (100),

    PRIMARY KEY (cod_ue_produto));
   
create table PRODUTO (

    cod_produto int,

    nome varchar (100) not null,
   
    preco decimal (8,2),
   
    cod_ue_produto varchar(10),

    PRIMARY KEY (cod_produto),
    FOREIGN key (cod_ue_produto) REFERENCES UE_PRODUTO(cod_ue_produto));
   
create table PEDIDO (

    id_pedido SMALLINT AUTO_INCREMENT,

    tipo varchar (100),
   
    id_cliente SMALLINT,
   
    data_entrada date,
   
    valor_total decimal (8,2),
   
    desconto decimal (8,2),
   
    data_embarque date,

    PRIMARY KEY (id_pedido),
    FOREIGN key (id_cliente) REFERENCES CLIENTE(id_cliente));
   
create table ITEM (

    id_pedido SMALLINT,

    cod_produto int,
   
    quantidade int,
   
    valor_unitario decimal (8,2),
   
    valor_total decimal (8,2),

    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido),
    FOREIGN key (cod_produto) REFERENCES PRODUTO(cod_produto));
   
insert into ESTADO (cod_estado, nome) VALUES ('PB', 'Paraiba');
insert into ESTADO (cod_estado, nome) VALUES ('PE', 'Pernanbuco');
insert into ESTADO (cod_estado, nome) VALUES ('BA', 'Bahia');
insert into ESTADO (cod_estado, nome) VALUES ('RJ', 'Rio de Janeiro');
insert into ESTADO (cod_estado, nome) VALUES ('SP', 'São Paulo');
insert into ESTADO (cod_estado, nome) VALUES ('AC', 'Acre');

insert into CLIENTE(nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES ('Jonatas Cruz', 'Rua Morise de Miranda Gusmão', 'João Pessoa', 855744, 996167476, 2.50, 'PB');
insert into CLIENTE(nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES ('João Cruz', 'Rua Elias Cavalcante de Alburqueque', 'Salvador', 855744, 988331420, 1.50, 'BA');
insert into CLIENTE(nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES ('João Pedro', 'Av da fraternidade', 'Rio de Janeiro', 855756, 988651527, 3.50, 'PE');
insert into CLIENTE(id_cliente,nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES (9,'Rebeca Raily', 'Rua São João', 'João Pessoa', 855756, 987851957, 1.50, 'PB');
insert into CLIENTE(nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES ('Maria de fatima', 'Rua Indio 2', 'Manaus', 855756, 957, 1.50, 'AC');
insert into CLIENTE(nome, endereço, cidade, cep, telefone,desconto, cod_estado) VALUES ('Ana Maria', 'Av Epitacio Pessoa', 'João Pessoa', 855756, 957, 1.50, 'PB');

insert into UE_PRODUTO(cod_ue_produto, descrição) VALUES ('KG' ,'QUILOGRAMA');
insert into UE_PRODUTO(cod_ue_produto, descrição) VALUES ('UM','UM');
insert into UE_PRODUTO(cod_ue_produto, descrição) VALUES ('MG','MILIGRAMA');
insert into UE_PRODUTO(cod_ue_produto, descrição) VALUES ('L','LITRO');

insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (1,'Computador i3', 2000, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (2,'Computador i5', 3000, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (3,'Computador i7', 4000, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (4,'Computador Gamer', 7000, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (5,'Monitor LG', 1000, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (6,'Teclado logitech', 100, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (7,'Teclado Multilaser', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (8,'peclado Multilaser', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (9,'panclado Multilaser', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (10,'Mouse Multilaser', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (11,'Masadoni', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (12,'Moacars', 10, 'KG');
insert into PRODUTO (cod_produto, nome, preco, cod_ue_produto) VALUES (13,'Monitor a_p', 10, 'KG');

insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('Pix', 1,'2012/03/24', 2000, 2.50, '2012/03/25');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('cartão', 2,'2023/03/24', 7000, 1.50, '2023/03/25');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('pix', 2,'2020/04/08', 7000, 1.50, '2020/04/09');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('debito', 3,'2023/03/24', 7000, 3.50, '2023/03/25');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('debito', 3,'2023/03/24', 258, 3.50, '2023/03/25');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('Pix', 9,'2012/03/24', 2000, 1.50, '2012/03/25');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('Pix', 9,'2019/06/23', 10, 1.50, '2019/06/27');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('Pix', 9,'2019/06/23', 35, 1.50, '2019/06/27');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('Pix', 9,'2019/06/23', 100, 1.50, '2019/06/27');
insert into PEDIDO (tipo, id_cliente, data_entrada, valor_total, desconto, data_embarque) VALUES ('cartão', 9,'2012/03/24', 20, 1.50, '2012/03/25');


insert into ITEM (id_pedido, cod_produto, quantidade, valor_unitario, valor_total) VALUES (1, 1, 1, 2000, 2000);
insert into ITEM (id_pedido, cod_produto, quantidade, valor_unitario, valor_total) VALUES (2, 4, 1, 7000, 7000);
insert into ITEM (id_pedido, cod_produto, quantidade, valor_unitario, valor_total) VALUES (3, 4, 1, 7000, 7000);

select * from CLIENTE;
select nome from PRODUTO;
select cidade from CLIENTE;
select * from PEDIDO WHERE id_cliente = 9 and valor_total > 50;
select * from PEDIDO WHERE valor_total < 100 or valor_total > 500;
select * from PEDIDO WHERE data_entrada = '2020/04/08';
select * from PEDIDO WHERE data_entrada = '2019/06/23' and valor_total BETWEEN 20 and 50;
select * from CLIENTE WHERE cod_estado NOT BETWEEN 5 and 25;
select * from PRODUTO WHERE nome LIKE 'P%';
select * from PRODUTO WHERE nome LIKE '%an%';
select * from PRODUTO WHERE nome LIKE 'C%' or nome LIKE 'F%' or nome LIKE 'M%';
select * from PRODUTO WHERE nome LIKE '________' and nome LIKE 'ma______';
select * from PRODUTO WHERE nome LIKE '_______' and nome LIKE '__ACA__';
select * from PRODUTO WHERE nome LIKE '%a_p%';
select * from CLIENTE WHERE cod_estado BETWEEN 'PB' AND 'PE';
select * from CLIENTE WHERE cod_estado NOT BETWEEN 'PB' AND 'PE';
select * from PRODUTO WHERE cod_ue_produto BETWEEN 'KG' AND 'UM' AND preco > 10;
select * from PRODUTO WHERE preco < 5 AND preco is null;
SELECT nome AS 'Nome', telefone AS 'Telefone'
FROM CLIENTE
WHERE id_cliente < 10;
SELECT cod_produto, nome, preco, (preco * 1.3) AS 'preco com aumento'
FROM PRODUTO;
select cod_produto AS 'codigo do produto', nome AS 'Nome', preco AS 'Preço', cod_ue_produto AS 'Peso' from PRODUTO order by preco desc;
select * from PRODUTO order by nome asc, preco desc;
SELECT COUNT(*) AS Quantidade FROM PEDIDO WHERE id_cliente = 5;


