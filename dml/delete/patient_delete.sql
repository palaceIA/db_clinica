/*Delete patient without appointment*/
DELETE FROM paciente
WHERE id_paciente NOT IN (SELECT DISTINCT id_paciente FROM agendamento);