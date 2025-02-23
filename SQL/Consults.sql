--agrupa os pedidos por mês e calcula o total de vendas para cada mês.
SELECT DATE_TRUNC('month', data_pedido) AS mes, SUM(total) AS total_vendas
FROM vendas_fernando.pedidos
GROUP BY mes
ORDER BY mes;

--ordena os produtos do mais vendido para o menos vendido.
SELECT p.nome, SUM(ip.quantidade) AS total_vendido
FROM vendas_fernando.itens_pedido ip
LEFT JOIN vendas_fernando.produtos p ON ip.id_produto = p.id
GROUP BY p.nome
ORDER BY total_vendido DESC;

--ordena os clientes pelo número de pedidos, do maior para o menor.
SELECT c.nome, COUNT(p.id) AS num_pedidos
FROM vendas_fernando.clientes c
LEFT JOIN vendas_fernando.pedidos p ON c.id = p.id_cliente
GROUP BY c.nome
ORDER BY num_pedidos DESC;

--identificar os clientes que tiveram vendas acima da média geral.
WITH vendas_por_cliente AS (
  SELECT id_cliente, SUM(total) AS total_cliente
  FROM vendas_fernando.pedidos
  GROUP BY id_cliente
),
media_vendas AS (
  SELECT AVG(total_cliente) AS media_total FROM vendas_por_cliente
)
SELECT v.id_cliente, v.total_cliente
FROM vendas_por_cliente v, media_vendas m
WHERE v.total_cliente > m.media_total;