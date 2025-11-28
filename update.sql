--------------AUMENTAR PREÇO EM 10%
UPDATE produto 
SET preco = preco * 1.10;

-------------ALTERAR PEDIDO PARA "ENTREGUE"
UPDATE pedido 
SET status = 'Entregue' 
WHERE id_pedido = 3;

------------AUMENTAR COMISSÃO
UPDATE vendedor
SET comissao = comissao + 1.0
WHERE id_unidade IN (
    SELECT id_unidade FROM unidade WHERE sigla LIKE 'MTRZ%'
);

--------------REMOVER PRODUTO

DELETE FROM itempedido WHERE id_produto = 5;
DELETE FROM estoque WHERE id_produto = 5;
DELETE FROM metavendedor WHERE id_produto = 5;
DELETE FROM produto WHERE id_produto = 5;


------------REMOVER CANCELADOS
DELETE FROM pedido 
WHERE status = 'Cancelado';

-------------REMOVER ESTOQUE ZERADO
DELETE FROM estoque 
WHERE quantidade = 0;