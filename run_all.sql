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

:setvar ProjectRoot "C:\Users\Haris\Desktop\Github\esports-tournament-dbms"

:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\00_database_setup.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\01_schema_tables.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\02_test_tables_and_ddl_changes.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\03_seed_data.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\04_preview_tables.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\05_dml_updates_deletes.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\06_drl_select_queries.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\07_subqueries.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\08_aggregates_text_search.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\09_join_queries.sql"
:r "C:\Users\Haris\Desktop\Github\esports-tournament-dbms\sql\10_function_queries.sql"
