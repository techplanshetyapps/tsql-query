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
CREATE TABLE DEFAULT INT VARCHAR