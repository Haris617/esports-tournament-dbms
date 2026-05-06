USE [DB];
GO

/* =========================
   MAIN TABLE INSERTS
   ========================= */

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
(1, 1, 'Valorant Championship', '2026-02-10', '2026-02-12', 'Finished'),
(2, 8, 'DOTA 2 Championship', '2026-03-05', '2026-03-07', 'Finished'),
(3, 2, 'Football Championship', '2026-04-15', '2026-04-15', 'Finished'),
(4, 3, 'Counter Strike Championship', '2026-05-20', '2026-05-22', 'Upcoming'),
(5, 4, 'Apex Legends Championship', '2026-06-18', '2026-06-19', 'Upcoming'),
(6, 5, 'COD Championship', '2026-07-12', '2026-07-14', 'Upcoming'),
(7, 6, 'Delta Force Championship', '2026-08-08', '2026-08-10', 'Upcoming'),
(8, 7, 'PUBG Championship', '2026-09-14', '2026-09-16', 'Ongoing'),
(9, 4, 'Apex Legends Championship', '2026-10-05', '2026-10-06', 'Upcoming');

INSERT INTO tbl_Teams (team_id, team_name, created_at)
VALUES
(1, 'SilentStorm', '2026-01-05 10:00:00'),
(2, 'ToughRiders', '2026-01-05 10:15:00'),
(3, 'TonyRiders', '2026-02-01 11:00:00'),
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
(1, 'Haris', 'haris@arena.com', 'haris', 1),
(2, 'Usman', 'usman@arena.com', 'usman', 1),
(3, 'Ephraim', 'ephraim@arena.com', 'ephraim', 1),
(4, 'Saad', 'saad@arena.com', 'saad', 1),
(5, 'Shaaf', 'shaaf@arena.com', 'shaaf', 1),
(6, 'Asadullah', 'asadullah@arena.com', 'asadullah', 1),
(7, 'Shafey', 'shafey@arena.com', 'shafey', 1),
(8, 'Mohid', 'mohid@arena.com', 'mohid', 1),
(9, 'Wahab', 'wahab@arena.com', 'wahab', 0),
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
GO
