/*
    Esports Tournament Database - Full Runner

    How to use in SSMS 2022:
    1. Replace the ProjectRoot path below with the full path of this folder.
       Example:
       C:\Users\YourName\Downloads\esports-tournament-dbms

    2. Enable SQLCMD Mode:
       Query menu -> SQLCMD Mode

    3. Execute this file.
*/

:setvar ProjectRoot "C:\Path\To\esports-tournament-dbms"

:r "$(ProjectRoot)\sql\00_database_setup.sql"
:r "$(ProjectRoot)\sql\01_schema_tables.sql"
:r "$(ProjectRoot)\sql\02_test_tables_and_ddl_changes.sql"
:r "$(ProjectRoot)\sql\03_seed_data.sql"
:r "$(ProjectRoot)\sql\04_preview_tables.sql"
:r "$(ProjectRoot)\sql\05_dml_updates_deletes.sql"
:r "$(ProjectRoot)\sql\06_drl_select_queries.sql"
:r "$(ProjectRoot)\sql\07_subqueries.sql"
:r "$(ProjectRoot)\sql\08_aggregates_text_search.sql"
:r "$(ProjectRoot)\sql\09_join_queries.sql"
:r "$(ProjectRoot)\sql\10_function_queries.sql"
