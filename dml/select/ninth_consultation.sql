/*
	Doctors who have already performed consultations 
	and the total number of prescriptions issued by them
*/
SELECT 
    medico.nome AS "Médico que receitou",
    COUNT(receita.id_receita) AS "Receitas Emitidas"
FROM medico 
INNER JOIN agendamento ON medico.id_medico = agendamento.id_medico
INNER JOIN pagamento ON agendamento.id_agendamento = pagamento.id_agendamento
INNER JOIN consulta ON pagamento.id_pagamento = consulta.id_pagamento
LEFT JOIN receita ON consulta.id_consulta = receita.id_consulta
GROUP BY medico.id_medico, medico.nome
ORDER BY "Receitas Emitidas" DESC;
