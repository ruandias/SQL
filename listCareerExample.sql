SELECT 
    [Id],
    [Title],
    [Url],
    (SELECT COUNT ([CareerId]) FROM [CareerItem] WHERE [CareerId] = [Id]) AS [Courses] -- JEITO MENOS RECOMENDADO DE REALIZAR O COUNT
FROM
    [Career]

-- OUTRA FORMA

SELECT 
    [Career].[Id],
    [Career].[Title],
    [Career].[Url],
    COUNT([Id]) AS [Courses]
FROM
    [Career]
    INNER JOIN [CareerItem] ON [CareerItem].[CareerId] = [Career].[Id]
GROUP BY
    [Career].[Id],
    [Career].[Title],
    [Career].[Url]
