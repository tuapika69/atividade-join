-- 1.
SELECT funcionario.nome_funcionario,
departamento.nome_depto FROM funcionario
INNER JOIN departamento ON
funcionario.sigla_depto = departamento.sigla_depto;

-- 2.
SELECT projeto.nome_projeto, departamento.nome_depto FROM projeto
INNER JOIN departamento ON
projeto.sigla_depto = departamento.sigla_depto;

-- 3.
SELECT funcionario.nome_funcionario, projeto.nome_projeto
FROM funcionario
INNER JOIN projeto ON funcionario.codfuncionario = projeto.codfuncionario
WHERE funcionario.sigla_depto LIKE '%VEND%';

-- 4.
SELECT funcionario.nome_funcionario, projeto.nome_projeto
FROM funcionario
LEFT JOIN projeto ON funcionario.codfuncionario = projeto.codfuncionario;

-- 5.
SELECT funcionario.nome_funcionario, departamento.nome_depto
FROM funcionario
LEFT JOIN departamento ON funcionario.codfuncionario = departamento.sigla_depto;

-- 6.
SELECT projeto.nome_projeto, funcionario.nome_funcionario FROM projeto
LEFT JOIN funcionario ON projeto.codfuncionario = funcionario.codfuncionario;

-- 7.
SELECT funcionario.nome_funcionario, projeto.nome_projeto FROM funcionario
RIGHT JOIN projeto ON funcionario.codfuncionario = projeto.codfuncionario;

-- 8.
SELECT departamento.nome_depto, funcionario.nome_funcionario FROM departamento
RIGHT JOIN funcionario ON departamento.sigla_depto = funcionario.sigla_depto;

-- 9.
SELECT projeto.nome_projeto, funcionario.nome_funcionario FROM projeto
RIGHT JOIN funcionario ON projeto.codfuncionario = funcionario.codfuncionario;

-- 10.
SELECT funcionario.nome_funcionario,
projeto.nome_projeto
FROM projeto
RIGHT JOIN funcionario ON
funcionario.codfuncionario = projeto.codfuncionario
UNION
SELECT funcionario.nome_funcionario,
projeto.nome_projeto
FROM projeto
LEFT JOIN funcionario ON
funcionario.codfuncionario = projeto.codfuncionario;

-- 11.
SELECT departamento.nome_depto,
funcionario.nome_funcionario
FROM funcionario
RIGHT JOIN departamento ON
departamento.sigla_depto = funcionario.sigla_depto
UNION
SELECT departamento.nome_depto,
funcionario.nome_funcionario
FROM funcionario
LEFT JOIN departamento ON
departamento.sigla_depto = funcionario.sigla_depto;
