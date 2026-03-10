USE university_db_dio;

INSERT INTO dim_professor (id_professor, nome_professor, campus, departamento, data_admissao, data_demissao, cargo_ativo, id_coordenador) VALUES
(1, 'Carlos Mendes', 'Central', 'Computação', '2022-01-15', NULL, TRUE, NULL),
(2, 'Ana Souza', 'Norte', 'Matemática', '2022-03-10', NULL, TRUE, 1),
(3, 'Ricardo Lima', 'Sul', 'Engenharia', '2023-05-20', NULL, TRUE, 1),
(4, 'Fernanda Costa', 'Central', 'Computação', '2021-08-01', '2025-12-01', FALSE, 1),
(5, 'Juliana Alves', 'Norte', 'Matemática', '2024-02-15', NULL, TRUE, 2),
(6, 'Marcelo Rocha', 'Sul', 'Engenharia', '2023-11-10', NULL, TRUE, 3),
(7, 'Patrícia Oliveira', 'Central', 'Computação', '2022-06-20', NULL, TRUE, NULL),
(8, 'Roberto Dias', 'Leste', 'Física', '2025-01-10', NULL, TRUE, 7),
(9, 'Helena Vargas', 'Oeste', 'Química', '2025-03-05', NULL, TRUE, 7),
(10, 'Lucas Farias', 'Central', 'Computação', '2026-02-01', NULL, TRUE, 1);

INSERT INTO dim_curso (id_curso, nome_curso, vagas_curso, data_inicio, data_fim, curso_ativo) VALUES
(101, 'Ciência da Computação', 50, '2023-02-01', NULL, TRUE),
(102, 'Engenharia Civil', 40, '2023-02-01', NULL, TRUE),
(103, 'Matemática Aplicada', 30, '2024-02-01', NULL, TRUE),
(104, 'Sistemas de Informação', 45, '2022-02-01', '2025-12-01', FALSE),
(105, 'Engenharia de Software', 60, '2025-02-01', NULL, TRUE),
(106, 'Física Bacharelado', 25, '2025-02-01', NULL, TRUE),
(107, 'Química Industrial', 30, '2026-02-01', NULL, TRUE);

INSERT INTO dim_disciplina (id_disciplina, nome_disciplina) VALUES
(1, 'Algoritmos'),
(2, 'Cálculo I'),
(3, 'Estrutura de Dados'),
(4, 'Física Aplicada'),
(5, 'Banco de Dados'),
(6, 'Arquitetura de Computadores'),
(7, 'Termodinâmica'),
(8, 'Química Orgânica'),
(9, 'Cálculo Numérico'),
(10, 'Redes de Computadores');

INSERT INTO fact_equipe (sk_professor, sk_disciplina, sk_curso) VALUES
(1, 1, 101),
(1, 5, 101),
(2, 2, 103),
(3, 4, 102),
(5, 2, 103),
(6, 4, 102),
(7, 6, 101),
(8, 7, 106),
(9, 8, 107),
(10, 10, 105),
(1, 3, 101),
(2, 9, 103),
(7, 1, 101);
    