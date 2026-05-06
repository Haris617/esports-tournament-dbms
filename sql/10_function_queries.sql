USE [DB];
GO

/* =========================
   AGGREGATE FUNCTION QUERIES
   ========================= */

-- Q51. Show total, average, highest, and lowest prize amount.
SELECT
    SUM(prize_amount) AS total_prize_amount,
    AVG(prize_amount) AS average_prize_amount,
    MAX(prize_amount) AS highest_prize_amount,
    MIN(prize_amount) AS lowest_prize_amount
FROM tbl_Prizes;
GO

-- Q52. Count total players and show first/last player name alphabetically.
SELECT
    COUNT(full_name) AS total_players,
    MIN(full_name) AS first_player_name,
    MAX(full_name) AS last_player_name
FROM tbl_Players;
GO

/* =========================
   USER DEFINED FUNCTIONS
   ========================= */

-- Q53. Create a scalar function to display total matches.
CREATE OR ALTER FUNCTION fn_displayTotalMatches()
RETURNS INT
AS
BEGIN
    DECLARE @totalMatches INT;

    SELECT @totalMatches = COUNT(*)
    FROM tbl_Matches;

    RETURN @totalMatches;
END;


GO

SELECT dbo.fn_displayTotalMatches() AS totalMatches;
GO

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


GO

SELECT
    match_id,
    team1_score,
    team2_score,
    dbo.fn_TotalMatchScore(team1_score, team2_score) AS total_score
FROM tbl_Matches;
GO

-- Q55. Create a table-valued function to show all active players who are in Teams.
CREATE OR ALTER FUNCTION fn_ShowActivePlayers()
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM tbl_Players P
    WHERE P.is_active_flag = 1
      AND P.player_id IN (
          SELECT TP.player_id
          FROM tbl_TeamPlayers TP
      )
);


GO

SELECT *
FROM dbo.fn_ShowActivePlayers();
GO

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


GO

SELECT *
FROM dbo.fn_TournamentsByStatus ('Ongoing')
GO

/* =========================
   STORED PROCEDURES
   ========================= */

-- Q57. Create a procedure to show all active players.

CREATE OR ALTER PROCEDURE sp_ShowActivePlayers
AS
BEGIN
    SELECT *
    FROM tbl_Players
    WHERE is_active_flag = 1
END

GO

EXEC sp_ShowActivePlayers;
GO

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


GO

EXEC sp_ShowTournamentsByStatus 'Ongoing';
GO

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

GO

EXEC CheckPlayerStatus 1;
GO

-- Q60. Show teams who won prize in a specific tournament.

CREATE OR ALTER PROCEDURE sp_TeamWinningPrice
    @TournamentID INT
AS
BEGIN
    DECLARE @teamID INT;
    SET @teamID = 1;

    WHILE @teamID <= 12
    BEGIN
        SELECT T.team_name
        FROM tbl_Teams T
        INNER JOIN tbl_Prizes P
            ON P.team_id = T.team_id
           AND P.team_id = @teamID
           AND P.tournament_id = @TournamentID;

        SET @teamID = @teamID + 1;
    END
END;

GO

EXEC sp_TeamWinningPrice 1;
GO
