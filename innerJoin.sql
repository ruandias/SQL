SELECT * FROM [Curso]
SELECT * FROM [Categoria]

-- INNER JOIN -> intersecção dessas duas tabelas, tudo que existe interligado entre eles
SELECT TOP 100
    [Curso].[Nome] AS [Nome do Curso],
    [Categoria].[Nome] AS [Nome da Categoria]
FROM
    [Curso]
    INNER JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]