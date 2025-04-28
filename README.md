# 🏥 Banco de Dados - Clínica Médica

Um sistema completo de modelagem para controle de **pacientes**, **agendamentos**, **consultas**, **pagamentos**, **receitas**, **médicos** e suas **especialidades**.

> 📊 Este projeto apresenta a **modelagem conceitual**, **modelagem lógica** e **modelagem física** de um sistema de clínica médica, seguindo boas práticas de banco de dados relacional.

> Tecnologias utilizadas : **PostgresSQL** , **PgAdmin** , **Draw.IO** , **BrModeloWeb**

### 📘 Apresentação do projeto
[![Assista ao vídeo](db_clinica/midia/download.png)](https://youtu.be/cKxyVL8Enl4)

---

## 📂 Estrutura do projeto 
```
db_clinica/
├── ddl/ <- script create tables
├── dml/ <- script queries and changes
│   ├── delete/
│   └── insert/
│   └── select/
│   └── update/
├── midia/ <- modelings , images and video
│   ├── modeling/
│   ├── select_results/
│   ├── video/
├── .gitattributes
├── LICENSE
├── README.md
```

---

## 📌 Funcionalidades Modeladas

- 👤 **Cadastro de Pacientes**  
- 🩺 **Cadastro de Médicos e Especialidades**  
- 📅 **Agendamento de Consultas**  
- 💳 **Pagamentos vinculados ao agendamento**  
- 📝 **Consultas com Diagnóstico e Observações**  
- 💊 **Geração de Receitas Médicas após a Consulta**

---

## 🔗 Relacionamentos Principais

| Entidade       | Relacionamento                            | Detalhe                                                                 |
|----------------|--------------------------------------------|-------------------------------------------------------------------------|
| `Paciente`     | possui → `Agendamento`                     | Um paciente pode ter vários agendamentos                              |
| `Médico`       | possui → `Agendamento`                     | Um médico pode ter vários agendamentos                                |
| `Médico`       | tem → `Especialidade`                      | Um médico pode ter várias especialidades                              |
| `Agendamento`  | gera → `Pagamento`                         | Um agendamento pode gerar múltiplos pagamentos                        |
| `Pagamento`    | libera → `Consulta`                        | Uma consulta só ocorre após o pagamento ser realizado                 |
| `Consulta`     | gera → `Receita`                           | Uma consulta pode gerar nenhuma ou várias receitas                    |

---

## 🧱 Estrutura da Modelagem

### 📘 Modelagem Conceitual
![Modelagem Conceitual](midia/modeling/conceitual.png)

### 🧾 Modelagem Lógica
![Modelagem Lógica](midia/modeling/logica.png)

