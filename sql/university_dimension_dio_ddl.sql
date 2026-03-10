DROP DATABASE IF EXISTS university_db_dio;

CREATE DATABASE university_db_dio;

USE university_db_dio;

CREATE TABLE dim_professor (
	id_professor		INT NOT NULL PRIMARY KEY,
    nome_professor		VARCHAR(50) NOT NULL,
    campus				VARCHAR(50) NOT NULL,
    departamento		VARCHAR(50) NOT NULL,
    data_admissao		DATE NOT NULL,
    data_demissao		DATE,
    cargo_ativo			BOOL,		
    id_coordenador 		INT,
    
    CONSTRAINT fk_coordenador
		FOREIGN KEY(id_coordenador)
		REFERENCES dim_professor(id_professor)
);

CREATE TABLE dim_curso (
	id_curso		INT NOT NULL PRIMARY KEY,
    nome_curso		VARCHAR(45) NOT NULL,
    vagas_curso		INT	NOT NULL,
    data_inicio		DATE NOT NULL,
    data_fim		DATE,
    curso_ativo		BOOL
);

CREATE TABLE dim_disciplina (
	id_disciplina 		INT NOT NULL PRIMARY KEY,
    nome_disciplina		VARCHAR(30) NOT NULL
); 

CREATE TABLE fact_equipe (
	sk_professor 	INT REFERENCES dim_professor(id_professor),
    sk_disciplina	INT REFERENCES dim_disciplina(id_disciplina),
    sk_curso	 	INT REFERENCES dim_curso(id_curso)
);