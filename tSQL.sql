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
UPDATE SET