-- Inserção de dados na tabela 'clientes'
INSERT INTO clientes (codigo_cliente, nome, endereco, telefone) VALUES
(1, 'João Silva', 'Rua A, 123', '(11) 98765-4321'),
(2, 'Maria Oliveira', 'Rua B, 456', '(11) 91234-5678'),
(3, 'Carlos Souza', 'Rua C, 789', '(11) 93456-7890'),
(4, 'Ana Santos', 'Rua D, 101', '(11) 95678-1234'),
(5, 'Roberto Lima', 'Rua E, 202', '(11) 93214-6543'),
(6, 'Fernanda Pereira', 'Rua F, 303', '(11) 93456-3210'),
(7, 'Pedro Costa', 'Rua G, 404', '(11) 98765-8765'),
(8, 'Luciana Almeida', 'Rua H, 505', '(11) 98876-5432'),
(9, 'Ricardo Santos', 'Rua I, 606', '(11) 91122-3344'),
(10, 'Patrícia Souza', 'Rua J, 707', '(11) 91987-6543'),
(11, 'Juliano Silva', 'Rua K, 808', '(11) 93123-4567'),
(12, 'Beatriz Martins', 'Rua L, 909', '(11) 92654-3210'),
(13, 'Fábio Rocha', 'Rua M, 1010', '(11) 93456-9876'),
(14, 'Simone Ferreira', 'Rua N, 1111', '(11) 93876-5432'),
(15, 'Rafael Costa', 'Rua O, 1212', '(11) 94432-8765');

-- Inserção de dados na tabela 'veiculos'
INSERT INTO veiculos (codigo_veiculo, modelo, placa, ano, clientes_codigo_cliente) VALUES
(1, 'Fusca', 'ABC-1234', '1999', 1),
(2, 'Gol', 'DEF-5678', '2010', 2),
(3, 'Civic', 'GHI-9012', '2018', 3),
(4, 'Palio', 'JKL-3456', '2005', 4),
(5, 'Fiorino', 'MNO-7890', '2013', 5),
(6, 'Corolla', 'PQR-2345', '2020', 6),
(7, 'Hilux', 'STU-6789', '2015', 7),
(8, 'Onix', 'VWX-0123', '2017', 8),
(9, 'Sandero', 'YZA-4567', '2012', 9),
(10, 'Argo', 'BCD-8901', '2021', 10),
(11, 'HB20', 'EFG-2345', '2019', 11),
(12, 'Kwid', 'HIJ-6789', '2022', 12),
(13, 'Tracker', 'KLM-1234', '2020', 13),
(14, 'Spin', 'NOP-5678', '2014', 14),
(15, 'Duster', 'QRS-8901', '2016', 15);

-- Inserção de dados na tabela 'mecanicos'
INSERT INTO mecanicos (codigo_mecanico, nome, endereco, especialidade) VALUES
(1, 'Carlos Henrique', 'Av. Central, 100', 'Mecânica Geral'),
(2, 'Juliana Martins', 'Rua 1, 200', 'Suspensão e Freios'),
(3, 'Ricardo Alves', 'Rua 2, 300', 'Motorização e Eletrônica'),
(4, 'Aline Pereira', 'Rua 3, 400', 'Mecânica de Motor'),
(5, 'Fernando Gomes', 'Rua 4, 500', 'Transmissão e Direção'),
(6, 'Mário Silva', 'Rua 5, 600', 'Elétrica Automotiva'),
(7, 'Gabriela Rocha', 'Rua 6, 700', 'Injeção Eletrônica'),
(8, 'João Marcos', 'Rua 7, 800', 'Suspensão e Freios'),
(9, 'Luciano Costa', 'Rua 8, 900', 'Diagnóstico e Análise'),
(10, 'Eduardo Lima', 'Rua 9, 1000', 'Reparo de Motor'),
(11, 'Patrícia Souza', 'Rua 10, 1100', 'Elétrica e Eletrônica'),
(12, 'Ricardo Costa', 'Rua 11, 1200', 'Sistemas de Injeção'),
(13, 'Juliana Oliveira', 'Rua 12, 1300', 'Mecânica Geral'),
(14, 'Cláudio Ribeiro', 'Rua 13, 1400', 'Transmissão e Freios'),
(15, 'Simone Alves', 'Rua 14, 1500', 'Eletrônica Automotiva');

-- Inserção de dados na tabela 'pecas'
INSERT INTO pecas (codigo_peca, descricao, valor_unitario) VALUES
(1, 'Pastilha de Freio', 80.00),
(2, 'Amortecedor', 250.00),
(3, 'Filtro de Óleo', 50.00),
(4, 'Correia Dentada', 120.00),
(5, 'Bujão de Óleo', 15.00),
(6, 'Platinado', 40.00),
(7, 'Cabo de Vela', 30.00),
(8, 'Bateria', 350.00),
(9, 'Óleo de Motor', 90.00),
(10, 'Tampa de Válvula', 100.00),
(11, 'Disco de Freio', 180.00),
(12, 'Escapamento', 300.00),
(13, 'Velas de Ignição', 35.00),
(14, 'Radiador', 450.00),
(15, 'Filtro de Ar', 60.00);

-- Inserção de dados na tabela 'servicos'
INSERT INTO servicos (codigo_servico, descricao, valor_servico) VALUES
(1, 'Troca de Óleo', 150.00),
(2, 'Alinhamento e Balanceamento', 180.00),
(3, 'Troca de Pastilhas de Freio', 220.00),
(4, 'Troca de Amortecedores', 600.00),
(5, 'Troca de Correia Dentada', 500.00),
(6, 'Substituição de Bateria', 350.00),
(7, 'Reparo de Radiador', 450.00),
(8, 'Reparo de Suspensão', 400.00),
(9, 'Troca de Filtro de Óleo', 100.00),
(10, 'Reparo de Escapamento', 300.00),
(11, 'Troca de Velas de Ignição', 120.00),
(12, 'Troca de Filtro de Ar', 80.00),
(13, 'Reparo Elétrico', 250.00),
(14, 'Troca de Bujão de Óleo', 50.00),
(15, 'Manutenção Preventiva', 200.00);

-- Inserção de dados na tabela 'ordem_servico'
INSERT INTO ordem_servico (numero_os, data_emissao, data_conclusao, veiculos_codigo_veiculo, valor_mao_de_obra, valor_pecas, valor_total) VALUES
(1, '2024-01-15', '2024-01-16', 1, 150.00, 200.00, 350.00),
(2, '2024-01-18', '2024-01-20', 2, 180.00, 150.00, 330.00),
(3, '2024-01-20', '2024-01-22', 3, 220.00, 300.00, 520.00),
(4, '2024-01-22', '2024-01-23', 4, 250.00, 180.00, 430.00),
(5, '2024-01-25', '2024-01-26', 5, 200.00, 350.00, 550.00),
(6, '2024-01-28', '2024-01-30', 6, 300.00, 250.00, 550.00),
(7, '2024-02-02', '2024-02-05', 7, 350.00, 400.00, 750.00),
(8, '2024-02-05', '2024-02-07', 8, 180.00, 120.00, 300.00),
(9, '2024-02-10', '2024-02-12', 9, 220.00, 150.00, 370.00),
(10, '2024-02-12', '2024-02-14', 10, 240.00, 180.00, 420.00),
(11, '2024-02-15', '2024-02-17', 11, 200.00, 250.00, 450.00),
(12, '2024-02-18', '2024-02-20', 12, 220.00, 180.00, 400.00),
(13, '2024-02-20', '2024-02-22', 13, 300.00, 350.00, 650.00),
(14, '2024-02-23', '2024-02-25', 14, 150.00, 220.00, 370.00),
(15, '2024-02-25', '2024-02-28', 15, 250.00, 300.00, 550.00);

-- Inserção de dados na tabela 'ordem_servico_servicos'
INSERT INTO ordem_servico_servicos (servicos_codigo_servico, ordem_servico_numero_os) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

-- Inserção de dados na tabela 'ordem_servico_mecanicos'
INSERT INTO ordem_servico_mecanicos (mecanicos_codigo_mecanico, ordem_servico_numero_os) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

-- Inserção de dados na tabela 'ordem_servico_pecas'
INSERT INTO ordem_servico_pecas (pecas_codigo_peca, ordem_servico_numero_os) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);
