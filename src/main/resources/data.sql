


CREATE TABLE categoria (
                           codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
                           nome VARCHAR(50) NOT NULL
) ;

INSERT INTO categoria (nome) values ('Tecnologia');
INSERT INTO categoria (nome) values ('Acessórios para veículos');
INSERT INTO categoria (nome) values ('Esporte e Lazer');
INSERT INTO categoria (nome) values ('Casa e Eletrodomésticos');
INSERT INTO categoria (nome) values ('Joias e Relógios');


CREATE TABLE produto (
                         codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
                         descricao VARCHAR(100) NOT NULL,
                         quantidade INTEGER NOT NULL,
                         preco_curto DECIMAL(10,2) NOT NULL,
                         preco_venda DECIMAL(10,2) NOT NULL,
                         observacao VARCHAR(500),
                         codigo_categoria BIGINT NOT NULL,
                         FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo)
) ;

INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('TV Philco 32"', 10, 500, 870, 'Tv 32 Polegadas Philco Led Hd Conv. Digital Ptv32b51d', 1);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('AOC Smart TV 43"', 10, 1250, 1623.20, 'Smart Tv Led 43 Polegadas Aoc Le43s5970s Full Hd Wi-fi 2 Usb', 1);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Sansung HD TV 32"', 10, 729, 1073.36, 'Tv Led 32 Samsung Un32n4000', 1);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Celular Moto G7 Plus', 25, 1200.50, 1899, 'Celular Motorola Moto G7 Plus Indigo 64gb 4gb Ram Xt1965', 1);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Smartphone Samsung Galaxy S9', 15, 2750, 3299, 'Smartphone Samsung Galaxy S9+ Tela 6.2 128gb 6gb De Ram', 1);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Piscina', 10, 500, 700, 'Piscina 10 mil listros', 3);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Piscina', 10, 600, 800, 'Piscina 20 mil listros', 3);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Piscina', 10, 700, 900, 'Piscina 30 mil listros', 3);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Liquidificador 12 Veloc. 1000w', 30, 70.90, 139.90, 'Liquidificador 12 Veloc. 1000w Turbo Premium Mondial 110v', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Fogão Elétrico De Mesa', 8, 60.80, 106.80, 'Fogão Elétrico De Mesa 2 Pratos 2000 Watts Agrato 220v', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Fogão 4 Bocas', 20, 280.50, 424.86, 'Fogão 4 Bocas Atlas Mônaco Com Acendimento Automático', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Fogão 5 Bocas', 30, 864, 1164.94, 'Fogão 5 Bocas Tripla Chama Automático Agile Glass Inox Atlas', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Cafeteira Expresso', 22, 315.90, 415.90, 'Cafeteira Expresso 15 Bar Coffee Cream 110v Mondial', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Geladeira / Refrigerador Electrolux', 50, 1000, 1370, 'Geladeira / Refrigerador Electrolux 240 Litros 1 Porta Class', 4);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Relógio Technos Masculino Dourado', 35, 180, 249, 'Relógio Technos Masculino Dourado Performer - 2115laa/4c', 5);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Relógio Nibosi Cronógrafo', 50, 100, 160.50, 'Relógio Nibosi Cronógrafo Fr Grátis Promoção Carnaval', 5);
INSERT INTO produto (descricao, quantidade, preco_curto, preco_venda, observacao, codigo_categoria) values ('Anel Maciço Ouro 18k', 60, 210, 299.90, 'Anel Solitario Maciço Ouro 18k 750 7mm Escolha A Cor', 5);


CREATE TABLE cliente (
                         codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
                         nome VARCHAR(50) NOT NULL,
                         telefone VARCHAR(20) NOT NULL,
                         ativo BOOLEAN NOT NULL,
                         logradouro VARCHAR(30),
                         numero INTEGER,
                         complemento VARCHAR(30),
                         bairro VARCHAR(30),
                         cep VARCHAR(30),
                         cidade VARCHAR(30),
                         estado VARCHAR(30)
);

INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('João Silva', '(34) 99261-4270', true, 'Rua do Abacaxi', '10', null, 'Brasil', '38.400-122', 'Uberlândia', 'MG');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Maria Rita', '(34) 99261-4270', true, 'Rua do Sabiá', '110', 'Apto 101', 'Colina', '11.400-122', 'Ribeirão Preto', 'SP');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Pedro Santos', '(34) 99261-4270', true, 'Rua da Bateria', '23', null, 'Morumbi', '54.212-122', 'Goiânia', 'GO');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Ricardo Pereira', '(34) 99261-4270', true, 'Rua do Motorista', '123', 'Apto 302', 'Aparecida', '38.400-122', 'Salvador', 'BA');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Josué Mariano', '(34) 99261-4270', true, 'Av Rio Branco', '321', null, 'Jardins', '56.400-122', 'Natal', 'RN');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Pedro Barbosa', '(34) 99261-4270', true, 'Av Brasil', '100', null, 'Tubalina', '77.400-123', 'Porto Alegre', 'RS');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Henrique Medeiros', '(34) 99261-4270', true, 'Rua do Sapo', '1120', 'Apto 201', 'Centro', '12.400-124', 'Rio de Janeiro', 'RJ');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Carlos Santana', '(34) 99261-4270', true, 'Rua da Manga', '433', null, 'Centro', '31.400-124', 'Belo Horizonte', 'MG');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Leonardo Oliveira', '(34) 99261-4270', true, 'Rua do Músico', '566', null, 'Segismundo Pereira', '38.400-005', 'Uberlândia', 'MG');
INSERT INTO cliente (nome, telefone, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Isabela Martins', '(34) 99261-4270', true, 'Rua da Terra', '1233', 'Apto 10', 'Vigilato', '99.400-125', 'Manaus', 'AM');


CREATE TABLE venda (
                       codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
                       data DATE NOT NULL,
                       codigo_cliente BIGINT NOT NULL,
                       FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo)
);

INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-02', 1);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-08', 1);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-25', 1);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-12', 2);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-12', 3);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-01-30', 3);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-02', 4);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-02', 5);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-02', 7);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-09', 7);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-12', 8);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-15', 9);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-17', 9);
INSERT INTO venda(data, codigo_cliente) VALUES ('2021-02-17', 10);


CREATE TABLE item_venda (
                            codigo BIGINT PRIMARY KEY AUTO_INCREMENT,
                            codigo_produto BIGINT NOT NULL,
                            codigo_venda BIGINT NOT NULL,
                            quantidade INTEGER NOT NULL,
                            preco_vendido DECIMAL(10,2) NOT NULL,
                            FOREIGN KEY (codigo_produto) REFERENCES produto(codigo),
                            FOREIGN KEY (codigo_venda) REFERENCES venda(codigo)
);

-- INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (1, 1, 1, 870);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (15, 1, 1, 249);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (2, 2, 1, 1623.20);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (3, 3, 1, 1073.36);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (4, 4, 1, 1899);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (5, 5, 1, 3300);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (6, 6, 1, 700);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (7, 7, 1, 800);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (8, 8, 1, 900);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (9, 9, 3, 419.70);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (16, 9, 1, 160.50);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (10, 10, 1, 106.80);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (17, 10, 1, 299.90);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (11, 11, 1, 424.86);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (12, 12, 1, 1164.94);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (13, 13, 1, 415.90);
INSERT INTO item_venda(codigo_produto, codigo_venda, quantidade, preco_vendido) VALUES (14, 14, 1, 1370);



