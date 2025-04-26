/* DATABASE - DDL - SQL*/

-- Create table paciente
CREATE TABLE paciente(
	id_paciente SERIAL PRIMARY KEY , 
	nome VARCHAR(100) NOT NULL ,
	data_nascimento DATE NOT NULL , 
	telefone VARCHAR(11) NOT NULL ,  
	endereco VARCHAR(500) NOT NULL , 
	email VARCHAR(100) UNIQUE , 
	cpf VARCHAR(11) UNIQUE 
);

-- Create table medico
CREATE TABLE medico(
	id_medico SERIAL PRIMARY KEY , 
	nome VARCHAR(100) NOT NULL ,
	telefone VARCHAR(11) NOT NULL  , 
	email VARCHAR(100) UNIQUE , 
	crm VARCHAR(11) UNIQUE 
);

-- Create table especialidade
CREATE TABLE especialidade(
	id_especialidade SERIAL PRIMARY KEY , 
	nome VARCHAR(100) NOT NULL , 
	descricao VARCHAR(1000) NOT NULL 
);

-- Create intermediate table medico_especialidade
CREATE TABLE medico_especialidade (
    id_medico_especialidade SERIAL PRIMARY KEY,
    id_medico INT NOT NULL,
    id_especialidade INT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES medico(id_medico) ON DELETE CASCADE,
    FOREIGN KEY (id_especialidade) REFERENCES especialidade(id_especialidade) ON DELETE CASCADE
);

-- Create table agendamento 
CREATE TABLE agendamento (
	id_agendamento SERIAL PRIMARY KEY ,
	id_medico INT NOT NULL , 
	id_paciente INT NOT NULL , 
	status VARCHAR(20) DEFAULT 'Pendente' , 
	data_hora TIMESTAMP UNIQUE , 

	FOREIGN KEY (id_medico) REFERENCES medico(id_medico) ON DELETE CASCADE ,
	FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente) ON DELETE CASCADE 
);

-- Create table pagamento 
CREATE TABLE pagamento(
	id_pagamento SERIAL PRIMARY KEY , 
	id_agendamento INT NOT NULL , 
	metodo_pagamento VARCHAR(20) NOT NULL , 
	data_pagamento DATE , 
	status VARCHAR(20) DEFAULT 'Pendente' , 
	valor FLOAT NOT NULL ,

	FOREIGN KEY (id_agendamento) REFERENCES agendamento(id_agendamento) ON DELETE CASCADE
);

-- Create table consulta
CREATE TABLE consulta(
	id_consulta SERIAL PRIMARY KEY , 
	id_pagamento INT NOT NULL , 
	observacoes VARCHAR(1000) NOT NULL , 
	diagnostico VARCHAR(1000) NOT NULL , 
	data_hora TIMESTAMP UNIQUE,

	FOREIGN KEY (id_pagamento) REFERENCES pagamento(id_pagamento) ON DELETE CASCADE
);


-- Create table receita
CREATE TABLE receita(
	id_receita SERIAL PRIMARY KEY , 
	id_consulta INT NOT NULL, 
	descricao VARCHAR(1000) NOT NULL , 
	data_emissao DATE NOT NULL , 
	data_hora TIMESTAMP NOT NULL ,  

	FOREIGN KEY (id_consulta) REFERENCES consulta(id_consulta) ON DELETE CASCADE
);




