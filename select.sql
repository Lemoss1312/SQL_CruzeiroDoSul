------Pedidos com valor acima de R$ 200, ordenados por valor decrescente

SELECT p.id_pedido, c.nome as cliente, v.nome as vendedor, p.valor
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN vendedor v ON p.id_vendedor = v.id_vendedor
WHERE p.valor > 200.00
ORDER BY p.valor DESC;



-------Produtos em estoque na unidade matriz com quantidade menor que 60

SELECT pr.nome, e.quantidade, u.sigla
FROM estoque e
JOIN produto pr ON e.id_produto = pr.id_produto
JOIN unidade u ON e.id_unidade = u.id_unidade
WHERE u.sigla LIKE 'MTRZ%'
ORDER BY e.quantidade ASC;


-----------Vendedores e suas metas por produto (com JOIN triplo)

SELECT v.nome as vendedor, pr.nome as produto, m.meta
FROM metavendedor m
JOIN vendedor v ON m.id_vendedor = v.id_vendedor
JOIN produto pr ON m.id_produto = pr.id_produto
ORDER BY v.nome, m.meta DESC;



----------Top 2 produtos mais caros

SELECT nome, preco
FROM produto
ORDER BY preco DESC
LIMIT 2;



----------Pedidos com detalhes completos (cliente, vendedor, frete)

SELECT p.id_pedido, p.datapedido, c.nome as cliente, 
       v.nome as vendedor, f.veiculo, f.motorista, p.status
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN vendedor v ON p.id_vendedor = v.id_vendedor
JOIN frete f ON p.id_frete = f.id_frete
WHERE p.status = 'Entregue';

