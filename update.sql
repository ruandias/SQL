SELECT * FROM [Categoria] -- nunca usar '*' em produção

-- nunca realizar update sem 'WHERE', vai dar merda . Serve para delete também
UPDATE
    [Categoria]
SET 
    [Nome]=''

BEGIN TRANSACTION -- com poucos updates
    UPDATE
        [Categoria]
    SET 
        [Nome] = 'Danone'
    WHERE
        [Id] = 1
ROLLBACK -- consigo ver no log a quantidade de linhas afetadas, e ver se é o resultado esperado. Sem alterar de fato
-- COMMIT - server para eu realmente tacar pau 