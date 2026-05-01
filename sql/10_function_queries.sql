USE [DB];
GO

/* =========================
   AGGREGATE FUNCTION QUERIES
   ========================= */

-- Q50. Show total, average, highest, and lowest prize amount.
SELECT
    SUM(prize_amount) AS total_prize_amount,
    AVG(prize_amount) AS average_prize_amount,
    MAX(prize_amount) AS highest_prize_amount,
    MIN(prize_amount) AS lowest_prize_amount
FROM tbl_Prizes;
GO

-- Q51. Count total players and show first/last player name alphabetically.
SELECT
    COUNT(full_name) AS total_players,
    MIN(full_name) AS first_player_name,
    MAX(full_name) AS last_player_name
FROM tbl_Players;
GO

/* =========================
   USER DEFINED FUNCTIONS
   ========================= */

-- Q52. Create a scalar function to show a fixed message.
CREATE OR ALTER FUNCTION dbo.fn_ProjectName()
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN 'Tournament Management System';
END;
GO

SELECT dbo.fn_ProjectName() AS project_name;
GO

-- Q53. Create a scalar function to calculate total match score.
CREATE OR ALTER FUNCTION dbo.fn_TotalMatchScore
(
    @team1_score INT,
    @team2_score INT
)
RETURNS INT
AS
BEGIN
    RETURN @team1_score + @team2_score;
END;
GO

SELECT
    match_id,
    team1_score,
    team2_score,
    dbo.fn_TotalMatchScore(team1_score, team2_score) AS total_score
FROM tbl_Matches;
GO

-- Q54. Create a table-valued function to show all active players.
CREATE OR ALTER FUNCTION dbo.fn_ShowActivePlayers()
RETURNS TABLE
AS
RETURN
(
    SELECT
        player_id,
        full_name,
        email,
        username
    FROM tbl_Players
    WHERE is_active_flag = 1
);
GO

SELECT *
FROM dbo.fn_ShowActivePlayers();
GO

-- Q55. Create a table-valued function to show tournaments by status.
CREATE OR ALTER FUNCTION dbo.fn_TournamentsByStatus
(
    @status NVARCHAR(20)
)
RETURNS TABLE
AS
RETURN
(
    SELECT
        tournament_id,
        title,
        start_date,
        end_date,
        status
    FROM tbl_Tournaments
    WHERE status = @status
);
GO

SELECT *
FROM dbo.fn_TournamentsByStatus ('Ongoing');
GO

/* =========================
   STORED PROCEDURES
   ========================= */

-- Q56. Create a procedure to show all active players.
CREATE OR ALTER PROCEDURE sp_ShowActivePlayers
AS
BEGIN
    SELECT
        player_id,
        full_name,
        email,
        username
    FROM tbl_Players
    WHERE is_active_flag = 1;
END;
GO

EXEC sp_ShowActivePlayers;
GO

-- Q57. Create a procedure to show tournaments by status.
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
GO

EXEC sp_ShowTournamentsByStatus 'Ongoing';
GO

-- Q58. Create a procedure to check if a player is active or inactive.
CREATE OR ALTER PROCEDURE sp_CheckPlayerStatus
    @player_id INT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM tbl_Players
        WHERE player_id = @player_id
          AND is_active_flag = 1
    )
    BEGIN
        SELECT 'Player is Active' AS player_status;
    END
    ELSE
    BEGIN
        SELECT 'Player is Inactive or Not Found' AS player_status;
    END
END;
GO

EXEC sp_CheckPlayerStatus 1;
GO

-- Q59. Create a procedure to print numbers from 1 to 5.
CREATE OR ALTER PROCEDURE sp_PrintNumbers
AS
BEGIN
    DECLARE @num INT;
    SET @num = 1;

    WHILE @num <= 5
    BEGIN
        PRINT @num;
        SET @num = @num + 1;
    END
END;
GO

EXEC sp_PrintNumbers;
GO
