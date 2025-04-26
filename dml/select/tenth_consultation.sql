/*Select patients who were born before 1990*/
SELECT 
    p.nome AS "Paciente",
    c.diagnostico AS "Diagnostico", 
	p.data_nascimento AS "Data de Nascimento"
FROM paciente p
INNER JOIN agendamento a ON p.id_paciente = a.id_paciente
INNER JOIN pagamento pg ON a.id_agendamento = pg.id_agendamento
INNER JOIN consulta c ON pg.id_pagamento = c.id_pagamento
WHERE p.data_nascimento < '1990-01-01';
