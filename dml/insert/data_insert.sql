--  Insert pacientes
INSERT INTO paciente (nome, data_nascimento, telefone, endereco, email, cpf) VALUES
('Ana Souza', '1985-03-12', '11988887777', 'Rua A, 100', 'ana.souza@gmail.com', '12345678901'),
('Carlos Silva', '1990-06-25', '11999996666', 'Rua B, 200', 'carlos.silva@gmail.com', '12345678902'),
('Beatriz Oliveira', '1978-11-09', '11977778888', 'Rua C, 300', 'beatriz.oliveira@gmail.com', '12345678903'),
('Daniel Rocha', '2000-01-18', '11966665555', 'Rua D, 400', 'daniel.rocha@gmail.com', '12345678904'),
('Fernanda Lima', '1995-05-30', '11955554444', 'Rua E, 500', 'fernanda.lima@gmail.com', '12345678905'),
('Gabriel Ferreira', '1982-08-15', '11944443333', 'Rua F, 600', 'gabriel.ferreira@gmail.com', '12345678906'),
('Helena Costa', '1975-02-20', '11933332222', 'Rua G, 700', 'helena.costa@gmail.com', '12345678907'),
('Igor Martins', '1999-12-05', '11922221111', 'Rua H, 800', 'igor.martins@gmail.com', '12345678908'),
('Juliana Santos', '1987-07-14', '11911110000', 'Rua I, 900', 'juliana.santos@gmail.com', '12345678909'),
('Lucas Almeida', '1992-09-22', '11900009999', 'Rua J, 1000', 'lucas.almeida@gmail.com', '12345678910');

-- Insert médicos
INSERT INTO medico (nome, telefone, email, crm) VALUES
('Dr. Pedro Henrique', '11988881111', 'pedro.henrique@gmail.com', 'CRM001'),
('Dra. Camila Borges', '11977772222', 'camila.borges@gmail.com', 'CRM002'),
('Dr. João Pedro', '11966663333', 'joao.pedro@gmail.com', 'CRM003'),
('Dra. Mariana Costa', '11955554455', 'mariana.costa@gmail.com', 'CRM004'),
('Dr. Rafael Lima', '11944445555', 'rafael.lima@gmail.com', 'CRM005'),
('Dra. Patrícia Oliveira', '11933336666', 'patricia.oliveira@gmail.com', 'CRM006'),
('Dr. Bruno Almeida', '11922227777', 'bruno.almeida@gmail.com', 'CRM007'),
('Dra. Bianca Souza', '11911118888', 'bianca.souza@gmail.com', 'CRM008'),
('Dr. Victor Santos', '11900009988', 'victor.santos@gmail.com', 'CRM009'),
('Dra. Paula Rocha', '11912345678', 'paula.rocha@gmail.com', 'CRM010');

-- Insert especialidades
INSERT INTO especialidade (nome, descricao) VALUES
('Cardiologia', 'Especialidade médica que trata doenças do coração.'),
('Dermatologia', 'Especialidade que trata doenças de pele.'),
('Neurologia', 'Especialidade que trata doenças do sistema nervoso.'),
('Pediatria', 'Especialidade que cuida da saúde infantil.'),
('Ortopedia', 'Especialidade de ossos e músculos.'),
('Ginecologia', 'Saúde da mulher.'),
('Psiquiatria', 'Tratamento de distúrbios mentais.'),
('Endocrinologia', 'Tratamento de problemas hormonais.'),
('Oftalmologia', 'Tratamento dos olhos.'),
('Gastroenterologia', 'Tratamento do sistema digestivo.');

-- Insert relation médico-especialidade
INSERT INTO medico_especialidade (id_medico, id_especialidade) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Insert agendamentos
INSERT INTO agendamento (id_medico, id_paciente, status, data_hora) VALUES
(1, 1, 'Pendente', '2025-05-01 10:00:00'),
(2, 2, 'Pendente', '2025-05-01 11:00:00'),
(3, 3, 'Pendente', '2025-05-01 12:00:00'),
(4, 4, 'Pendente', '2025-05-01 13:00:00'),
(5, 5, 'Pendente', '2025-05-01 14:00:00'),
(6, 6, 'Pendente', '2025-05-02 10:00:00'),
(7, 7, 'Pendente', '2025-05-02 11:00:00'),
(8, 8, 'Pendente', '2025-05-02 12:00:00'),
(9, 9, 'Pendente', '2025-05-02 13:00:00'),
(10, 10, 'Pendente', '2025-05-02 14:00:00');

-- Insert pagamentos
INSERT INTO pagamento (id_agendamento, metodo_pagamento, data_pagamento, status, valor) VALUES
(1, 'Cartão', '2025-05-01', 'Pago', 200.00),
(2, 'Dinheiro', '2025-05-01', 'Pago', 180.00),
(3, 'Cartão', '2025-05-01', 'Pago', 220.00),
(4, 'Boleto', '2025-05-01', 'Pago', 190.00),
(5, 'Pix', '2025-05-01', 'Pago', 210.00),
(6, 'Cartão', '2025-05-02', 'Pago', 250.00),
(7, 'Dinheiro', '2025-05-02', 'Pago', 170.00),
(8, 'Pix', '2025-05-02', 'Pago', 230.00),
(9, 'Boleto', '2025-05-02', 'Pago', 240.00),
(10, 'Cartão', '2025-05-02', 'Pago', 200.00);

-- Insert consultas
INSERT INTO consulta (id_pagamento, observacoes, diagnostico, data_hora) VALUES
(1, 'Paciente apresentou sintomas leves.', 'Diagnóstico de pressão alta.', '2025-05-01 10:30:00'),
(2, 'Paciente com alergia na pele.', 'Diagnóstico de dermatite.', '2025-05-01 11:30:00'),
(3, 'Paciente com enxaqueca.', 'Diagnóstico de cefaleia.', '2025-05-01 12:30:00'),
(4, 'Paciente criança em acompanhamento.', 'Diagnóstico de infecção viral.', '2025-05-01 13:30:00'),
(5, 'Paciente com fratura.', 'Diagnóstico de fratura no braço.', '2025-05-01 14:30:00'),
(6, 'Paciente com queixas hormonais.', 'Diagnóstico de hipotireoidismo.', '2025-05-02 10:30:00'),
(7, 'Paciente com ansiedade.', 'Diagnóstico de transtorno de ansiedade.', '2025-05-02 11:30:00'),
(8, 'Paciente com diabetes.', 'Diagnóstico de diabetes tipo 2.', '2025-05-02 12:30:00'),
(9, 'Paciente com problemas visuais.', 'Diagnóstico de miopia.', '2025-05-02 13:30:00'),
(10, 'Paciente com dor abdominal.', 'Diagnóstico de gastrite.', '2025-05-02 14:30:00');

-- Insert receitas
INSERT INTO receita (id_consulta, descricao, data_emissao, data_hora) VALUES
(1, 'Prescrição de medicamentos para pressão alta.', '2025-05-01', '2025-05-01 10:45:00'),
(2, 'Pomada para alergia.', '2025-05-01', '2025-05-01 11:45:00'),
(3, 'Analgésico para dor de cabeça.', '2025-05-01', '2025-05-01 12:45:00'),
(4, 'Antibiótico para infecção.', '2025-05-01', '2025-05-01 13:45:00'),
(5, 'Receita para imobilização de braço.', '2025-05-01', '2025-05-01 14:45:00'),
(6, 'Hormônio sintético para tireoide.', '2025-05-02', '2025-05-02 10:45:00'),
(7, 'Ansiolítico leve.', '2025-05-02', '2025-05-02 11:45:00'),
(8, 'Insulina.', '2025-05-02', '2025-05-02 12:45:00'),
(9, 'Óculos para correção visual.', '2025-05-02', '2025-05-02 13:45:00'),
(10, 'Medicamento para gastrite.', '2025-05-02', '2025-05-02 14:45:00');
