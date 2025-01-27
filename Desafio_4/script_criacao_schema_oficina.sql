-- Criação do banco de dados
CREATE DATABASE oficina;
USE oficina;

-- Esquema Lógico para o Contexto da Oficina

-- Tabela de clientes
CREATE TABLE clientes (
    codigo_cliente INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    telefone VARCHAR(45)
);

-- Tabela de veículos
CREATE TABLE veiculos (
    codigo_veiculo INT PRIMARY KEY,
    modelo VARCHAR(45) NOT NULL,
    placa VARCHAR(45) NOT NULL,
    ano VARCHAR(45),
    clientes_codigo_cliente INT NOT NULL,
    FOREIGN KEY (clientes_codigo_cliente) REFERENCES clientes(codigo_cliente)
);

-- Tabela de mecânicos
CREATE TABLE mecanicos (
    codigo_mecanico INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    especialidade VARCHAR(45)
);

-- Tabela de peças
CREATE TABLE pecas (
    codigo_peca INT PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL
);

-- Tabela de serviços
CREATE TABLE servicos (
    codigo_servico INT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_servico DECIMAL(10,2) NOT NULL
);

-- Tabela de ordem de serviço
CREATE TABLE ordem_servico (
    numero_os INT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    veiculos_codigo_veiculo INT NOT NULL,
    valor_mao_de_obra DECIMAL(10,2) NOT NULL,
    valor_pecas DECIMAL(10,2),
    valor_total DECIMAL(10,2),
    FOREIGN KEY (veiculos_codigo_veiculo) REFERENCES veiculos(codigo_veiculo)
);

-- Tabela de relação entre serviços e ordem de serviço
CREATE TABLE ordem_servico_servicos (
    servicos_codigo_servico INT NOT NULL,
    ordem_servico_numero_os INT NOT NULL,
    PRIMARY KEY (servicos_codigo_servico, ordem_servico_numero_os),
    FOREIGN KEY (servicos_codigo_servico) REFERENCES servicos(codigo_servico),
    FOREIGN KEY (ordem_servico_numero_os) REFERENCES ordem_servico(numero_os)
);

-- Tabela de relação entre mecânicos e ordem de serviço
CREATE TABLE ordem_servico_mecanicos (
    mecanicos_codigo_mecanico INT NOT NULL,
    ordem_servico_numero_os INT NOT NULL,
    PRIMARY KEY (mecanicos_codigo_mecanico, ordem_servico_numero_os),
    FOREIGN KEY (mecanicos_codigo_mecanico) REFERENCES mecanicos(codigo_mecanico),
    FOREIGN KEY (ordem_servico_numero_os) REFERENCES ordem_servico(numero_os)
);

-- Tabela de relação entre peças e ordem de serviço
CREATE TABLE ordem_servico_pecas (
    pecas_codigo_peca INT NOT NULL,
    ordem_servico_numero_os INT NOT NULL,
    PRIMARY KEY (pecas_codigo_peca, ordem_servico_numero_os),
    FOREIGN KEY (pecas_codigo_peca) REFERENCES pecas(codigo_peca),
    FOREIGN KEY (ordem_servico_numero_os) REFERENCES ordem_servico(numero_os)
);
