# Project Structure

This folder is arranged so the DBMS project is easy to upload to GitHub, review, present, and run in SQL Server Management Studio 2022.

## Main Files

- `README.md` - Main GitHub documentation.
- `questions.md` - Full DBMS question list matching `Q1` to `Q59`.
- `index.html` - Redirects GitHub Pages visitors to the GUI folder.
- `run_all.sql` - Runs the full project using SQLCMD `:r` include commands.
- `.gitignore` - Excludes common local SQL Server and editor files.
- `.nojekyll` - Keeps GitHub Pages from applying Jekyll processing.

## Folders

- `final-source-code/` - Canonical final SQL source file.
- `sql/` - Split SQL files arranged in execution order.
- `gui/` - Static browser GUI files.
- `Enhanced-ERD/` - Current diagram SVG and HTML files.
- `docs/` - Extra documentation for the scenario, database design, requirements coverage, and SSMS running steps.

## SQL File Order

1. `00_database_setup.sql`
2. `01_schema_tables.sql`
3. `02_test_tables_and_ddl_changes.sql`
4. `03_seed_data.sql`
5. `04_preview_tables.sql`
6. `05_dml_updates_deletes.sql`
7. `06_drl_select_queries.sql`
8. `07_subqueries.sql`
9. `08_aggregates_text_search.sql`
10. `09_join_queries.sql`
11. `10_function_queries.sql`

## Main Tables

- `tbl_Games`
- `tbl_Tournaments`
- `tbl_Teams`
- `tbl_Players`
- `tbl_TeamPlayers`
- `tbl_Matches`
- `tbl_Registeration`
- `tbl_Prizes`

## Practice Table

- `tbl_testTable`
