USE [DB];
GO

/* =========================
   UPDATE AND DELETE OPERATIONS
   ========================= */

-- Q14. Update one record using WHERE.
UPDATE tbl_Tournaments
SET status = 'Ongoing'
WHERE tournament_id = 4;


-- Q15. Update multiple records.
UPDATE tbl_Players
SET is_active_flag = 0
WHERE player_id IN (11, 12, 13);


-- Q16. Update records using BETWEEN.
UPDATE tbl_Prizes
SET prize_amount = prize_amount + 500
WHERE prize_id BETWEEN 5 AND 8;


-- Q17. Update records using IN.
UPDATE tbl_TeamPlayers
SET membership_status = 'Inactive'
WHERE team_player_id IN (3, 7, 12);


-- Q18. Update records using GROUP BY and HAVING.
UPDATE tbl_Teams
SET team_name = team_name + ' Squad'
WHERE team_id IN (
    SELECT team_id
    FROM tbl_TeamPlayers
    GROUP BY team_id
    HAVING COUNT(player_id) >= 2
);


/* =========================
   DELETE OPERATIONS
   ========================= */

-- Q19. Delete one record.
DELETE FROM tbl_Registeration
WHERE registeration_id = 16;


-- Q20. Delete multiple records.
DELETE FROM tbl_TeamPlayers
WHERE team_player_id BETWEEN 13 AND 14;


-- Q21. Soft delete one record.
UPDATE tbl_Players
SET is_active_flag = 0
WHERE player_id = 10;
GO
