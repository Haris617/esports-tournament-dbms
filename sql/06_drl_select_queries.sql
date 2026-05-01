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


-- Q24. IN: Show tournaments with selected statuses.
SELECT *
FROM tbl_Tournaments
WHERE status IN ('Finished', 'Ongoing');


-- Q25. BETWEEN: Show tournaments between two dates.
SELECT tournament_id, title, start_date, end_date
FROM tbl_Tournaments
WHERE start_date BETWEEN '2026-05-01' AND '2026-09-30';


-- Q26. AND: Show active players whose username starts with a.
SELECT *
FROM tbl_Players
WHERE is_active_flag = 1
  AND username LIKE 'a%';


-- Q27. OR: Show tournaments having Cup or Challenge in title.
SELECT *
FROM tbl_Tournaments
WHERE title LIKE '%Cup%'
   OR title LIKE '%Challenge%';


-- Q28. GROUP BY: Count players in each team.
SELECT team_id,
       COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id;


-- Q29. ORDER BY: Show games in alphabetical order.
SELECT *
FROM tbl_Games
ORDER BY game_name;


-- Q30. HAVING: Show teams having 2 or more players.
SELECT team_id,
       COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id
HAVING COUNT(player_id) >= 2;
GO
