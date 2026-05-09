# Haris SQL Questions

This question list follows the `Q1` to `Q61` flow from `final-source-code/Final Source Code.sql` and keeps the wording aligned with the actual SQL examples.

## Part A: DDL Commands

## Part A0: Test Table Practice

1. Create the test table.
2. Insert records into the test table.
3. Add a constraint.
4. Drop a constraint.
5. Rename a column.
6. Add a new column.
7. Modify a column.
8. Delete a column.
9. Change a column data type (NVARCHAR -> INT)
10. Change a column size.
11. Empty the test table.
12. Delete the test table.

## Part B: DML Commands

13. Show all EERD tables.
14. Update one record using WHERE.
15. Update multiple records.
16. Update records using BETWEEN.
17. Update records using IN.
18. Update records using GROUP BY and HAVING.
19. Delete one record.
20. Delete multiple records.
21. Soft delete one record.

## Part C: DRL Commands

## Part C1: Queries Using Clauses

22. SELECT: Show all games.
23. WHERE: Show only active players.
24. WHERE: Show Only Inactive Players
25. IN: Show tournaments with selected statuses.
26. BETWEEN: Show tournaments between two dates.
27. AND: Show active players whose username starts with a.
28. OR: Show tournaments having Valorant or Football in title.
29. GROUP BY: Count players in each team.
30. ORDER BY: Show games in alphabetical order.
31. HAVING: Show teams having 2 or more players.

## Part C2: Subqueries

32. IN Subquery: Show teams that are registered.
33. NOT IN Subquery: Show tournaments that have no matches.
34. EXISTS Subquery: Show tournaments that have prizes.
35. NOT EXISTS Subquery: Show tournaments with no registered teams.
36. ANY Subquery: Show games bigger than any Sports game team size.
37. ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.

## Part C3: Aggregate Functions

## Part C3-A: Numeric Aggregation

38. SUM: Show total prize amount.
39. AVG: Show average total match score.
40. COUNT: Count active players.
41. Other Numeric Operation: Show highest and lowest prize amount.

## Part C3-B: Text / Word Aggregation

42. LIKE: Show players whose email ends with arena.com.
43. LIKE: Show players whose email starts with haris.
44. LIKE: Show players whose full name contains sha.

## Part F: Join Queries

45. Use INNER JOIN to show registration details.
46. Use LEFT JOIN to show all players and their teams.
47. Use LEFT JOIN to show all tournaments and their registered teams.
48. Use RIGHT JOIN to show all matches with winner teams.
49. Show Teams that Exist in Matches But, Not Exist in Prizes.
50. Use FULL JOIN to show tournaments and prizes.
51. Use SELF JOIN to show teams playing against each other and Winner Team.

## Aggregate Function Queries

52. Show total, average, highest, and lowest prize amount.
53. Count total players and show first/last player name alphabetically.

## User Defined Functions

54. Create a scalar function to display total matches.
55. Create a scalar function to calculate total match score.
56. Create a table-valued function to show all active players who are in Teams.
57. Create a table-valued function to show tournaments by status.

## Stored Procedures

### Non Parameteric Procedure

58. Create a procedure to show all active players.

### Parameteric Procedure

59. Create a procedure to show tournaments by status.

### Procedure With IF ELSE

60. Create a procedure to check whether a team has won any prize or not.

### Procedure With WHILE Loop

61. Show teams who won prize in a specific tournament.
