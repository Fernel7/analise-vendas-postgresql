create schema if not exists vendas_fernando;

CREATE TABLE if not exists vendas_fernando.clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_registro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE if not EXISTS vendas_fernando.produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco NUMERIC(10,2),
    estoque INTEGER
);


CREATE TABLE if not EXISTS vendas_fernando.pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INTEGER REFERENCES vendas_fernando.clientes(id),
    data_pedido DATE DEFAULT CURRENT_DATE,
    total NUMERIC(10,2)
);

CREATE TABLE if not EXISTS vendas_fernando.itens_pedido (
    id SERIAL PRIMARY KEY,
    id_pedido INTEGER REFERENCES vendas_fernando.pedidos(id),
    id_produto INTEGER REFERENCES vendas_fernando.produtos(id),
    quantidade INTEGER,
    preco_unitario NUMERIC(10,2)
);

