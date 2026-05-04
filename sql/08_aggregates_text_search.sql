USE [DB];
GO

/* =========================
   AGGREGATE AND TEXT SEARCH COMMANDS
   ========================= */

-- Q38. SUM: Show total prize amount.
SELECT SUM(prize_amount) AS total_prize_amount
FROM tbl_Prizes;

-- Q39. AVG: Show average total match score.
SELECT AVG(team1_score + team2_score) AS average_total_match_score
FROM tbl_Matches;

-- Q40. COUNT: Count active players.
SELECT COUNT(*) AS active_player_count
FROM tbl_Players
WHERE is_active_flag = 1;

-- Q41. Other Numeric Operation: Show highest and lowest prize amount.
SELECT MAX(prize_amount) AS highest_prize_amount,
       MIN(prize_amount) AS lowest_prize_amount
FROM tbl_Prizes;

-- Q42. LIKE: Show players whose email ends with arena.com.
SELECT full_name, email
FROM tbl_Players
WHERE email LIKE '%arena.com';

-- Q43. LIKE: Show players whose email starts with ali.
SELECT full_name, email
FROM tbl_Players
WHERE email LIKE 'ali%';

-- Q44. LIKE: Show players whose full name contains rah.
SELECT full_name, email
FROM tbl_Players
WHERE full_name LIKE '%rah%';
GO
