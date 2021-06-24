SELECT * FROM [Curso]
SELECT * FROM [Categoria]

-- LEFT JOIN -> vai pegar todos os itens ad primeira tabela
SELECT TOP 100
    [Curso].[Nome] AS [Nome do Curso],
    [Categoria].[Nome] AS [Nome da Categoria]
FROM
    [Curso]
    LEFT JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]