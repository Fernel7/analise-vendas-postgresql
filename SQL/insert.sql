INSERT INTO vendas_fernando.clientes (nome, email, data_registro) VALUES
('João Silva', 'joao.silva@example.com', '2023-01-15'),
('Maria Oliveira', 'maria.oliveira@example.com', '2023-03-22'),
('Carlos Souza', 'carlos.souza@example.com', '2023-05-10');

INSERT INTO vendas_fernando.produtos (nome, categoria, preco, estoque) VALUES
('Notebook', 'Eletrônicos', 3500.00, 10),
('Smartphone', 'Eletrônicos', 1500.00, 20),
('Câmera Digital', 'Eletrônicos', 1200.00, 5);

INSERT INTO vendas_fernando.pedidos (id_cliente, data_pedido, total) VALUES
(1, '2023-06-15', 5000.00),
(2, '2023-06-16', 1500.00),
(3, '2023-06-17', 1200.00);

INSERT INTO vendas_fernando.itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 2, 1, 1500.00),
(2, 2, 1, 1500.00),
(3, 3, 1, 1200.00);