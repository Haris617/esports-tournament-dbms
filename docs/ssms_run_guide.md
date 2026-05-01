# SSMS 2022 Run Guide

This guide explains how to run the complete project in Microsoft SQL Server Management Studio 2022.

## Step 1: Open The Project Folder

Open the `esports-tournament-dbms` folder in Windows File Explorer.

Click the address bar and copy the full folder path.

Example:

```text
C:\Users\YourName\Downloads\esports-tournament-dbms
```

## Step 2: Open `run_all.sql`

Open SQL Server Management Studio 2022.

Connect to your SQL Server instance.

Open `run_all.sql`.

## Step 3: Set The Project Path

At the top of `run_all.sql`, find this line:

```sql
:setvar ProjectRoot "C:\Path\To\esports-tournament-dbms"
```

Replace it with your real folder path:

```sql
:setvar ProjectRoot "C:\Users\YourName\Downloads\esports-tournament-dbms"
```

## Step 4: Enable SQLCMD Mode

In SSMS:

1. Click inside the query editor.
2. Go to the top menu.
3. Click `Query`.
4. Click `SQLCMD Mode`.
5. Make sure there is a checkmark beside `SQLCMD Mode`.

## Step 5: Execute

Click `Execute`.

The script will run all files from the `sql` folder in the correct order.

## Troubleshooting

### Cannot find directory in the path specified for `:r`

The `ProjectRoot` path is wrong.

Copy the folder path again from File Explorer and paste it into the `:setvar ProjectRoot` line.

### SQLCMD commands are not recognized

SQLCMD Mode is not enabled.

Enable it from `Query` -> `SQLCMD Mode`.

### Tables already exist

The scripts are designed for a fresh database named `DB`. If you already ran the scripts before, SQL Server may show errors because the tables already exist.
