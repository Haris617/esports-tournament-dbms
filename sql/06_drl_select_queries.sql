USE [DB];
GO

/* =========================
   DRL COMMANDS USING CLAUSES
   ========================= */

-- Q22. SELECT: Show all games.
SELECT *
FROM tbl_Games;

-- Q23. WHERE: Show only active players.
SELECT *
FROM tbl_Players
WHERE is_active_flag = 1;

-- Q24. WHERE: Show Only Inactive Players
SELECT *
FROM tbl_Players
WHERE is_active_flag = 0;

-- Q25. IN: Show tournaments with selected statuses.
SELECT *
FROM tbl_Tournaments
WHERE status IN ('Finished', 'Ongoing');

-- Q26. BETWEEN: Show tournaments between two dates.
SELECT tournament_id, title, start_date, end_date
FROM tbl_Tournaments
WHERE start_date BETWEEN '2026-05-01' AND '2026-09-30';

-- Q27. AND: Show active players whose username starts with a.
SELECT *
FROM tbl_Players
WHERE is_active_flag = 1
  AND username LIKE 'a%';

-- Q28. OR: Show tournaments having Valorant or Football in title.
SELECT *
FROM tbl_Tournaments
WHERE title LIKE '%Valorant%'
   OR title LIKE '%Football%';

-- Q29. GROUP BY: Count players in each team.
SELECT team_id,
       COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id;

-- Q30. ORDER BY: Show games in alphabetical order.
SELECT *
FROM tbl_Games
ORDER BY game_name ASC;

-- Q31. HAVING: Show teams having 2 or more players.
SELECT team_id, COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id
HAVING COUNT(player_id) >= 2;
GO
