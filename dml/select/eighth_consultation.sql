/*Analyzing statistical values*/
SELECT
    MAX(valor) AS "Pagamento de maior valor",
    MIN(valor) AS "Pagamento de menor valor",
    AVG(valor) AS "Média",
    ROUND(stddev_samp(valor)) AS "Desvio-Padrão",
    (SELECT MODE() WITHIN GROUP (ORDER BY valor) FROM pagamento) AS "Moda",
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY valor) AS "Mediana"
FROM pagamento;