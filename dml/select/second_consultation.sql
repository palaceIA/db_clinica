/*appointments that are made with 'Concluation' status and date 2025-05-01*/
SELECT * FROM agendamento
WHERE status = 'Concluído' AND DATE(data_hora) = '2025-05-01';