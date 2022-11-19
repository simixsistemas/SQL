sp_spaceused

/**
sp_helpdb
sp_databases

SELECT
    d.name AS DbName,
    m.name AS FileName,
    m.size * 8/1024 'SizeMB',
    SUM(m.size * 8/1024) OVER (PARTITION BY d.name) AS DatabaseTotalSizeMB,
    m.max_size
FROM sys.master_files m
INNER JOIN sys.databases d ON d.database_id = m.database_id
**/
