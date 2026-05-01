/*
    Database setup for the esports tournament DBMS project.
    The canonical full script is preserved in final-source-code/Final Source Code.sql.
*/

IF DB_ID(N'DB') IS NULL
BEGIN
    CREATE DATABASE [DB];
END;
GO

USE [DB];
GO
