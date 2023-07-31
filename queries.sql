USE projeto_oficina;

-- Quais os clientes da oficina?

SELECT * FROM cliente;

-- Os serviços com preço acima de 150 reais
SELECT * FROM Serviço WHERE Preço > 150.00;


-- Recupera os veículos fabricados após 2020 e seus donos
SELECT
	c.Nome as Nome, v.Modelo as Carro, v.Ano as Ano
    FROM
    ordemdeserviço os JOIN cliente c ON os.ClienteID = c.ClienteID 
    JOIN veículo v ON os.VeículoID = v.VeículoID
    WHERE v.Ano >2019;

-- Qual o método de pagamento mais comum?

SELECT
    CONCAT(TipoPagamento, ' ', Parcelamento) AS FormaPagamento,
    COUNT(*) AS Quantidade
FROM
    OrdemDeServiço
GROUP BY
    FormaPagamento
ORDER BY
    Quantidade DESC
LIMIT 1;

-- Qual o total de cada método de pagamento?

SELECT
    CONCAT(TipoPagamento, ' ', Parcelamento) AS FormaPagamento,
    SUM(Preço) AS Total
FROM
    OrdemDeServiço
JOIN
    Serviço ON FIND_IN_SET(Serviço.ServiçoID, OrdemDeServiço.Serviços)
GROUP BY
    FormaPagamento;
    
-- Quantas Ordens foram feitas por mês-ano?
SELECT
    DATE_FORMAT(DataServico, '%Y-%m') AS MesAno,
    COUNT(*) AS QuantidadeOrdens
FROM
    OrdemDeServiço
GROUP BY
    MesAno;

-- Qual o total de cada OS?
SELECT
    OrdemID,
    DataServico,
    ClienteID,
    VeículoID,
    Serviços,
    statusOrdem,
    CONCAT(TipoPagamento,' - ',Parcelamento) as 'Forma Pgto',
    SUM(Preço) AS Total
FROM
    OrdemDeServiço
JOIN
    Serviço ON FIND_IN_SET(Serviço.ServiçoID, OrdemDeServiço.Serviços)
GROUP BY
    OrdemID
ORDER BY OrdemID;

-- Quais as OS com valores maiores ou iguais a R$500

SELECT
    Subquery.OrdemID,
    Subquery.DataServico,
    Subquery.ClienteID,
    Subquery.VeículoID,
    Subquery.Serviços,
    Subquery.StatusOrdem,
    Subquery.FormaPgto,
    Subquery.Total
FROM
    (
        SELECT
            OrdemID,
            DataServico,
            ClienteID,
            VeículoID,
            Serviços,
            StatusOrdem,
            CONCAT(TipoPagamento, ' - ', Parcelamento) AS FormaPgto,
            SUM(Preço) AS Total
        FROM
            OrdemDeServiço
        JOIN
            Serviço ON FIND_IN_SET(Serviço.ServiçoID, OrdemDeServiço.Serviços)
        GROUP BY
            OrdemID
    ) AS Subquery
WHERE
    Subquery.Total >= 200
ORDER BY
    Subquery.Total DESC;
