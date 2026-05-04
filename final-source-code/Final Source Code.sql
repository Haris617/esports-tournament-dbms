
/* =========================
   PART A: DDL COMMANDS
   ========================= */

create Database DB
use DB

/* =========================
   PART A0: TEST TABLE PRACTICE
   ========================= */

-- Q1. Create the test table.

CREATE TABLE tbl_testTable (
    tt_id INT IDENTITY(1,1) PRIMARY KEY,
    tt_name NVARCHAR(40) NOT NULL,
    tt_email NVARCHAR(100) NOT NULL,
    tt_phone_number NVARCHAR(20) NOT NULL,
    tt_age NVARCHAR(5) NULL
);

-- Q2. Insert records into the test table.
INSERT INTO tbl_testTable (tt_name, tt_email, tt_phone_number, tt_age)
VALUES
('Ali Khan', 'ali@test.com', '03001234567', '20'),
('Sara Ahmed', 'sara@test.com', '03111234567', '22'),
('Usman Raza', 'usman@test.com', '03221234567', '28');

-- Q3. Add a constraint.
ALTER TABLE tbl_testTable
ADD CONSTRAINT uq_tbl_testTable_tt_email UNIQUE (tt_email);

-- Q4. Drop a constraint.
ALTER TABLE tbl_testTable
DROP CONSTRAINT uq_tbl_testTable_tt_email;

-- Q5. Rename a column.
EXEC sp_rename 'tbl_testTable.tt_name', 'tt_full_name', 'COLUMN';

-- Q6. Add a new column.
ALTER TABLE tbl_testTable
ADD tt_status NVARCHAR(20) NULL;

-- Q7. Modify a column.
UPDATE tbl_testTable
SET tt_status = 'Active'
WHERE tt_status IS NULL;

-- Q8. Delete a column.
ALTER TABLE tbl_testTable
DROP COLUMN tt_status;

-- Q9. Change a column data type.
ALTER TABLE tbl_testTable
ALTER COLUMN tt_age INT NULL;

-- Q10. Change a column size.
ALTER TABLE tbl_testTable
ALTER COLUMN tt_full_name NVARCHAR(80) NOT NULL;

-- Q11. Empty the test table.
TRUNCATE TABLE tbl_testTable;

-- Q12. Delete the test table.
DROP TABLE tbl_testTable;

--###############
-- MAIN STUFF
--###############

CREATE TABLE tbl_Games (
    game_id INT PRIMARY KEY,
    game_name NVARCHAR(80) NOT NULL,
    genre NVARCHAR(50) NOT NULL,
    max_team_size INT NOT NULL
);

CREATE TABLE tbl_Tournaments (
    tournament_id INT PRIMARY KEY,
    game_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Games(game_id),
    title NVARCHAR(100) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status NVARCHAR(20) NOT NULL
);

CREATE TABLE tbl_Teams (
    team_id INT PRIMARY KEY,
    team_name NVARCHAR(80) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT(GETDATE())
);

CREATE TABLE tbl_Players (
    player_id INT PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    username NVARCHAR(40) NOT NULL UNIQUE,
    is_active_flag INT NOT NULL
);

CREATE TABLE tbl_TeamPlayers (
    team_player_id INT PRIMARY KEY,
    team_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    player_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Players(player_id),
    membership_status NVARCHAR(10) NOT NULL
);

CREATE TABLE tbl_Matches (
    match_id INT PRIMARY KEY,
    tournament_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Tournaments(tournament_id),
    team1_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    team2_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    winner_team_id INT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    team1_score INT NOT NULL,
    team2_score INT NOT NULL,
    played_at DATETIME NOT NULL
);

CREATE TABLE tbl_Registeration (
    registeration_id INT PRIMARY KEY,
    tournament_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Tournaments(tournament_id),
    team_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    match_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Matches(match_id)
);

CREATE TABLE tbl_Prizes (
    prize_id INT PRIMARY KEY,
    tournament_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Tournaments(tournament_id),
    team_id INT NOT NULL FOREIGN KEY REFERENCES tbl_Teams(team_id),
    position INT NOT NULL CHECK (position BETWEEN 1 AND 3),
    prize_title NVARCHAR(20) NOT NULL,
    prize_amount INT NOT NULL
);

/* =============================
   PART B: DML COMMANDS
   ============================= */

INSERT INTO tbl_Games (game_id, game_name, genre, max_team_size)
VALUES
(1, 'Valorant', 'FPS', 5),
(2, 'Football', 'Sports', 1),
(3, 'Counter Strike', 'FPS', 5),
(4, 'Apex Legends', 'Battle Royale', 3),
(5, 'COD', 'FPS', 5),
(6, 'Delta Force', 'FPS', 4),
(7, 'PUBG', 'Battle Royale', 4),
(8, 'DOTA 2', 'MOBA', 5);

INSERT INTO tbl_Tournaments (tournament_id, game_id, title, start_date, end_date, status)
VALUES
(1, 1, 'Valorant Champions Cup', '2026-02-10', '2026-02-12', 'Finished'),
(2, 8, 'DOTA 2 Masters', '2026-03-05', '2026-03-07', 'Finished'),
(3, 2, 'Football Knockout', '2026-04-15', '2026-04-15', 'Finished'),
(4, 3, 'Counter Strike Showdown', '2026-05-20', '2026-05-22', 'Upcoming'),
(5, 4, 'Apex Legends Trials', '2026-06-18', '2026-06-19', 'Upcoming'),
(6, 5, 'COD Elite League', '2026-07-12', '2026-07-14', 'Upcoming'),
(7, 6, 'Delta Force Challenge', '2026-08-08', '2026-08-10', 'Upcoming'),
(8, 7, 'PUBG Battle Cup', '2026-09-14', '2026-09-16', 'Ongoing'),
(9, 4, 'Apex Open Qualifier', '2026-10-05', '2026-10-06', 'Upcoming');

INSERT INTO tbl_Teams (team_id, team_name, created_at)
VALUES
(1, 'Falcon Fury', '2026-01-05 10:00:00'),
(2, 'Byte Bandits', '2026-01-05 10:15:00'),
(3, 'Ancient Titans', '2026-02-01 11:00:00'),
(4, 'Mystic Mids', '2026-02-01 11:15:00'),
(5, 'Goal Diggers', '2026-03-01 09:30:00'),
(6, 'Net Strikers', '2026-03-01 09:45:00'),
(7, 'Strike Core', '2026-04-05 12:00:00'),
(8, 'Flash Point', '2026-04-05 12:15:00'),
(9, 'Storm Riders', '2026-05-15 14:00:00'),
(10, 'Zone Hunters', '2026-05-15 14:15:00'),
(11, 'Reserve Squad', '2026-08-15 10:00:00'),
(12, 'Circle Breakers', '2026-08-15 10:15:00');

INSERT INTO tbl_Players (player_id, full_name, email, username, is_active_flag)
VALUES
(1, 'Ahsan Khan', 'ahsan@arena.com', 'ahsanace', 1),
(2, 'Sara Ali', 'sara@arena.com', 'sara_strat', 1),
(3, 'Hamza Noor', 'hamza@arena.com', 'hamzafrag', 1),
(4, 'Zoya Iqbal', 'zoya@arena.com', 'zoyashot', 1),
(5, 'Bilal Sheikh', 'bilal@arena.com', 'bilalmid', 1),
(6, 'Hira Ahmed', 'hira@arena.com', 'hirasupport', 1),
(7, 'Daniyal Raza', 'daniyal@arena.com', 'daniyaldash', 1),
(8, 'Mehak Siddiqui', 'mehak@arena.com', 'mehakmacro', 1),
(9, 'Aliyan Hussain', 'aliyan@arena.com', 'aliyanops', 0),
(10, 'Komal Fatima', 'komal@arena.com', 'komalzone', 0),
(11, 'Umar Farooq', 'umar@arena.com', 'umarcarry', 1),
(12, 'Iman Tariq', 'iman@arena.com', 'imantactics', 1),
(13, 'Noor Reserve', 'noor@arena.com', 'noorbench', 1);

INSERT INTO tbl_TeamPlayers (team_player_id, team_id, player_id, membership_status)
VALUES
(1, 1, 1, 'Active'),
(2, 1, 2, 'Active'),
(3, 2, 3, 'Active'),
(4, 2, 4, 'Active'),
(5, 3, 5, 'Active'),
(6, 3, 6, 'Inactive'),
(7, 4, 7, 'Active'),
(8, 4, 8, 'Inactive'),
(9, 5, 9, 'Inactive'),
(10, 5, 10, 'Inactive'),
(11, 6, 11, 'Active'),
(12, 6, 12, 'Active'),
(13, 7, 2, 'Active'),
(14, 11, 12, 'Inactive'),
(15, 12, 13, 'Active');

INSERT INTO tbl_Matches (match_id, tournament_id, team1_id, team2_id, winner_team_id, team1_score, team2_score, played_at)
VALUES
(1, 1, 1, 2, 1, 13, 8, '2026-02-10 14:00:00'),
(2, 1, 2, 1, 1, 10, 13, '2026-02-12 18:00:00'),
(3, 2, 3, 4, 3, 2, 1, '2026-03-05 16:00:00'),
(4, 2, 4, 3, 3, 0, 2, '2026-03-07 18:00:00'),
(5, 3, 5, 6, 5, 4, 2, '2026-04-15 11:00:00'),
(6, 3, 6, 5, 5, 1, 3, '2026-04-15 14:00:00'),
(7, 4, 7, 8, 7, 16, 12, '2026-05-20 15:00:00'),
(8, 4, 8, 7, 8, 14, 13, '2026-05-21 15:00:00'),
(9, 8, 11, 12, NULL, 0, 0, '2026-09-14 16:00:00'),
(10, 5, 9, 10, NULL, 0, 0, '2026-06-18 18:00:00');

INSERT INTO tbl_Registeration (registeration_id, tournament_id, team_id, match_id)
VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 2, 2),
(4, 1, 1, 2),
(5, 2, 3, 3),
(6, 2, 4, 3),
(7, 2, 4, 4),
(8, 2, 3, 4),
(9, 3, 5, 5),
(10, 3, 6, 5),
(11, 3, 6, 6),
(12, 3, 5, 6),
(13, 4, 7, 7),
(14, 4, 8, 7),
(15, 4, 8, 8),
(16, 4, 7, 8),
(17, 8, 11, 9),
(18, 8, 12, 9),
(19, 5, 9, 10),
(20, 5, 10, 10);

INSERT INTO tbl_Prizes (prize_id, tournament_id, team_id, position, prize_title, prize_amount)
VALUES
(1, 1, 1, 1, 'Gold', 5000),
(2, 1, 2, 2, 'Silver', 2500),
(3, 2, 3, 1, 'Gold', 6000),
(4, 2, 4, 2, 'Silver', 3000),
(5, 3, 5, 1, 'Gold', 4500),
(6, 3, 6, 2, 'Silver', 2000),
(7, 4, 7, 1, 'Gold', 4000),
(8, 4, 8, 2, 'Silver', 1800),
(9, 8, 11, 3, 'Bronze', 900);

-- Q13. Show all EERD tables.
SELECT * FROM tbl_Games;
SELECT * FROM tbl_Tournaments;
SELECT * FROM tbl_Registeration;
SELECT * FROM tbl_Teams;
SELECT * FROM tbl_TeamPlayers;
SELECT * FROM tbl_Players;
SELECT * FROM tbl_Matches;
SELECT * FROM tbl_Prizes;

/* =========================
   UPDATE OPERATIONS
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


/* =========================
PART C: DRL COMMANDS
========================= */


    /* =========================
    PART C1: QUERIES USING CLAUSES
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


-- Q28. OR: Show tournaments having Cup or Challenge in title.
SELECT *
FROM tbl_Tournaments
WHERE title LIKE '%Cup%'
   OR title LIKE '%Challenge%';


-- Q29. GROUP BY: Count players in each team.
SELECT team_id,
       COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id;


-- Q30. ORDER BY: Show games in alphabetical order.
SELECT *
FROM tbl_Games
ORDER BY game_name;


-- Q31. HAVING: Show teams having 2 or more players.
SELECT team_id, COUNT(player_id) AS total_players
FROM tbl_TeamPlayers
GROUP BY team_id
HAVING COUNT(player_id) >= 2;



    /* =========================
        PART C2: SUBQUERIES
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



    /* =========================
        PART C3: AGGREGATE FUNCTIONS
        ========================= */


        /* =========================
           PART C3-A: NUMERIC AGGREGATION
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



    /* ===================================
       PART C3-B: TEXT / WORD AGGREGATION
       =================================== */

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



/* =========================
   PART F: JOIN QUERIES
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

/*=========================
        FUNCTIONS
=========================== */


        /* =========================
           1. AGGREGATE FUNCTIONS
           ========================= */


/* Numeric Aggregate Function */

-- Q51. Show total, average, highest, and lowest prize amount.
SELECT
    SUM(prize_amount) AS total_prize_amount,
    AVG(prize_amount) AS average_prize_amount,
    MAX(prize_amount) AS highest_prize_amount,
    MIN(prize_amount) AS lowest_prize_amount
FROM tbl_Prizes;


/* Varchar Aggregate Function */

-- Q52. Count total players and show first/last player name alphabetically.
SELECT
    COUNT(full_name) AS total_players,
    MIN(full_name) AS first_player_name,
    MAX(full_name) AS last_player_name
FROM tbl_Players;



  /* =========================
   USER DEFINED FUNCTIONS
   ========================= */


/* =========================
   1. SCALAR FUNCTION
   ========================= */

-- Q53. Create a scalar function to show a fixed message.
CREATE OR ALTER FUNCTION fn_ProjectName()
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN 'Tournament Management System';
END;


SELECT dbo.fn_ProjectName() AS project_name;


/* =========================
   2. SCALAR FUNCTION WITH PARAMETERS AND CALCULATION
   ========================= */

-- Q54. Create a scalar function to calculate total match score.
CREATE OR ALTER FUNCTION fn_TotalMatchScore
(
    @team1_score INT,
    @team2_score INT
)
RETURNS INT
AS
BEGIN
    RETURN @team1_score + @team2_score;
END;


SELECT
    match_id,
    team1_score,
    team2_score,
    dbo.fn_TotalMatchScore(team1_score, team2_score) AS total_score
FROM tbl_Matches;




/* =========================
   3. TABLE VALUED FUNCTION
   ========================= */

-- Q55. Create a table-valued function to show all active players.
CREATE OR ALTER FUNCTION fn_ShowActivePlayers()
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM tbl_Players
    WHERE is_active_flag = 1
);


SELECT *
FROM dbo.fn_ShowActivePlayers();




/* ========================================
   4. TABLE VALUED FUNCTION WITH PARAMETER
   ========================================= */

-- Q56. Create a table-valued function to show tournaments by status.
CREATE OR ALTER FUNCTION fn_TournamentsByStatus
(
    @status NVARCHAR(20)
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM tbl_Tournaments
    WHERE status = @status
);


SELECT *
FROM dbo.fn_TournamentsByStatus ('Ongoing')


/* =========================
   STORED PROCEDURES
   ========================= */

    /* =========================
       1. NON PARAMETERIC PROCEDURE
       ========================= */

-- Q57. Create a procedure to show all active players.

CREATE OR ALTER PROCEDURE sp_ShowActivePlayers
AS

    SELECT *
    FROM tbl_Players
    WHERE is_active_flag = 1


EXEC sp_ShowActivePlayers;



/* =========================
   2. PARAMETERIC PROCEDURE
   ========================= */

-- Q58. Create a procedure to show tournaments by status.

CREATE OR ALTER PROCEDURE sp_ShowTournamentsByStatus
    @status NVARCHAR(20)
AS
BEGIN
    SELECT
        tournament_id,
        title,
        start_date,
        end_date,
        status
    FROM tbl_Tournaments
    WHERE status = @status;
END;


EXEC sp_ShowTournamentsByStatus 'Ongoing';



/* =========================
   3. PROCEDURE WITH IF ELSE
   ========================= */

-- Q59. Create a procedure to check if a player is active or inactive.

CREATE PROCEDURE CheckPlayerStatus
    @is_active_flag INT
AS
BEGIN
    IF @is_active_flag = 1
        PRINT 'Player is Active';
    ELSE
        PRINT 'Player is Inactive';
END;

EXEC CheckPlayerStatus 1;


/* =========================
   4. PROCEDURE WITH WHILE LOOP
   ========================= */

-- Q60. Create a procedure to print tournament rounds from 1 to 5.

CREATE PROCEDURE sp_PrintTournamentRounds
AS
BEGIN
    DECLARE @round INT = 1;

    WHILE @round <= 5
    BEGIN
        PRINT 'Tournament Round:';
        PRINT @round;

        SET @round = @round + 1;
    END
END;

EXEC sp_PrintTournamentRounds;