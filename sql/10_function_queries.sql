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

-- Q59. Create a procedure to show tournament matches using WHILE loop.
CREATE OR ALTER PROCEDURE sp_ShowTournamentMatchesByLoop
    @tournament_id INT
AS
BEGIN
    DECLARE @current_row INT;
    DECLARE @total_rows INT;

    SET @current_row = 1;

    DECLARE @MatchSource TABLE (
        row_no INT PRIMARY KEY,
        match_id INT,
        tournament_title NVARCHAR(100),
        team_one NVARCHAR(80),
        team_two NVARCHAR(80),
        winner_team NVARCHAR(80),
        team1_score INT,
        team2_score INT,
        played_at DATETIME
    );

    DECLARE @MatchResult TABLE (
        match_id INT,
        tournament_title NVARCHAR(100),
        team_one NVARCHAR(80),
        team_two NVARCHAR(80),
        winner_team NVARCHAR(80),
        team1_score INT,
        team2_score INT,
        played_at DATETIME
    );

    INSERT INTO @MatchSource (
        row_no,
        match_id,
        tournament_title,
        team_one,
        team_two,
        winner_team,
        team1_score,
        team2_score,
        played_at
    )
    SELECT
        ROW_NUMBER() OVER (ORDER BY m.match_id) AS row_no,
        m.match_id,
        t.title AS tournament_title,
        team_one.team_name AS team_one,
        team_two.team_name AS team_two,
        ISNULL(winner.team_name, 'Not Decided') AS winner_team,
        m.team1_score,
        m.team2_score,
        m.played_at
    FROM tbl_Matches m
    INNER JOIN tbl_Tournaments t
        ON m.tournament_id = t.tournament_id
    INNER JOIN tbl_Teams team_one
        ON m.team1_id = team_one.team_id
    INNER JOIN tbl_Teams team_two
        ON m.team2_id = team_two.team_id
    LEFT JOIN tbl_Teams winner
        ON m.winner_team_id = winner.team_id
    WHERE m.tournament_id = @tournament_id;

    SELECT @total_rows = COUNT(*)
    FROM @MatchSource;

    WHILE @current_row <= @total_rows
    BEGIN
        INSERT INTO @MatchResult (
            match_id,
            tournament_title,
            team_one,
            team_two,
            winner_team,
            team1_score,
            team2_score,
            played_at
        )
        SELECT
            match_id,
            tournament_title,
            team_one,
            team_two,
            winner_team,
            team1_score,
            team2_score,
            played_at
        FROM @MatchSource
        WHERE row_no = @current_row;

        SET @current_row = @current_row + 1;
    END

    SELECT *
    FROM @MatchResult;
END;
GO

EXEC sp_ShowTournamentMatchesByLoop 1;
GO
