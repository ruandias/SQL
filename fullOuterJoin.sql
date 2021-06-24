SELECT * FROM [Curso]
SELECT * FROM [Categoria]

-- FULL OUTER JOIN -> vai pegar todos os itens das tabelas, independete de ter vinculo ou não
SELECT TOP 100
    [Curso].[Nome] AS [Nome do Curso],
    [Categoria].[Nome] AS [Nome da Categoria]
FROM
    [Curso]
    FULL OUTER JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]