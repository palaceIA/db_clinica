/*Lists payments and the names of patients who made each payment.*/
SELECT nome, metodo_pagamento, valor
FROM pagamento 
JOIN agendamento ON pagamento.id_agendamento = agendamento.id_agendamento
JOIN paciente ON agendamento.id_paciente = paciente.id_paciente;