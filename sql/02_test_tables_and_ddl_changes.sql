USE [DB];
GO

/* =========================
   TEST TABLE DDL PRACTICE
   ========================= */

-- Q1. Create the test table.

CREATE TABLE tbl_testTable (
    tt_id INT IDENTITY(1,1) PRIMARY KEY,
    tt_name NVARCHAR(40) NOT NULL,
    tt_email NVARCHAR(100) NOT NULL,
    tt_phone_number NVARCHAR(20) NOT NULL,
    tt_age NVARCHAR(5) NULL
);

-- Q2. Insert records into the test table.
INSERT INTO tbl_testTable (tt_name, tt_email, tt_phone_number, tt_age)
VALUES
('Ali Khan', 'ali@test.com', '03001234567', '20'),
('Sara Ahmed', 'sara@test.com', '03111234567', '22'),
('Usman Raza', 'usman@test.com', '03221234567', '28');

-- Q3. Add a constraint.
ALTER TABLE tbl_testTable
ADD CONSTRAINT uq_tbl_testTable_tt_email UNIQUE (tt_email);

-- Q4. Drop a constraint.
ALTER TABLE tbl_testTable
DROP CONSTRAINT uq_tbl_testTable_tt_email;

-- Q5. Rename a column.
EXEC sp_rename 'tbl_testTable.tt_name', 'tt_full_name', 'COLUMN';

-- Q6. Add a new column.
ALTER TABLE tbl_testTable
ADD tt_status NVARCHAR(20) NULL;

-- Q7. Modify a column.
UPDATE tbl_testTable
SET tt_status = 'Active'
WHERE tt_status IS NULL;

-- Q8. Delete a column.
ALTER TABLE tbl_testTable
DROP COLUMN tt_status;

-- Q9. Change a column data type.
ALTER TABLE tbl_testTable
ALTER COLUMN tt_age INT NULL;

-- Q10. Change a column size.
ALTER TABLE tbl_testTable
ALTER COLUMN tt_full_name NVARCHAR(80) NOT NULL;

-- Q11. Empty the test table.
TRUNCATE TABLE tbl_testTable;

-- Q12. Delete the test table.
DROP TABLE tbl_testTable;
GO
