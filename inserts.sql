-------TABELA UNIDADE---------
INSERT INTO unidade(sigla, rua, numero, cep)
VALUES
('MTRZ AM', 'Rua das Flores', '123', '12345-678'),
('MTRZ SP', 'Avenida Paulista', '1000', '12345-678'),
('MTRZ MG', 'Rua Mineira', '666', '12345-678'),
('MTRZ RJ', 'Rua Copacabana', '500', '12345-678');

-------TABELA CLIENTE---------
INSERT INTO cliente(nome, rua, numero, cep)
VALUES
('João Silva', 'Rua A', '100', '12345-678'),
('Maria Santos', 'Av. B', '200', '12345-678'),
('Pedro Oliveira', 'Rua C', '300', '12345-678'),
('Ana Costa', 'Av. D', '400', '12345-678');

-------TABELA VENDEDOR---------
INSERT INTO vendedor(nome, comissao, id_unidade)
VALUES
('Carlos Lima', 5.0, 1),
('Fernanda Rocha', 7.5, 1),
('Ricardo Alves', 6.0, 2),
('Juliana Mendes', 8.0, 3);

-------TABELA FRETE---------
INSERT INTO frete(veiculo, prazo, motorista)
VALUES
('Moto', '1 dia', 'Roberto Dias'),
('Van', '3 dias', 'Antônio Silva'),
('Carro', '2 dias', 'Paulo Costa');

-------TABELA PRODUTO---------
INSERT INTO produto(nome, preco, fotoproduto)
VALUES
('Skate Completo Professional', 299.90, 'N/A'),
('Truck de Alumínio', 89.90, 'N/A'),
('Roda 54mm 99A', 129.90, 'roda_54mm.jpg'),
('Lixa Grizzly', 39.90, 'N/A'),
('Rolamento Bones Reds', 79.90, 'rolamento_bones.jpg');

-------TABELA PEDIDO---------
INSERT INTO pedido(datapedido, dataentrega, status, valor, id_cliente, id_vendedor, id_frete)
VALUES
('2024-01-15', '2024-01-17', 'Entregue', 529.70, 1, 1, 1),
('2024-01-16', '2024-01-19', 'Entregue', 169.80, 2, 2, 2),
('2024-01-18', '2024-01-20', 'Processando', 299.90, 3, 1, 3);

-------TABELA ITEMPEDIDO---------
INSERT INTO itempedido(id_pedido, id_produto, valorunitario, quantidade, observacao)
VALUES
(1, 1, 299.90, 1, 'Skate completo para iniciante'),
(1, 4, 39.90, 1, 'Lixa anti-derrapante'),
(2, 2, 89.90, 1, 'Truck profissional'),
(2, 5, 79.90, 1, 'Rolamento de alta performance'),
(3, 1, 299.90, 1, NULL);

-------TABELA ESTOQUE---------
INSERT INTO estoque(quantidade, id_unidade, id_produto)
VALUES
(50, 1, 1),
(30, 1, 2),
(100, 1, 3),
(80, 2, 1),
(40, 2, 4),
(60, 3, 5);

-------TABELA METAVENDEDOR---------
INSERT INTO metavendedor(meta, id_vendedor, id_produto)
VALUES
(1000.00, 1, 1),
(500.00, 1, 2),
(800.00, 2, 3),
(300.00, 3, 4),
(600.00, 4, 5);
