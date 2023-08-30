
--Liste os títulos e seus status, incluindo os que não têm status definido

SELECT t.titulo, l.status
FROM tbl_titulo t
FULL JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo;

--Liste os títulos e suas descrições dos livros alugados

SELECT t.titulo, t.descricao
FROM tbl_titulo t
FULL JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo
WHERE status = 'ALUGADO';

--Liste os nomes dos clientes que não têm livros alugados

SELECT nome
FROM tbl_cliente
WHERE codigo_cliente NOT IN (
    SELECT DISTINCT codigo_cliente
    FROM tbl_emprestimo
);

--Liste os títulos e suas categorias dos livros disponiveis

SELECT t.titulo, t.categoria
FROM tbl_titulo t
INNER JOIN tbl_livros l ON t.codigo_titulo = l.codigo_titulo
WHERE l.status = 'DISPONIVEL';

--Liste os nomes dos clientes e os títulos dos livros que eles têm alugados

SELECT c.nome AS nome_cliente, COALESCE(t.titulo, 'SEM TÍTULO') AS titulo_alugado
FROM tbl_cliente c
LEFT JOIN tbl_emprestimo e ON c.codigo_cliente = e.codigo_cliente
LEFT JOIN tbl_livros l ON e.codigo_livro = l.cod_livro
LEFT JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo;

--Retorne o nome, titulo do livro e o status do esmprestimo do livro alugado pela Ana Oliveira

SELECT c.nome AS nome_cliente, t.titulo AS titulo_alugado, l.status AS status_emprestimo
FROM tbl_cliente c
INNER JOIN tbl_emprestimo e ON c.codigo_cliente = e.codigo_cliente
INNER JOIN tbl_livros l ON e.codigo_livro = l.cod_livro
INNER JOIN tbl_titulo t ON l.codigo_titulo = t.codigo_titulo
WHERE c.nome = 'Ana Oliveira';