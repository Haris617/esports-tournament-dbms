USE [DB];
GO

/* =========================
   SUBQUERY COMMANDS
   ========================= */

-- Q32. IN Subquery: Show teams that are registered.
SELECT *
FROM tbl_Teams
WHERE team_id IN (
    SELECT team_id
    FROM tbl_Registeration
);

-- Q33. NOT IN Subquery: Show tournaments that have no matches.
SELECT *
FROM tbl_Tournaments
WHERE tournament_id NOT IN (
    SELECT tournament_id
    FROM tbl_Matches
);

-- Q34. EXISTS Subquery: Show tournaments that have prizes.
SELECT *
FROM tbl_Tournaments t
WHERE EXISTS (
    SELECT 1
    FROM tbl_Prizes p
    WHERE p.tournament_id = t.tournament_id
);

-- Q35. NOT EXISTS Subquery: Show tournaments with no registered teams.
SELECT *
FROM tbl_Tournaments t
WHERE NOT EXISTS (
    SELECT 1
    FROM tbl_Registeration r
    WHERE r.tournament_id = t.tournament_id
);

-- Q36. ANY Subquery: Show games bigger than any Sports game team size.
SELECT game_name, genre, max_team_size
FROM tbl_Games
WHERE max_team_size > ANY (
    SELECT max_team_size
    FROM tbl_Games
    WHERE genre = 'Sports'
);

-- Q37. ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.
SELECT game_name, genre, max_team_size
FROM tbl_Games
WHERE max_team_size >= ALL (
    SELECT max_team_size
    FROM tbl_Games
    WHERE genre = 'Battle Royale'
);
GO
