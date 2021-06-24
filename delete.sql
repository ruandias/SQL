SELECT * FROM [Categoria] -- nunca usar '*' em produção

-- nunca realizar delete sem 'WHERE', vai dar merda . 
DELETE FROM
    [Curso]
WHERE
    [CategoriaId] = 3

DELETE FROM
    [Categoria] 
WHERE
    [Id] = 3
