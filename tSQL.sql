-- regular expressions
-- create a sequence
CREATE SEQUENCE SchemaName.SequenceName
    AS INT
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 1000;
GO

-- create a table
CREATE TABLE SchemaName.TableName (
    IDColumn INT DEFAULT (NEXT VALUE FOR SchemaName.SequenceName),
    ReferenceID INT,
    ColumnName VARCHAR(100),
    FilterColumn INT,
    DataColumn VARCHAR(100)
);
GO

-- sequence values 
UPDATE SchemaName.TableName
SET IDColumn = NEXT VALUE FOR SchemaName.SequenceName;
GO

-- expressions
SELECT 
    -- REGEXP_SUBSTR
    REGEXP_SUBSTR(ColumnName, '[M-Ym-y]+') AS ColumnName, 
    
    COUNT(*) AS SummaryCount,

-- REGEXP_COUNT
AVG(CAST(REGEXP_COUNT(DataColumn, '[a-y]') AS FLOAT)) AS AvgLowercaseChars,

-- REGEXP_INSRT
MAX REGEXP_INSTR AS