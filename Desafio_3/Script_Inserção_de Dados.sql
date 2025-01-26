-- Inserindo dados na tabela Zona_Frete
INSERT INTO Zona_Frete (descricao, preco_frete) VALUES
('Região Norte', '20.00'),
('Região Sul', '15.00'),
('Região Sudeste', '18.50'),
('Região Centro-Oeste', '22.00'),
('Região Nordeste', '19.00'),
('Frete Expresso', '35.00'),
('Frete Econômico', '10.00'),
('Entrega Local', '5.00'),
('Entrega Internacional', '50.00'),
('Frete Grátis', '0.00');

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (nome, tipo, endereco, Zona_Frete_idZona_Frete) VALUES
('João Silva', 'Pessoa Física', 'Rua 1, Número 100', 1),
('Maria Oliveira', 'Pessoa Física', 'Rua 2, Número 200', 2),
('Empresa XYZ', 'Pessoa Jurídica', 'Av. Comercial, Número 300', 3),
('Carlos Santos', 'Pessoa Física', 'Rua 4, Número 400', 4),
('Ana Costa', 'Pessoa Física', 'Rua 5, Número 500', 5),
('Roberto Lima', 'Pessoa Física', 'Rua 6, Número 600', 6),
('Sandra Melo', 'Pessoa Física', 'Rua 7, Número 700', 7),
('Eduardo Teixeira', 'Pessoa Física', 'Rua 8, Número 800', 8),
('Beatriz Souza', 'Pessoa Física', 'Rua 9, Número 900', 9),
('Lucas Fernandes', 'Pessoa Física', 'Rua 10, Número 1000', 10);

-- Inserindo dados na tabela Produto
INSERT INTO Produto (descricao, preco) VALUES
('Notebook', 3000.00),
('Smartphone', 1500.00),
('Tablet', 1000.00),
('Monitor', 800.00),
('Teclado', 100.00),
('Mouse', 50.00),
('Impressora', 600.00),
('Fone de Ouvido', 200.00),
('Câmera', 1200.00),
('Roteador', 250.00);

-- Inserindo dados na tabela Estoque
INSERT INTO Estoque (localizacao, quantidade_disponivel) VALUES
('Depósito A', '50'),
('Depósito B', '100'),
('Depósito C', '75'),
('Depósito D', '120'),
('Depósito E', '30'),
('Depósito F', '60'),
('Depósito G', '200'),
('Depósito H', '90'),
('Depósito I', '40'),
('Depósito J', '25');

-- Inserindo dados na tabela Produto_Estoque
INSERT INTO Produto_Estoque (Produto_produto_id, Estoque_idtable1, quantidade) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 8),
(4, 4, 20),
(5, 5, 25),
(6, 6, 5),
(7, 7, 30),
(8, 8, 18),
(9, 9, 12),
(10, 10, 7);

-- Inserindo dados na tabela Fornecedor
INSERT INTO Fornecedor (nome, contato) VALUES
('Fornecedor A', 'contatoA@fornecedor.com'),
('Fornecedor B', 'contatoB@fornecedor.com'),
('Fornecedor C', 'contatoC@fornecedor.com'),
('Fornecedor D', 'contatoD@fornecedor.com'),
('Fornecedor E', 'contatoE@fornecedor.com'),
('Fornecedor F', 'contatoF@fornecedor.com'),
('Fornecedor G', 'contatoG@fornecedor.com'),
('Fornecedor H', 'contatoH@fornecedor.com'),
('Fornecedor I', 'contatoI@fornecedor.com'),
('Fornecedor J', 'contatoJ@fornecedor.com');

-- Inserindo dados na tabela Estoque_Fornecedor
INSERT INTO Estoque_Fornecedor (Fornecedor_idFornecedor, Estoque_idtable1) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserindo dados na tabela Fornecedor_Produto
INSERT INTO Fornecedor_Produto (Fornecedor_idFornecedor, Produto_produto_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserindo dados na tabela Terceiro_Vendedor
INSERT INTO Terceiro_Vendedor (razao_social, contato) VALUES
('Vendedor A', 'vendedorA@loja.com'),
('Vendedor B', 'vendedorB@loja.com'),
('Vendedor C', 'vendedorC@loja.com'),
('Vendedor D', 'vendedorD@loja.com'),
('Vendedor E', 'vendedorE@loja.com'),
('Vendedor F', 'vendedorF@loja.com'),
('Vendedor G', 'vendedorG@loja.com'),
('Vendedor H', 'vendedorH@loja.com'),
('Vendedor I', 'vendedorI@loja.com'),
('Vendedor J', 'vendedorJ@loja.com');

-- Inserindo dados na tabela Terceiro_Vendedor_Produto
INSERT INTO Terceiro_Vendedor_Produto (Terceiro_Vendedor_Vendedor_id, Produto_produto_id, quantidade) VALUES
(1, 1, 5),
(2, 2, 10),
(3, 3, 15),
(4, 4, 8),
(5, 5, 12),
(6, 6, 20),
(7, 7, 25),
(8, 8, 7),
(9, 9, 18),
(10, 10, 9);

-- Inserindo dados na tabela Pedido
INSERT INTO Pedido (data, status, endereco_entrega, valor_produtos, valor_frete, valor_pedido, Cliente_idCliente) VALUES
('2025-01-01', 'Pendente', 'Rua A, 123', 3000.00, 20.00, 3020.00, 1),
('2025-01-02', 'Entregue', 'Rua B, 456', 1500.00, 15.00, 1515.00, 2),
('2025-01-03', 'Cancelado', 'Rua C, 789', 1000.00, 18.50, 1018.50, 3),
('2025-01-04', 'Pendente', 'Rua D, 101', 800.00, 22.00, 822.00, 4),
('2025-01-05', 'Entregue', 'Rua E, 202', 600.00, 19.00, 619.00, 5),
('2025-01-06', 'Cancelado', 'Rua F, 303', 1200.00, 35.00, 1235.00, 6),
('2025-01-07', 'Entregue', 'Rua G, 404', 250.00, 10.00, 260.00, 7),
('2025-01-08', 'Pendente', 'Rua H, 505', 100.00, 5.00, 105.00, 8),
('2025-01-09', 'Cancelado', 'Rua I, 606', 200.00, 50.00, 250.00, 9),
('2025-01-10', 'Entregue', 'Rua J, 707', 50.00, 0.00, 50.00, 10);

-- Inserindo dados na tabela Entrega
INSERT INTO Entrega (Pedido_pedido_id, status, codigo_rastreamento) VALUES
(1, 'Em transporte', 'RT123456BR'),
(2, 'Entregue', 'RT123457BR'),
(3, 'Cancelado', 'RT123458BR'),
(4, 'Em transporte', 'RT123459BR'),
(5, 'Entregue', 'RT123460BR'),
(6, 'Cancelado', 'RT123461BR'),
(7, 'Entregue', 'RT123462BR'),
(8, 'Em transporte', 'RT123463BR'),
(9, 'Cancelado', 'RT123464BR'),
(10, 'Entregue', 'RT123465BR');

-- Inserindo dados na tabela Pedido_Produto
INSERT INTO Pedido_Produto (Produto_produto_id, Pedido_pedido_id, quantidade) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1),
(6, 6, 1),
(7, 7, 3),
(8, 8, 2),
(9, 9, 1),
(10, 10, 2);

-- Inserindo dados na tabela Pagamento
INSERT INTO Pagamento (Pedido_pedido_id, tipo, detalhes) VALUES
(1, 'Cartão de Crédito', 'Pagamento via cartão de crédito'),
(2, 'Boleto', 'Pagamento via boleto bancário'),
(3, 'Pix', 'Pagamento via transferência bancária'),
(4, 'Cartão de Crédito', 'Pagamento via cartão de crédito'),
(5, 'Boleto', 'Pagamento via boleto bancário'),
(6, 'Pix', 'Pagamento via transferência bancária'),
(7, 'Cartão de Crédito', 'Pagamento via cartão de crédito'),
(8, 'Boleto', 'Pagamento via boleto bancário'),
(9, 'Pix', 'Pagamento via transferência bancária'),
(10, 'Cartão de Crédito', 'Pagamento via cartão de crédito');
