/*Patient with myopia*/
SELECT 
	observacoes AS "Observacoes" , 
	diagnostico AS "Diagnostico" , 
	nome AS "nome"
FROM consulta
INNER JOIN pagamento ON pagamento.id_pagamento = consulta.id_pagamento
INNER JOIN agendamento ON agendamento.id_agendamento = pagamento.id_agendamento
INNER JOIN paciente ON paciente.id_paciente = agendamento.id_paciente
WHERE diagnostico LIKE '%miopia%'