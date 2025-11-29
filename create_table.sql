CREATE TABLE cliente(
    id_cliente SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    rua TEXT NOT NULL,
    numero TEXT,
    cep TEXT NOT NULL
);

CREATE TABLE unidade(
    id_unidade SERIAL PRIMARY KEY,
    sigla TEXT NOT NULL,
    rua TEXT NOT NULL,
    numero TEXT,
    cep TEXT NOT NULL
);

CREATE TABLE vendedor(
    id_vendedor SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    comissao REAL NOT NULL,
    id_unidade INTEGER NOT NULL,
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade)
);

CREATE TABLE frete(
    id_frete SERIAL PRIMARY KEY,
    veiculo TEXT NOT NULL,
    prazo TEXT NOT NULL,
    motorista TEXT NOT NULL
);

CREATE TABLE pedido(
    id_pedido SERIAL PRIMARY KEY,
    datapedido TEXT NOT NULL,
    dataentrega TEXT NOT NULL,
    status TEXT NOT NULL,
    valor REAL,
    id_cliente INTEGER NOT NULL,
    id_vendedor INTEGER NOT NULL,
    id_frete INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor),
    FOREIGN KEY (id_frete) REFERENCES frete(id_frete)
);

CREATE TABLE produto(
    id_produto SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    fotoproduto TEXT
);

CREATE TABLE itempedido(
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    valorunitario REAL NOT NULL,
    quantidade TEXT NOT NULL,
    observacao TEXT,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE estoque(
    quantidade INTEGER NOT NULL,
    id_unidade INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    PRIMARY KEY (id_unidade, id_produto),
    FOREIGN KEY (id_unidade) REFERENCES unidade(id_unidade),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE metavendedor (
    meta REAL NOT NULL,
    id_vendedor INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    PRIMARY KEY (id_produto, id_vendedor),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

