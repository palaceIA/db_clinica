/*Update appointment status from Pending to Completed*/
UPDATE agendamento
SET status = 'Concluído'
WHERE id_agendamento IN (SELECT id_agendamento FROM pagamento WHERE status = 'Pago');