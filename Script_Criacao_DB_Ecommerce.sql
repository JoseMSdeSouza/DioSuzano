CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Tabela Zona_Frete (referenciada por Cliente)
CREATE TABLE Zona_Frete (
    idZona_Frete INT AUTO_INCREMENT PRIMARY KEY,
    descricao TINYTEXT,
    preco_frete VARCHAR(45)
);

-- Tabela Cliente (depende de Zona_Frete)
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    tipo VARCHAR(45),
    endereco VARCHAR(45),
    Zona_Frete_idZona_Frete INT,
    FOREIGN KEY (Zona_Frete_idZona_Frete) REFERENCES Zona_Frete(idZona_Frete)
);

-- Tabela Pedido (depende de Cliente)
CREATE TABLE Pedido (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE,
    status VARCHAR(50),
    endereco_entrega VARCHAR(255),
    valor_produtos FLOAT,
    valor_frete FLOAT,
    valor_pedido FLOAT,
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Tabela Pagamento (depende de Pedido)
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_pedido_id INT,
    tipo VARCHAR(45),
    detalhes VARCHAR(100),
    FOREIGN KEY (Pedido_pedido_id) REFERENCES Pedido(pedido_id)
);

-- Tabela Produto
CREATE TABLE Produto (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(45),
    preco FLOAT
);

-- Tabela Estoque
CREATE TABLE Estoque (
    idtable1 INT AUTO_INCREMENT PRIMARY KEY,
    localizacao VARCHAR(45),
    quantidade_disponivel VARCHAR(45)
);

-- Tabela Produto_Estoque (depende de Produto e Estoque)
CREATE TABLE Produto_Estoque (
    Produto_produto_id INT,
    Estoque_idtable1 INT,
    quantidade INT,
    PRIMARY KEY (Produto_produto_id, Estoque_idtable1),
    FOREIGN KEY (Produto_produto_id) REFERENCES Produto(produto_id),
    FOREIGN KEY (Estoque_idtable1) REFERENCES Estoque(idtable1)
);

-- Tabela Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    contato VARCHAR(45)
);

-- Tabela Estoque_Fornecedor (depende de Estoque e Fornecedor)
CREATE TABLE Estoque_Fornecedor (
    Fornecedor_idFornecedor INT,
    Estoque_idtable1 INT,
    PRIMARY KEY (Fornecedor_idFornecedor, Estoque_idtable1),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (Estoque_idtable1) REFERENCES Estoque(idtable1)
);

-- Tabela Fornecedor_Produto (depende de Fornecedor e Produto)
CREATE TABLE Fornecedor_Produto (
    Fornecedor_idFornecedor INT,
    Produto_produto_id INT,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_produto_id),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (Produto_produto_id) REFERENCES Produto(produto_id)
);

-- Tabela Terceiro_Vendedor
CREATE TABLE Terceiro_Vendedor (
    Vendedor_id INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(45),
    contato VARCHAR(45)
);

-- Tabela Terceiro_Vendedor_Produto (depende de Terceiro_Vendedor e Produto)
CREATE TABLE Terceiro_Vendedor_Produto (
    Terceiro_Vendedor_Vendedor_id INT,
    Produto_produto_id INT,
    quantidade INT,
    PRIMARY KEY (Terceiro_Vendedor_Vendedor_id, Produto_produto_id),
    FOREIGN KEY (Terceiro_Vendedor_Vendedor_id) REFERENCES Terceiro_Vendedor(Vendedor_id),
    FOREIGN KEY (Produto_produto_id) REFERENCES Produto(produto_id)
);

-- Tabela Entrega (depende de Pedido)
CREATE TABLE Entrega (
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    Pedido_pedido_id INT,
    status VARCHAR(45),
    codigo_rastreamento VARCHAR(45),
    FOREIGN KEY (Pedido_pedido_id) REFERENCES Pedido(pedido_id)
);

-- Tabela Pedido_Produto (depende de Pedido e Produto)
CREATE TABLE Pedido_Produto (
    Produto_produto_id INT,
    Pedido_pedido_id INT,
    quantidade VARCHAR(45),
    PRIMARY KEY (Produto_produto_id, Pedido_pedido_id),
    FOREIGN KEY (Produto_produto_id) REFERENCES Produto(produto_id),
    FOREIGN KEY (Pedido_pedido_id) REFERENCES Pedido(pedido_id)
);
