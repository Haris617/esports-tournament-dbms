USE [DB];
GO

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
GO
