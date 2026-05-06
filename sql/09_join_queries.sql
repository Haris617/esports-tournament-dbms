USE [DB];
GO

/* =========================
   JOIN QUERIES
   ========================= */

-- Q45. Use INNER JOIN to show registration details.
SELECT r.registeration_id,
       g.game_name,
       t.title AS tournament_title,
       m.match_id,
       tm.team_name
FROM tbl_Registeration r
INNER JOIN tbl_Tournaments t
    ON r.tournament_id = t.tournament_id
INNER JOIN tbl_Games g
    ON t.game_id = g.game_id
INNER JOIN tbl_Matches m
    ON r.match_id = m.match_id
INNER JOIN tbl_Teams tm
    ON r.team_id = tm.team_id

-- Q46. Use LEFT JOIN to show all players and their teams.
SELECT p.full_name,
       p.username,
       tp.membership_status,
       tm.team_name
FROM tbl_Players p
LEFT JOIN tbl_TeamPlayers tp
    ON p.player_id = tp.player_id
LEFT JOIN tbl_Teams tm
    ON tp.team_id = tm.team_id

-- Q47. Use LEFT JOIN to show all tournaments and their registered teams.
SELECT t.title,
       tm.team_name,
       r.match_id
FROM tbl_Tournaments t
LEFT JOIN tbl_Registeration r
    ON t.tournament_id = r.tournament_id
LEFT JOIN tbl_Teams tm
    ON r.team_id = tm.team_id

-- Q48. Use RIGHT JOIN to show all matches with winner teams.
SELECT m.match_id,
       winner.team_name AS winner_team_name,
       m.team1_score,
       m.team2_score,
       m.played_at
FROM tbl_Teams winner
RIGHT JOIN tbl_Matches m
    ON winner.team_id = m.winner_team_id
ORDER BY m.match_id;

-- Q49. Use FULL JOIN to show tournaments and prizes.
SELECT t.title,
       p.prize_title
FROM tbl_Tournaments t
FULL JOIN tbl_Prizes p
    ON t.tournament_id = p.tournament_id

-- Q50. Use SELF JOIN to show teams playing against each other and Winner Team.
SELECT T1.team_name AS Team_1,
       T2.team_name AS Team_2,
       W.team_name AS Winner_Team
FROM tbl_Matches M
INNER JOIN tbl_Teams T1
    ON M.team1_id = T1.team_id
INNER JOIN tbl_Teams T2
    ON M.team2_id = T2.team_id
LEFT JOIN tbl_Teams W
    ON M.winner_team_id = W.team_id;
GO
