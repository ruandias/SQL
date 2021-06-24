SELECT * FROM [Curso]
SELECT * FROM [Categoria]

-- RIGHT JOIN -> vai pegar todos os itens ad segunda tabela
SELECT TOP 100
    [Curso].[Nome] AS [Nome do Curso],
    [Categoria].[Nome] AS [Nome da Categoria]
FROM
    [Curso]
    RIGHT JOIN [Categoria] 
        ON [Curso].[CategoriaId] = [Categoria].[Id]