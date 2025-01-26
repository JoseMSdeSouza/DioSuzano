-- Queries Implementadas: Exemplos de Consultas e Recuperações

-- Quantos pedidos foram feitos por cada cliente?
SELECT Cliente_idCliente, COUNT(*) AS total_pedidos
FROM Pedido
GROUP BY Cliente_idCliente;

-- Filtros com WHERE:
-- Quais pedidos ainda estão pendentes de entrega?
SELECT *
FROM Pedido
WHERE status = 'Pendente';

-- Atributos Derivados:
-- Calcule o valor total com frete para cada pedido.
SELECT pedido_id, (valor_produtos + valor_frete) AS valor_total
FROM Pedido;

-- Ordenação de Dados:
-- Liste os produtos em ordem decrescente de preço.
SELECT descricao, preco
FROM Produto
ORDER BY preco DESC;

-- Filtros com HAVING
-- Quais clientes realizaram mais de 1 pedido?
SELECT Cliente_idCliente, COUNT(*) AS total_pedidos
FROM Pedido
GROUP BY Cliente_idCliente
HAVING COUNT(*) > 1;

-- Junções Complexas
-- liste os produtos com seus respectivos fornecedores e a localização do estoque
SELECT 
    p.descricao AS produto, 
    f.nome AS fornecedor, 
    e.localizacao AS estoque
FROM Produto p
JOIN Fornecedor_Produto fp ON p.Produto_id = fp.Produto_Produto_id
JOIN Fornecedor f ON fp.Fornecedor_idFornecedor = f.idFornecedor
JOIN Produto_Estoque pe ON pe.Produto_produto_id = p.produto_id
JOIN Estoque e ON pe.Estoque_idtable1 = e.idtable1;
