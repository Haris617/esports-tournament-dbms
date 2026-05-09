# Requirements Coverage

This file maps the DBMS project requirements to the files included in this repository. The mapping is based on the canonical final SQL source at `final-source-code/Final Source Code.sql`.

## Basic Requirements

| Requirement | Status | Location |
| --- | --- | --- |
| At least 6 tables | Covered | `sql/01_schema_tables.sql` creates 8 main project tables. |
| ERD / EERD visual | Covered | `Enhanced-ERD/visual-erd.svg`, `Enhanced-ERD/visual-erd.html`, and `docs/database_design.md`. |
| Split SQL work clearly | Covered | `sql/` contains numbered files by topic. |
| Final source preserved | Covered | `final-source-code/Final Source Code.sql`. |
| Question numbering | Covered | `Q1` to `Q61` are continuous in the final source, split SQL, `questions.md`, and GUI. |
| GUI presentation | Covered | `gui/index.html`, `gui/style.css`, and `gui/app.js`. |

## DDL Commands

| Requirement | Location |
| --- | --- |
| `CREATE DATABASE` | `sql/00_database_setup.sql` |
| Main `CREATE TABLE` statements | `sql/01_schema_tables.sql` |
| Test table creation | `sql/02_test_tables_and_ddl_changes.sql` |
| Add constraint | `sql/02_test_tables_and_ddl_changes.sql` |
| Drop constraint | `sql/02_test_tables_and_ddl_changes.sql` |
| Rename column | `sql/02_test_tables_and_ddl_changes.sql` |
| Add column | `sql/02_test_tables_and_ddl_changes.sql` |
| Modify value, data type, and column size | `sql/02_test_tables_and_ddl_changes.sql` |
| Drop column | `sql/02_test_tables_and_ddl_changes.sql` |
| `TRUNCATE` | `sql/02_test_tables_and_ddl_changes.sql` |
| `DROP TABLE` | `sql/02_test_tables_and_ddl_changes.sql` |

## DML Commands

| Requirement | Location |
| --- | --- |
| Insert records | `sql/03_seed_data.sql` |
| Display main tables | `sql/04_preview_tables.sql` |
| Update using `WHERE` | `sql/05_dml_updates_deletes.sql` |
| Update multiple records | `sql/05_dml_updates_deletes.sql` |
| Update using `BETWEEN` | `sql/05_dml_updates_deletes.sql` |
| Update using `IN` | `sql/05_dml_updates_deletes.sql` |
| Update using `GROUP BY` and `HAVING` | `sql/05_dml_updates_deletes.sql` |
| Delete one and multiple records | `sql/05_dml_updates_deletes.sql` |
| Soft delete/status update | `sql/05_dml_updates_deletes.sql` |

## DRL Commands

| Requirement | Location |
| --- | --- |
| `SELECT`, `WHERE`, `IN`, `BETWEEN` | `sql/06_drl_select_queries.sql` |
| `AND`, `OR` | `sql/06_drl_select_queries.sql` |
| `GROUP BY`, `HAVING`, `ORDER BY` | `sql/06_drl_select_queries.sql` |
| Subqueries with `IN`, `NOT IN`, `EXISTS`, `NOT EXISTS`, `ANY`, `ALL` | `sql/07_subqueries.sql` |
| Numeric aggregate functions | `sql/08_aggregates_text_search.sql`, `sql/10_function_queries.sql` |
| Text search using `LIKE` | `sql/08_aggregates_text_search.sql` |

## Joins

| Join Type | Location |
| --- | --- |
| `INNER JOIN` | `sql/09_join_queries.sql` |
| `LEFT JOIN` | `sql/09_join_queries.sql` |
| `RIGHT JOIN` | `sql/09_join_queries.sql` |
| `FULL JOIN` | `sql/09_join_queries.sql` |
| `SELF JOIN` | `sql/09_join_queries.sql` |

## Functions And Stored Procedures

| Requirement | Location |
| --- | --- |
| Scalar function | `sql/10_function_queries.sql` |
| Scalar function with computation | `sql/10_function_queries.sql` |
| Table-valued function | `sql/10_function_queries.sql` |
| Table-valued function with parameter | `sql/10_function_queries.sql` |
| Non-parameterized stored procedure | `sql/10_function_queries.sql` |
| Parameterized stored procedure | `sql/10_function_queries.sql` |
| Procedure with `IF ELSE` | `sql/10_function_queries.sql` |
| Procedure with `WHILE` loop for prize-winning teams by tournament | `sql/10_function_queries.sql` |

## Note

The split SQL files are aligned to the final source code and include batch separators where needed for SQL Server execution.
