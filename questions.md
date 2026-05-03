# Haris SQL Questions

This question list is copied from the question comments in `final-source-code/Final Source Code.sql`.

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
9. Change a column data type.
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
24. IN: Show tournaments with selected statuses.
25. BETWEEN: Show tournaments between two dates.
26. AND: Show active players whose username starts with a.
27. OR: Show tournaments having Cup or Challenge in title.
28. GROUP BY: Count players in each team.
29. ORDER BY: Show games in alphabetical order.
30. HAVING: Show teams having 2 or more players.

## Part C2: Subqueries

31. IN Subquery: Show teams that are registered.
32. NOT IN Subquery: Show tournaments that have no matches.
33. EXISTS Subquery: Show tournaments that have prizes.
34. NOT EXISTS Subquery: Show tournaments with no registered teams.
35. ANY Subquery: Show games bigger than any Sports game team size.
36. ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.

## Part C3: Aggregate Functions

## Part C3-A: Numeric Aggregation

37. SUM: Show total prize amount.
38. AVG: Show average total match score.
39. COUNT: Count active players.
40. Other Numeric Operation: Show highest and lowest prize amount.

## Part C3-B: Text / Word Aggregation

41. LIKE: Show players whose email ends with arena.com.
42. LIKE: Show players whose email starts with ali.
43. LIKE: Show players whose full name contains rah.

## Part F: Join Queries

44. Use INNER JOIN to show registration details.
45. Use LEFT JOIN to show all players and their teams.
46. Use LEFT JOIN to show all tournaments and their registered teams.
47. Use RIGHT JOIN to show all matches with winner teams.
48. Use FULL JOIN to show tournaments and prizes.
49. Use SELF JOIN to show teams playing against each other.

## Aggregate Function Queries

50. Show total, average, highest, and lowest prize amount.
51. Count total players and show first/last player name alphabetically.

## User Defined Functions

52. Create a scalar function to show a fixed message.
53. Create a scalar function to calculate total match score.
54. Create a table-valued function to show all active players.
55. Create a table-valued function to show tournaments by status.

## Stored Procedures

### Non Parameteric Procedure

56. Create a procedure to show all active players.

### Parameteric Procedure

57. Create a procedure to show tournaments by status.

### Procedure With IF ELSE

58. Create a procedure to check if a player is active or inactive.

### Procedure With WHILE Loop

59. Create a procedure to show tournament matches using WHILE loop.
