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
       p.prize_title,
       p.position,
       p.prize_amount
FROM tbl_Tournaments t
FULL JOIN tbl_Prizes p
    ON t.tournament_id = p.tournament_id

-- Q50. Use SELF JOIN to show teams playing against each other.
SELECT t.title,
       r1.match_id,
       team_a.team_name AS team_one,
       team_b.team_name AS team_two
FROM tbl_Registeration r1
INNER JOIN tbl_Registeration r2
    ON r1.tournament_id = r2.tournament_id
   AND r1.match_id = r2.match_id
   AND r1.team_id < r2.team_id
INNER JOIN tbl_Tournaments t
    ON r1.tournament_id = t.tournament_id
INNER JOIN tbl_Teams team_a
    ON r1.team_id = team_a.team_id
INNER JOIN tbl_Teams team_b
    ON r2.team_id = team_b.team_id
GO
