-- Consultas

-- 1. Recuperações Simples com SELECT Statement
-- Pergunta: Quais são os clientes cadastrados na oficina?
SELECT nome, endereco, telefone
FROM clientes;

-- 2. Filtros com WHERE Statement
-- Pergunta: Quais veículos pertencem ao cliente com código 5?
SELECT modelo, placa, ano
FROM veiculos
WHERE clientes_codigo_cliente = 5;

-- 3. Expressões para Gerar Atributos Derivados
-- Pergunta: Qual é o valor total de cada ordem de serviço (valor de peças + valor da mão de obra)?
SELECT numero_os, 
       valor_mao_de_obra + IFNULL(valor_pecas, 0) AS valor_total_orcamento
FROM ordem_servico;

-- 4. Definir Ordenações dos Dados com ORDER BY
-- Pergunta: Quais são os mecânicos mais caros, ordenados pelo valor total de suas ordens de serviço?
SELECT m.nome, SUM(o.valor_mao_de_obra) AS total_mao_de_obra
FROM mecanicos m
JOIN ordem_servico_mecanicos osm ON m.codigo_mecanico = osm.mecanicos_codigo_mecanico
JOIN ordem_servico o ON osm.ordem_servico_numero_os = o.numero_os
GROUP BY m.nome
ORDER BY total_mao_de_obra DESC;

-- 5. Condições de Filtros aos Grupos – HAVING Statement
-- Pergunta: Quais mecânicos têm um total de valor de ordens de serviço superior a R$ 300,00?
SELECT m.nome, SUM(o.valor_mao_de_obra) AS total_mao_de_obra
FROM mecanicos m
JOIN ordem_servico_mecanicos osm ON m.codigo_mecanico = osm.mecanicos_codigo_mecanico
JOIN ordem_servico o ON osm.ordem_servico_numero_os = o.numero_os
GROUP BY m.nome
HAVING total_mao_de_obra > 300;

-- 6. Junções Entre Tabelas
-- Pergunta: Quais clientes têm veículos que receberam ordens de serviço e quais serviços foram realizados nesses veículos?
SELECT c.nome AS cliente_nome, v.modelo AS veiculo_modelo, os.numero_os, s.descricao AS servico
FROM clientes c
JOIN veiculos v ON c.codigo_cliente = v.clientes_codigo_cliente
JOIN ordem_servico os ON v.codigo_veiculo = os.veiculos_codigo_veiculo
JOIN ordem_servico_servicos oss ON os.numero_os = oss.ordem_servico_numero_os
JOIN servicos s ON oss.servicos_codigo_servico = s.codigo_servico;

-- 7. Junção com Atributos Derivados
-- Pergunta: Qual o valor total de cada ordem de serviço (mão de obra + peças) para cada veículo?
SELECT os.numero_os, 
       v.modelo AS veiculo_modelo, 
       (os.valor_mao_de_obra + IFNULL(os.valor_pecas, 0)) AS valor_total
FROM ordem_servico os
JOIN veiculos v ON os.veiculos_codigo_veiculo = v.codigo_veiculo;

-- 8. Junção Complexa com GROUP BY e Filtros
-- Pergunta: Quais são os veículos que mais receberam ordens de serviço e qual o valor médio das ordens de serviço por veículo?
SELECT v.modelo, COUNT(os.numero_os) AS numero_ordens, AVG(os.valor_mao_de_obra + IFNULL(os.valor_pecas, 0)) AS valor_medio
FROM veiculos v
JOIN ordem_servico os ON v.codigo_veiculo = os.veiculos_codigo_veiculo
GROUP BY v.modelo
ORDER BY numero_ordens DESC;

-- 9. Junção com Filtro e Ordenação
-- Pergunta: Quais são as ordens de serviço mais recentes realizadas para o cliente com código 10?
SELECT os.numero_os, os.data_emissao, os.valor_total
FROM ordem_servico os
JOIN veiculos v ON os.veiculos_codigo_veiculo = v.codigo_veiculo
WHERE v.clientes_codigo_cliente = 10
ORDER BY os.data_emissao DESC;

-- 10. Filtros e Agrupamentos com HAVING e GROUP BY
-- Pergunta: Quais serviços possuem um valor total superior a R$ 500,00 em ordens de serviço realizadas?
SELECT s.descricao, SUM(o.valor_mao_de_obra + IFNULL(o.valor_pecas, 0)) AS total_valor_servico
FROM servicos s
JOIN ordem_servico_servicos oss ON s.codigo_servico = oss.servicos_codigo_servico
JOIN ordem_servico o ON oss.ordem_servico_numero_os = o.numero_os
GROUP BY s.descricao
HAVING total_valor_servico > 500;

-- 11. Detalhamento de Ordens de Serviço por Mecânico
-- Pergunta: Quais mecânicos realizaram ordens de serviço que envolveram peças específicas, como "Pneu" e "Amortecedor"?
SELECT m.nome AS mecanico_nome, os.numero_os, p.descricao AS peca_descricao
FROM mecanicos m
JOIN ordem_servico_mecanicos osm ON m.codigo_mecanico = osm.mecanicos_codigo_mecanico
JOIN ordem_servico os ON osm.ordem_servico_numero_os = os.numero_os
JOIN ordem_servico_pecas osp ON os.numero_os = osp.ordem_servico_numero_os
JOIN pecas p ON osp.pecas_codigo_peca = p.codigo_peca
WHERE p.descricao IN ('Pneu', 'Amortecedor');

-- 12. Contagem de Serviços por Veículo
-- Pergunta: Quantos serviços diferentes foram realizados em cada modelo de veículo?
SELECT v.modelo, COUNT(DISTINCT s.codigo_servico) AS quantidade_servicos
FROM veiculos v
JOIN ordem_servico os ON v.codigo_veiculo = os.veiculos_codigo_veiculo
JOIN ordem_servico_servicos oss ON os.numero_os = oss.ordem_servico_numero_os
JOIN servicos s ON oss.servicos_codigo_servico = s.codigo_servico
GROUP BY v.modelo;
