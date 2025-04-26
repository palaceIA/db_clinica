/*Deleting doctors without specialty*/
DELETE FROM medico
WHERE id_medico NOT IN (SELECT DISTINCT id_medico FROM medico_especialidade);