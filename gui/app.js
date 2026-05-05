const db = {
    "games":  [
                  {
                      "game_id":  1,
                      "game_name":  "Valorant",
                      "genre":  "FPS",
                      "max_team_size":  5
                  },
                  {
                      "game_id":  2,
                      "game_name":  "Football",
                      "genre":  "Sports",
                      "max_team_size":  1
                  },
                  {
                      "game_id":  3,
                      "game_name":  "Counter Strike",
                      "genre":  "FPS",
                      "max_team_size":  5
                  },
                  {
                      "game_id":  4,
                      "game_name":  "Apex Legends",
                      "genre":  "Battle Royale",
                      "max_team_size":  3
                  },
                  {
                      "game_id":  5,
                      "game_name":  "COD",
                      "genre":  "FPS",
                      "max_team_size":  5
                  },
                  {
                      "game_id":  6,
                      "game_name":  "Delta Force",
                      "genre":  "FPS",
                      "max_team_size":  4
                  },
                  {
                      "game_id":  7,
                      "game_name":  "PUBG",
                      "genre":  "Battle Royale",
                      "max_team_size":  4
                  },
                  {
                      "game_id":  8,
                      "game_name":  "DOTA 2",
                      "genre":  "MOBA",
                      "max_team_size":  5
                  }
              ],
    "tournaments":  [
                        {
                            "tournament_id":  1,
                            "game_id":  1,
                            "title":  "Valorant Champions Cup",
                            "start_date":  "2026-02-10",
                            "end_date":  "2026-02-12",
                            "status":  "Finished"
                        },
                        {
                            "tournament_id":  2,
                            "game_id":  8,
                            "title":  "DOTA 2 Masters",
                            "start_date":  "2026-03-05",
                            "end_date":  "2026-03-07",
                            "status":  "Finished"
                        },
                        {
                            "tournament_id":  3,
                            "game_id":  2,
                            "title":  "Football Knockout",
                            "start_date":  "2026-04-15",
                            "end_date":  "2026-04-15",
                            "status":  "Finished"
                        },
                        {
                            "tournament_id":  4,
                            "game_id":  3,
                            "title":  "Counter Strike Showdown",
                            "start_date":  "2026-05-20",
                            "end_date":  "2026-05-22",
                            "status":  "Ongoing"
                        },
                        {
                            "tournament_id":  5,
                            "game_id":  4,
                            "title":  "Apex Legends Trials",
                            "start_date":  "2026-06-18",
                            "end_date":  "2026-06-19",
                            "status":  "Upcoming"
                        },
                        {
                            "tournament_id":  6,
                            "game_id":  5,
                            "title":  "COD Elite League",
                            "start_date":  "2026-07-12",
                            "end_date":  "2026-07-14",
                            "status":  "Upcoming"
                        },
                        {
                            "tournament_id":  7,
                            "game_id":  6,
                            "title":  "Delta Force Challenge",
                            "start_date":  "2026-08-08",
                            "end_date":  "2026-08-10",
                            "status":  "Upcoming"
                        },
                        {
                            "tournament_id":  8,
                            "game_id":  7,
                            "title":  "PUBG Battle Cup",
                            "start_date":  "2026-09-14",
                            "end_date":  "2026-09-16",
                            "status":  "Ongoing"
                        },
                        {
                            "tournament_id":  9,
                            "game_id":  4,
                            "title":  "Apex Open Qualifier",
                            "start_date":  "2026-10-05",
                            "end_date":  "2026-10-06",
                            "status":  "Upcoming"
                        }
                    ],
    "players":  [
                    {
                        "player_id":  1,
                        "full_name":  "Ahsan Khan",
                        "email":  "ahsan@arena.com",
                        "username":  "ahsanace",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  2,
                        "full_name":  "Sara Ali",
                        "email":  "sara@arena.com",
                        "username":  "sara_strat",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  3,
                        "full_name":  "Hamza Noor",
                        "email":  "hamza@arena.com",
                        "username":  "hamzafrag",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  4,
                        "full_name":  "Zoya Iqbal",
                        "email":  "zoya@arena.com",
                        "username":  "zoyashot",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  5,
                        "full_name":  "Bilal Sheikh",
                        "email":  "bilal@arena.com",
                        "username":  "bilalmid",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  6,
                        "full_name":  "Hira Ahmed",
                        "email":  "hira@arena.com",
                        "username":  "hirasupport",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  7,
                        "full_name":  "Daniyal Raza",
                        "email":  "daniyal@arena.com",
                        "username":  "daniyaldash",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  8,
                        "full_name":  "Mehak Siddiqui",
                        "email":  "mehak@arena.com",
                        "username":  "mehakmacro",
                        "is_active_flag":  "Active"
                    },
                    {
                        "player_id":  9,
                        "full_name":  "Aliyan Hussain",
                        "email":  "aliyan@arena.com",
                        "username":  "aliyanops",
                        "is_active_flag":  "Inactive"
                    },
                    {
                        "player_id":  10,
                        "full_name":  "Komal Fatima",
                        "email":  "komal@arena.com",
                        "username":  "komalzone",
                        "is_active_flag":  "Inactive"
                    },
                    {
                        "player_id":  11,
                        "full_name":  "Umar Farooq",
                        "email":  "umar@arena.com",
                        "username":  "umarcarry",
                        "is_active_flag":  "Inactive"
                    },
                    {
                        "player_id":  12,
                        "full_name":  "Iman Tariq",
                        "email":  "iman@arena.com",
                        "username":  "imantactics",
                        "is_active_flag":  "Inactive"
                    },
                    {
                        "player_id":  13,
                        "full_name":  "Noor Reserve",
                        "email":  "noor@arena.com",
                        "username":  "noorbench",
                        "is_active_flag":  "Inactive"
                    }
                ],
    "teams":  [
                  {
                      "team_id":  1,
                      "team_name":  "Falcon Fury Squad",
                      "created_at":  "2026-01-05 10:00"
                  },
                  {
                      "team_id":  2,
                      "team_name":  "Byte Bandits Squad",
                      "created_at":  "2026-01-05 10:15"
                  },
                  {
                      "team_id":  3,
                      "team_name":  "Ancient Titans Squad",
                      "created_at":  "2026-02-01 11:00"
                  },
                  {
                      "team_id":  4,
                      "team_name":  "Mystic Mids Squad",
                      "created_at":  "2026-02-01 11:15"
                  },
                  {
                      "team_id":  5,
                      "team_name":  "Goal Diggers Squad",
                      "created_at":  "2026-03-01 09:30"
                  },
                  {
                      "team_id":  6,
                      "team_name":  "Net Strikers Squad",
                      "created_at":  "2026-03-01 09:45"
                  },
                  {
                      "team_id":  7,
                      "team_name":  "Strike Core",
                      "created_at":  "2026-04-05 12:00"
                  },
                  {
                      "team_id":  8,
                      "team_name":  "Flash Point",
                      "created_at":  "2026-04-05 12:15"
                  },
                  {
                      "team_id":  9,
                      "team_name":  "Storm Riders",
                      "created_at":  "2026-05-15 14:00"
                  },
                  {
                      "team_id":  10,
                      "team_name":  "Zone Hunters",
                      "created_at":  "2026-05-15 14:15"
                  },
                  {
                      "team_id":  11,
                      "team_name":  "Reserve Squad",
                      "created_at":  "2026-08-15 10:00"
                  },
                  {
                      "team_id":  12,
                      "team_name":  "Circle Breakers",
                      "created_at":  "2026-08-15 10:15"
                  }
              ],
    "teamPlayers":  [
                        {
                            "team_player_id":  1,
                            "team_id":  1,
                            "player_id":  1,
                            "membership_status":  "Active"
                        },
                        {
                            "team_player_id":  2,
                            "team_id":  1,
                            "player_id":  2,
                            "membership_status":  "Active"
                        },
                        {
                            "team_player_id":  3,
                            "team_id":  2,
                            "player_id":  3,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  4,
                            "team_id":  2,
                            "player_id":  4,
                            "membership_status":  "Active"
                        },
                        {
                            "team_player_id":  5,
                            "team_id":  3,
                            "player_id":  5,
                            "membership_status":  "Active"
                        },
                        {
                            "team_player_id":  6,
                            "team_id":  3,
                            "player_id":  6,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  7,
                            "team_id":  4,
                            "player_id":  7,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  8,
                            "team_id":  4,
                            "player_id":  8,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  9,
                            "team_id":  5,
                            "player_id":  9,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  10,
                            "team_id":  5,
                            "player_id":  10,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  11,
                            "team_id":  6,
                            "player_id":  11,
                            "membership_status":  "Active"
                        },
                        {
                            "team_player_id":  12,
                            "team_id":  6,
                            "player_id":  12,
                            "membership_status":  "Inactive"
                        },
                        {
                            "team_player_id":  15,
                            "team_id":  12,
                            "player_id":  13,
                            "membership_status":  "Active"
                        }
                    ],
    "matches":  [
                    {
                        "match_id":  1,
                        "tournament_id":  1,
                        "team1_id":  1,
                        "team2_id":  2,
                        "winner_team_id":  1,
                        "team1_score":  13,
                        "team2_score":  8,
                        "played_at":  "2026-02-10 14:00"
                    },
                    {
                        "match_id":  2,
                        "tournament_id":  1,
                        "team1_id":  2,
                        "team2_id":  1,
                        "winner_team_id":  1,
                        "team1_score":  10,
                        "team2_score":  13,
                        "played_at":  "2026-02-12 18:00"
                    },
                    {
                        "match_id":  3,
                        "tournament_id":  2,
                        "team1_id":  3,
                        "team2_id":  4,
                        "winner_team_id":  3,
                        "team1_score":  2,
                        "team2_score":  1,
                        "played_at":  "2026-03-05 16:00"
                    },
                    {
                        "match_id":  4,
                        "tournament_id":  2,
                        "team1_id":  4,
                        "team2_id":  3,
                        "winner_team_id":  3,
                        "team1_score":  0,
                        "team2_score":  2,
                        "played_at":  "2026-03-07 18:00"
                    },
                    {
                        "match_id":  5,
                        "tournament_id":  3,
                        "team1_id":  5,
                        "team2_id":  6,
                        "winner_team_id":  5,
                        "team1_score":  4,
                        "team2_score":  2,
                        "played_at":  "2026-04-15 11:00"
                    },
                    {
                        "match_id":  6,
                        "tournament_id":  3,
                        "team1_id":  6,
                        "team2_id":  5,
                        "winner_team_id":  5,
                        "team1_score":  1,
                        "team2_score":  3,
                        "played_at":  "2026-04-15 14:00"
                    },
                    {
                        "match_id":  7,
                        "tournament_id":  4,
                        "team1_id":  7,
                        "team2_id":  8,
                        "winner_team_id":  7,
                        "team1_score":  16,
                        "team2_score":  12,
                        "played_at":  "2026-05-20 15:00"
                    },
                    {
                        "match_id":  8,
                        "tournament_id":  4,
                        "team1_id":  8,
                        "team2_id":  7,
                        "winner_team_id":  8,
                        "team1_score":  14,
                        "team2_score":  13,
                        "played_at":  "2026-05-21 15:00"
                    },
                    {
                        "match_id":  9,
                        "tournament_id":  8,
                        "team1_id":  11,
                        "team2_id":  12,
                        "winner_team_id":  null,
                        "team1_score":  0,
                        "team2_score":  0,
                        "played_at":  "2026-09-14 16:00"
                    },
                    {
                        "match_id":  10,
                        "tournament_id":  5,
                        "team1_id":  9,
                        "team2_id":  10,
                        "winner_team_id":  null,
                        "team1_score":  0,
                        "team2_score":  0,
                        "played_at":  "2026-06-18 18:00"
                    }
                ],
    "registeration":  [
                          {
                              "registeration_id":  1,
                              "tournament_id":  1,
                              "team_id":  1,
                              "match_id":  1
                          },
                          {
                              "registeration_id":  2,
                              "tournament_id":  1,
                              "team_id":  2,
                              "match_id":  1
                          },
                          {
                              "registeration_id":  3,
                              "tournament_id":  1,
                              "team_id":  2,
                              "match_id":  2
                          },
                          {
                              "registeration_id":  4,
                              "tournament_id":  1,
                              "team_id":  1,
                              "match_id":  2
                          },
                          {
                              "registeration_id":  5,
                              "tournament_id":  2,
                              "team_id":  3,
                              "match_id":  3
                          },
                          {
                              "registeration_id":  6,
                              "tournament_id":  2,
                              "team_id":  4,
                              "match_id":  3
                          },
                          {
                              "registeration_id":  7,
                              "tournament_id":  2,
                              "team_id":  4,
                              "match_id":  4
                          },
                          {
                              "registeration_id":  8,
                              "tournament_id":  2,
                              "team_id":  3,
                              "match_id":  4
                          },
                          {
                              "registeration_id":  9,
                              "tournament_id":  3,
                              "team_id":  5,
                              "match_id":  5
                          },
                          {
                              "registeration_id":  10,
                              "tournament_id":  3,
                              "team_id":  6,
                              "match_id":  5
                          },
                          {
                              "registeration_id":  11,
                              "tournament_id":  3,
                              "team_id":  6,
                              "match_id":  6
                          },
                          {
                              "registeration_id":  12,
                              "tournament_id":  3,
                              "team_id":  5,
                              "match_id":  6
                          },
                          {
                              "registeration_id":  13,
                              "tournament_id":  4,
                              "team_id":  7,
                              "match_id":  7
                          },
                          {
                              "registeration_id":  14,
                              "tournament_id":  4,
                              "team_id":  8,
                              "match_id":  7
                          },
                          {
                              "registeration_id":  15,
                              "tournament_id":  4,
                              "team_id":  8,
                              "match_id":  8
                          },
                          {
                              "registeration_id":  17,
                              "tournament_id":  8,
                              "team_id":  11,
                              "match_id":  9
                          },
                          {
                              "registeration_id":  18,
                              "tournament_id":  8,
                              "team_id":  12,
                              "match_id":  9
                          },
                          {
                              "registeration_id":  19,
                              "tournament_id":  5,
                              "team_id":  9,
                              "match_id":  10
                          },
                          {
                              "registeration_id":  20,
                              "tournament_id":  5,
                              "team_id":  10,
                              "match_id":  10
                          }
                      ],
    "prizes":  [
                   {
                       "prize_id":  1,
                       "tournament_id":  1,
                       "team_id":  1,
                       "position":  1,
                       "prize_title":  "Gold",
                       "prize_amount":  5000
                   },
                   {
                       "prize_id":  2,
                       "tournament_id":  1,
                       "team_id":  2,
                       "position":  2,
                       "prize_title":  "Silver",
                       "prize_amount":  2500
                   },
                   {
                       "prize_id":  3,
                       "tournament_id":  2,
                       "team_id":  3,
                       "position":  1,
                       "prize_title":  "Gold",
                       "prize_amount":  6000
                   },
                   {
                       "prize_id":  4,
                       "tournament_id":  2,
                       "team_id":  4,
                       "position":  2,
                       "prize_title":  "Silver",
                       "prize_amount":  3000
                   },
                   {
                       "prize_id":  5,
                       "tournament_id":  3,
                       "team_id":  5,
                       "position":  1,
                       "prize_title":  "Gold",
                       "prize_amount":  5000
                   },
                   {
                       "prize_id":  6,
                       "tournament_id":  3,
                       "team_id":  6,
                       "position":  2,
                       "prize_title":  "Silver",
                       "prize_amount":  2500
                   },
                   {
                       "prize_id":  7,
                       "tournament_id":  4,
                       "team_id":  7,
                       "position":  1,
                       "prize_title":  "Gold",
                       "prize_amount":  4500
                   },
                   {
                       "prize_id":  8,
                       "tournament_id":  4,
                       "team_id":  8,
                       "position":  2,
                       "prize_title":  "Silver",
                       "prize_amount":  2300
                   },
                   {
                       "prize_id":  9,
                       "tournament_id":  8,
                       "team_id":  11,
                       "position":  3,
                       "prize_title":  "Bronze",
                       "prize_amount":  900
                   }
               ]
};

const tableDefinitions = [
  { name: "tbl_Games", purpose: "Stores game title, genre, and maximum team size.", keys: ["(PK) game_id"] },
  { name: "tbl_Tournaments", purpose: "Stores tournament schedule, status, and selected game.", keys: ["(PK) tournament_id", "(FK) game_id"] },
  { name: "tbl_Teams", purpose: "Stores team details independently.", keys: ["(PK) team_id"] },
  { name: "tbl_Players", purpose: "Stores registered player details with unique email and username.", keys: ["(PK) player_id", "UNIQUE email", "UNIQUE username"] },
  { name: "tbl_TeamPlayers", purpose: "Connects teams and players with membership status.", keys: ["(PK) team_player_id", "(FK) team_id", "(FK) player_id"] },
  { name: "tbl_Matches", purpose: "Stores match teams, winner, scores, and play time.", keys: ["(PK) match_id", "(FK) tournament_id", "(FK) team ids"] },
  { name: "tbl_Registeration", purpose: "Shows which teams played which matches in which tournaments.", keys: ["(PK) registeration_id", "(FK) tournament_id", "(FK) team_id", "(FK) match_id"] },
  { name: "tbl_Prizes", purpose: "Stores prize positions, titles, integer amounts, and winning teams.", keys: ["(PK) prize_id", "(FK) tournament_id", "(FK) team_id", "INT prize_amount", "CHECK position 1-3"] }
];

const relationships = [
  ["tbl_Games -> tbl_Tournaments", "One game can host many tournaments through game_id."],
  ["tbl_Players -> tbl_TeamPlayers <- tbl_Teams", "TeamPlayers connects players to teams with membership_status."],
  ["tbl_Tournaments -> tbl_Matches", "Matches belong to tournaments and store team1, team2, winner, scores, and play time."],
  ["tbl_Tournaments -> tbl_Registeration <- tbl_Teams", "Registeration connects teams to tournament matches."],
  ["tbl_Registeration -> tbl_Matches", "Registeration links registered teams to the matches they played."],
  ["tbl_Prizes -> tbl_Teams", "Prize rows store the tournament, winning team, position, title, and integer amount."]
];

const coverage = [
    {
        "title":  "Canonical source",
        "text":  "Final Source Code.sql uses continuous Q1 to Q60 numbering and drives the rest of the project."
    },
    {
        "title":  "Core schema",
        "text":  "8 main tables with primary keys, foreign keys, unique constraints, and check constraints."
    },
    {
        "title":  "Test-table DDL",
        "text":  "Test table practice covers constraint add/drop, rename, add/drop column, type/size changes, TRUNCATE, and DROP."
    },
    {
        "title":  "Main DML",
        "text":  "Main tables include inserts, updates with WHERE/BETWEEN/IN/GROUP BY/HAVING, deletes, and soft delete."
    },
    {
        "title":  "DRL clauses",
        "text":  "SELECT, WHERE, IN, BETWEEN, AND, OR, GROUP BY, ORDER BY, and HAVING."
    },
    {
        "title":  "Subqueries",
        "text":  "IN, NOT IN, EXISTS, NOT EXISTS, ANY, and ALL."
    },
    {
        "title":  "Aggregate functions",
        "text":  "SUM, AVG, COUNT, MAX, and MIN."
    },
    {
        "title":  "Text search",
        "text":  "LIKE queries for email and full-name filtering."
    },
    {
        "title":  "Join queries",
        "text":  "INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, and SELF JOIN."
    },
    {
        "title":  "Reusable SQL logic",
        "text":  "Shows custom functions for repeated outputs and stored procedures for ready-to-run database actions."
    }
];

const dataViews = {
  Games: {
    rows: db.games.map((row) => ({
      game_id: idName(row.game_id, row.game_name),
      game_name: row.game_name,
      genre: row.genre,
      max_team_size: row.max_team_size
    })),
    columns: ["game_id", "game_name", "genre", "max_team_size"]
  },
  Tournaments: {
    rows: db.tournaments.map((row) => ({
      tournament_id: idName(row.tournament_id, row.title),
      game_id: idName(row.game_id, gameName(row.game_id)),
      title: row.title,
      start_date: row.start_date,
      end_date: row.end_date,
      status: row.status
    })),
    columns: ["tournament_id", "game_id", "title", "start_date", "end_date", "status"]
  },
  Teams: {
    rows: db.teams.map((row) => ({
      team_id: idName(row.team_id, row.team_name),
      team_name: row.team_name,
      created_at: row.created_at
    })),
    columns: ["team_id", "team_name", "created_at"]
  },
  Players: {
    rows: db.players.map((row) => ({
      player_id: idName(row.player_id, row.full_name),
      full_name: row.full_name,
      username: row.username,
      email: row.email,
      is_active_flag: row.is_active_flag
    })),
    columns: ["player_id", "full_name", "username", "email", "is_active_flag"]
  },
  TeamPlayers: {
    rows: db.teamPlayers.map((row) => ({
      team_player_id: row.team_player_id,
      team_id: idName(row.team_id, teamName(row.team_id)),
      player_id: idName(row.player_id, playerName(row.player_id)),
      membership_status: row.membership_status
    })),
    columns: ["team_player_id", "team_id", "player_id", "membership_status"]
  },
  Matches: {
    rows: db.matches.map((row) => ({
      match_id: row.match_id,
      tournament_id: idName(row.tournament_id, tournamentTitle(row.tournament_id)),
      team1_id: idName(row.team1_id, teamName(row.team1_id)),
      team2_id: idName(row.team2_id, teamName(row.team2_id)),
      winner_team_id: idName(row.winner_team_id, teamName(row.winner_team_id)),
      score: `${row.team1_score} - ${row.team2_score}`,
      played_at: row.played_at
    })),
    columns: ["match_id", "tournament_id", "team1_id", "team2_id", "winner_team_id", "score", "played_at"]
  },
  Registeration: {
    rows: db.registeration.map((row) => ({
      registeration_id: row.registeration_id,
      tournament_id: idName(row.tournament_id, tournamentTitle(row.tournament_id)),
      team_id: idName(row.team_id, teamName(row.team_id)),
      match_id: row.match_id
    })),
    columns: ["registeration_id", "tournament_id", "team_id", "match_id"]
  },
  Prizes: {
    rows: db.prizes.map((row) => ({
      prize_id: row.prize_id,
      tournament_id: idName(row.tournament_id, tournamentTitle(row.tournament_id)),
      team_id: idName(row.team_id, teamName(row.team_id)),
      position: row.position,
      prize_title: row.prize_title,
      prize_amount: `$${row.prize_amount.toLocaleString()}`
    })),
    columns: ["prize_id", "tournament_id", "team_id", "position", "prize_title", "prize_amount"]
  }
};

const queries = {
    "Test DDL":  [
                     {
                         "title":  "Q1. Create the test table.",
                         "badge":  "Q1",
                         "point":  "Create the test table.",
                         "code":  "-- Q1. Create the test table.\r\n\r\nCREATE TABLE tbl_testTable (\r\n    tt_id INT IDENTITY(1,1) PRIMARY KEY,\r\n    tt_name NVARCHAR(40) NOT NULL,\r\n    tt_email NVARCHAR(100) NOT NULL,\r\n    tt_phone_number NVARCHAR(20) NOT NULL,\r\n    tt_age NVARCHAR(5) NULL\r\n);"
                     },
                     {
                         "title":  "Q2. Insert records into the test table.",
                         "badge":  "Q2",
                         "point":  "Insert records into the test table.",
                         "code":  "-- Q2. Insert records into the test table.\r\nINSERT INTO tbl_testTable (tt_name, tt_email, tt_phone_number, tt_age)\r\nVALUES\r\n(\u0027Ali Khan\u0027, \u0027ali@test.com\u0027, \u002703001234567\u0027, \u002720\u0027),\r\n(\u0027Sara Ahmed\u0027, \u0027sara@test.com\u0027, \u002703111234567\u0027, \u002722\u0027),\r\n(\u0027Usman Raza\u0027, \u0027usman@test.com\u0027, \u002703221234567\u0027, \u002728\u0027);"
                     },
                     {
                         "title":  "Q3. Add a constraint.",
                         "badge":  "Q3",
                         "point":  "Add a constraint.",
                         "code":  "-- Q3. Add a constraint.\r\nALTER TABLE tbl_testTable\r\nADD CONSTRAINT uq_tbl_testTable_tt_email UNIQUE (tt_email);"
                     },
                     {
                         "title":  "Q4. Drop a constraint.",
                         "badge":  "Q4",
                         "point":  "Drop a constraint.",
                         "code":  "-- Q4. Drop a constraint.\r\nALTER TABLE tbl_testTable\r\nDROP CONSTRAINT uq_tbl_testTable_tt_email;"
                     },
                     {
                         "title":  "Q5. Rename a column.",
                         "badge":  "Q5",
                         "point":  "Rename a column.",
                         "code":  "-- Q5. Rename a column.\r\nEXEC sp_rename \u0027tbl_testTable.tt_name\u0027, \u0027tt_full_name\u0027, \u0027COLUMN\u0027;"
                     },
                     {
                         "title":  "Q6. Add a new column.",
                         "badge":  "Q6",
                         "point":  "Add a new column.",
                         "code":  "-- Q6. Add a new column.\r\nALTER TABLE tbl_testTable\r\nADD tt_status NVARCHAR(20) NULL;"
                     },
                     {
                         "title":  "Q7. Modify a column.",
                         "badge":  "Q7",
                         "point":  "Modify a column.",
                         "code":  "-- Q7. Modify a column.\r\nUPDATE tbl_testTable\r\nSET tt_status = \u0027Active\u0027\r\nWHERE tt_status IS NULL;"
                     },
                     {
                         "title":  "Q8. Delete a column.",
                         "badge":  "Q8",
                         "point":  "Delete a column.",
                         "code":  "-- Q8. Delete a column.\r\nALTER TABLE tbl_testTable\r\nDROP COLUMN tt_status;"
                     },
                     {
                         "title":  "Q9. Change a column data type.",
                         "badge":  "Q9",
                         "point":  "Change a column data type.",
                         "code":  "-- Q9. Change a column data type.\r\nALTER TABLE tbl_testTable\r\nALTER COLUMN tt_age INT NULL;"
                     },
                     {
                         "title":  "Q10. Change a column size.",
                         "badge":  "Q10",
                         "point":  "Change a column size.",
                         "code":  "-- Q10. Change a column size.\r\nALTER TABLE tbl_testTable\r\nALTER COLUMN tt_full_name NVARCHAR(80) NOT NULL;"
                     },
                     {
                         "title":  "Q11. Empty the test table.",
                         "badge":  "Q11",
                         "point":  "Empty the test table.",
                         "code":  "-- Q11. Empty the test table.\r\nTRUNCATE TABLE tbl_testTable;"
                     },
                     {
                         "title":  "Q12. Delete the test table.",
                         "badge":  "Q12",
                         "point":  "Delete the test table.",
                         "code":  "-- Q12. Delete the test table.\r\nDROP TABLE tbl_testTable;"
                     }
                 ],
    "Main DML":  [
                     {
                         "title":  "Q13. Show all EERD tables.",
                         "badge":  "Q13",
                         "point":  "Show all EERD tables.",
                         "code":  "-- Q13. Show all EERD tables.\r\nSELECT * FROM tbl_Games;\r\nSELECT * FROM tbl_Tournaments;\r\nSELECT * FROM tbl_Registeration;\r\nSELECT * FROM tbl_Teams;\r\nSELECT * FROM tbl_TeamPlayers;\r\nSELECT * FROM tbl_Players;\r\nSELECT * FROM tbl_Matches;\r\nSELECT * FROM tbl_Prizes;"
                     },
                     {
                         "title":  "Q14. Update one record using WHERE.",
                         "badge":  "Q14",
                         "point":  "Update one record using WHERE.",
                         "code":  "-- Q14. Update one record using WHERE.\r\nUPDATE tbl_Tournaments\r\nSET status = \u0027Ongoing\u0027\r\nWHERE tournament_id = 4;"
                     },
                     {
                         "title":  "Q15. Update multiple records.",
                         "badge":  "Q15",
                         "point":  "Update multiple records.",
                         "code":  "-- Q15. Update multiple records.\r\nUPDATE tbl_Players\r\nSET is_active_flag = 0\r\nWHERE player_id IN (11, 12, 13);"
                     },
                     {
                         "title":  "Q16. Update records using BETWEEN.",
                         "badge":  "Q16",
                         "point":  "Update records using BETWEEN.",
                         "code":  "-- Q16. Update records using BETWEEN.\r\nUPDATE tbl_Prizes\r\nSET prize_amount = prize_amount + 500\r\nWHERE prize_id BETWEEN 5 AND 8;"
                     },
                     {
                         "title":  "Q17. Update records using IN.",
                         "badge":  "Q17",
                         "point":  "Update records using IN.",
                         "code":  "-- Q17. Update records using IN.\r\nUPDATE tbl_TeamPlayers\r\nSET membership_status = \u0027Inactive\u0027\r\nWHERE team_player_id IN (3, 7, 12);"
                     },
                     {
                         "title":  "Q18. Update records using GROUP BY and HAVING.",
                         "badge":  "Q18",
                         "point":  "Update records using GROUP BY and HAVING.",
                         "code":  "-- Q18. Update records using GROUP BY and HAVING.\r\nUPDATE tbl_Teams\r\nSET team_name = team_name + \u0027 Squad\u0027\r\nWHERE team_id IN (\r\n    SELECT team_id\r\n    FROM tbl_TeamPlayers\r\n    GROUP BY team_id\r\n    HAVING COUNT(player_id) \u003e= 2\r\n);"
                     },
                     {
                         "title":  "Q19. Delete one record.",
                         "badge":  "Q19",
                         "point":  "Delete one record.",
                         "code":  "-- Q19. Delete one record.\r\nDELETE FROM tbl_Registeration\r\nWHERE registeration_id = 16;"
                     },
                     {
                         "title":  "Q20. Delete multiple records.",
                         "badge":  "Q20",
                         "point":  "Delete multiple records.",
                         "code":  "-- Q20. Delete multiple records.\r\nDELETE FROM tbl_TeamPlayers\r\nWHERE team_player_id BETWEEN 13 AND 14;"
                     },
                     {
                         "title":  "Q21. Soft delete one record.",
                         "badge":  "Q21",
                         "point":  "Soft delete one record.",
                         "code":  "-- Q21. Soft delete one record.\r\nUPDATE tbl_Players\r\nSET is_active_flag = 0\r\nWHERE player_id = 10;"
                     }
                 ],
    "DRL":  [
                {
                    "title":  "Q22. SELECT: Show all games.",
                    "badge":  "Q22",
                    "point":  "SELECT: Show all games.",
                    "code":  "-- Q22. SELECT: Show all games.\r\nSELECT *\r\nFROM tbl_Games;"
                },
                {
                    "title":  "Q23. WHERE: Show only active players.",
                    "badge":  "Q23",
                    "point":  "WHERE: Show only active players.",
                    "code":  "-- Q23. WHERE: Show only active players.\r\nSELECT *\r\nFROM tbl_Players\r\nWHERE is_active_flag = 1;"
                },
                {
                    "title":  "Q24. WHERE: Show Only Inactive Players",
                    "badge":  "Q24",
                    "point":  "WHERE: Show Only Inactive Players",
                    "code":  "-- Q24. WHERE: Show Only Inactive Players\r\nSELECT *\r\nFROM tbl_Players\r\nWHERE is_active_flag = 0;"
                },
                {
                    "title":  "Q25. IN: Show tournaments with selected statuses.",
                    "badge":  "Q25",
                    "point":  "IN: Show tournaments with selected statuses.",
                    "code":  "-- Q25. IN: Show tournaments with selected statuses.\r\nSELECT *\r\nFROM tbl_Tournaments\r\nWHERE status IN (\u0027Finished\u0027, \u0027Ongoing\u0027);"
                },
                {
                    "title":  "Q26. BETWEEN: Show tournaments between two dates.",
                    "badge":  "Q26",
                    "point":  "BETWEEN: Show tournaments between two dates.",
                    "code":  "-- Q26. BETWEEN: Show tournaments between two dates.\r\nSELECT tournament_id, title, start_date, end_date\r\nFROM tbl_Tournaments\r\nWHERE start_date BETWEEN \u00272026-05-01\u0027 AND \u00272026-09-30\u0027;"
                },
                {
                    "title":  "Q27. AND: Show active players whose username starts with a.",
                    "badge":  "Q27",
                    "point":  "AND: Show active players whose username starts with a.",
                    "code":  "-- Q27. AND: Show active players whose username starts with a.\r\nSELECT *\r\nFROM tbl_Players\r\nWHERE is_active_flag = 1\r\n  AND username LIKE \u0027a%\u0027;"
                },
                {
                    "title":  "Q28. OR: Show tournaments having Cup or Challenge in title.",
                    "badge":  "Q28",
                    "point":  "OR: Show tournaments having Cup or Challenge in title.",
                    "code":  "-- Q28. OR: Show tournaments having Cup or Challenge in title.\r\nSELECT *\r\nFROM tbl_Tournaments\r\nWHERE title LIKE \u0027%Cup%\u0027\r\n   OR title LIKE \u0027%Challenge%\u0027;"
                },
                {
                    "title":  "Q29. GROUP BY: Count players in each team.",
                    "badge":  "Q29",
                    "point":  "GROUP BY: Count players in each team.",
                    "code":  "-- Q29. GROUP BY: Count players in each team.\r\nSELECT team_id,\r\n       COUNT(player_id) AS total_players\r\nFROM tbl_TeamPlayers\r\nGROUP BY team_id;"
                },
                {
                    "title":  "Q30. ORDER BY: Show games in alphabetical order.",
                    "badge":  "Q30",
                    "point":  "ORDER BY: Show games in alphabetical order.",
                    "code":  "-- Q30. ORDER BY: Show games in alphabetical order.\r\nSELECT *\r\nFROM tbl_Games\r\nORDER BY game_name;"
                },
                {
                    "title":  "Q31. HAVING: Show teams having 2 or more players.",
                    "badge":  "Q31",
                    "point":  "HAVING: Show teams having 2 or more players.",
                    "code":  "-- Q31. HAVING: Show teams having 2 or more players.\r\nSELECT team_id, COUNT(player_id) AS total_players\r\nFROM tbl_TeamPlayers\r\nGROUP BY team_id\r\nHAVING COUNT(player_id) \u003e= 2;"
                }
            ],
    "Subqueries":  [
                       {
                           "title":  "Q32. IN Subquery: Show teams that are registered.",
                           "badge":  "Q32",
                           "point":  "IN Subquery: Show teams that are registered.",
                           "code":  "-- Q32. IN Subquery: Show teams that are registered.\r\nSELECT *\r\nFROM tbl_Teams\r\nWHERE team_id IN (\r\n    SELECT team_id\r\n    FROM tbl_Registeration\r\n);"
                       },
                       {
                           "title":  "Q33. NOT IN Subquery: Show tournaments that have no matches.",
                           "badge":  "Q33",
                           "point":  "NOT IN Subquery: Show tournaments that have no matches.",
                           "code":  "-- Q33. NOT IN Subquery: Show tournaments that have no matches.\r\nSELECT *\r\nFROM tbl_Tournaments\r\nWHERE tournament_id NOT IN (\r\n    SELECT tournament_id\r\n    FROM tbl_Matches\r\n);"
                       },
                       {
                           "title":  "Q34. EXISTS Subquery: Show tournaments that have prizes.",
                           "badge":  "Q34",
                           "point":  "EXISTS Subquery: Show tournaments that have prizes.",
                           "code":  "-- Q34. EXISTS Subquery: Show tournaments that have prizes.\r\nSELECT *\r\nFROM tbl_Tournaments t\r\nWHERE EXISTS (\r\n    SELECT 1\r\n    FROM tbl_Prizes p\r\n    WHERE p.tournament_id = t.tournament_id\r\n);"
                       },
                       {
                           "title":  "Q35. NOT EXISTS Subquery: Show tournaments with no registered teams.",
                           "badge":  "Q35",
                           "point":  "NOT EXISTS Subquery: Show tournaments with no registered teams.",
                           "code":  "-- Q35. NOT EXISTS Subquery: Show tournaments with no registered teams.\r\nSELECT *\r\nFROM tbl_Tournaments t\r\nWHERE NOT EXISTS (\r\n    SELECT 1\r\n    FROM tbl_Registeration r\r\n    WHERE r.tournament_id = t.tournament_id\r\n);"
                       },
                       {
                           "title":  "Q36. ANY Subquery: Show games bigger than any Sports game team size.",
                           "badge":  "Q36",
                           "point":  "ANY Subquery: Show games bigger than any Sports game team size.",
                           "code":  "-- Q36. ANY Subquery: Show games bigger than any Sports game team size.\r\nSELECT game_name, genre, max_team_size\r\nFROM tbl_Games\r\nWHERE max_team_size \u003e ANY (\r\n    SELECT max_team_size\r\n    FROM tbl_Games\r\n    WHERE genre = \u0027Sports\u0027\r\n);"
                       },
                       {
                           "title":  "Q37. ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.",
                           "badge":  "Q37",
                           "point":  "ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.",
                           "code":  "-- Q37. ALL Subquery: Show games bigger than or equal to all Battle Royale game team sizes.\r\nSELECT game_name, genre, max_team_size\r\nFROM tbl_Games\r\nWHERE max_team_size \u003e= ALL (\r\n    SELECT max_team_size\r\n    FROM tbl_Games\r\n    WHERE genre = \u0027Battle Royale\u0027\r\n);"
                       }
                   ],
    "Aggregates":  [
                       {
                           "title":  "Q38. SUM: Show total prize amount.",
                           "badge":  "Q38",
                           "point":  "SUM: Show total prize amount.",
                           "code":  "-- Q38. SUM: Show total prize amount.\r\nSELECT SUM(prize_amount) AS total_prize_amount\r\nFROM tbl_Prizes;"
                       },
                       {
                           "title":  "Q39. AVG: Show average total match score.",
                           "badge":  "Q39",
                           "point":  "AVG: Show average total match score.",
                           "code":  "-- Q39. AVG: Show average total match score.\r\nSELECT AVG(team1_score + team2_score) AS average_total_match_score\r\nFROM tbl_Matches;"
                       },
                       {
                           "title":  "Q40. COUNT: Count active players.",
                           "badge":  "Q40",
                           "point":  "COUNT: Count active players.",
                           "code":  "-- Q40. COUNT: Count active players.\r\nSELECT COUNT(*) AS active_player_count\r\nFROM tbl_Players\r\nWHERE is_active_flag = 1;"
                       },
                       {
                           "title":  "Q41. Other Numeric Operation: Show highest and lowest prize amount.",
                           "badge":  "Q41",
                           "point":  "Other Numeric Operation: Show highest and lowest prize amount.",
                           "code":  "-- Q41. Other Numeric Operation: Show highest and lowest prize amount.\r\nSELECT MAX(prize_amount) AS highest_prize_amount,\r\n       MIN(prize_amount) AS lowest_prize_amount\r\nFROM tbl_Prizes;"
                       },
                       {
                           "title":  "Q42. LIKE: Show players whose email ends with arena.com.",
                           "badge":  "Q42",
                           "point":  "LIKE: Show players whose email ends with arena.com.",
                           "code":  "-- Q42. LIKE: Show players whose email ends with arena.com.\r\nSELECT full_name, email\r\nFROM tbl_Players\r\nWHERE email LIKE \u0027%arena.com\u0027;"
                       },
                       {
                           "title":  "Q43. LIKE: Show players whose email starts with ali.",
                           "badge":  "Q43",
                           "point":  "LIKE: Show players whose email starts with ali.",
                           "code":  "-- Q43. LIKE: Show players whose email starts with ali.\r\nSELECT full_name, email\r\nFROM tbl_Players\r\nWHERE email LIKE \u0027ali%\u0027;"
                       },
                       {
                           "title":  "Q44. LIKE: Show players whose full name contains rah.",
                           "badge":  "Q44",
                           "point":  "LIKE: Show players whose full name contains rah.",
                           "code":  "-- Q44. LIKE: Show players whose full name contains rah.\r\nSELECT full_name, email\r\nFROM tbl_Players\r\nWHERE full_name LIKE \u0027%rah%\u0027;"
                       }
                   ],
    "Joins":  [
                  {
                      "title":  "Q45. Use INNER JOIN to show registration details.",
                      "badge":  "Q45",
                      "point":  "Use INNER JOIN to show registration details.",
                      "code":  "-- Q45. Use INNER JOIN to show registration details.\r\nSELECT r.registeration_id,\r\n       g.game_name,\r\n       t.title AS tournament_title,\r\n       m.match_id,\r\n       tm.team_name\r\nFROM tbl_Registeration r\r\nINNER JOIN tbl_Tournaments t\r\n    ON r.tournament_id = t.tournament_id\r\nINNER JOIN tbl_Games g\r\n    ON t.game_id = g.game_id\r\nINNER JOIN tbl_Matches m\r\n    ON r.match_id = m.match_id\r\nINNER JOIN tbl_Teams tm\r\n    ON r.team_id = tm.team_id"
                  },
                  {
                      "title":  "Q46. Use LEFT JOIN to show all players and their teams.",
                      "badge":  "Q46",
                      "point":  "Use LEFT JOIN to show all players and their teams.",
                      "code":  "-- Q46. Use LEFT JOIN to show all players and their teams.\r\nSELECT p.full_name,\r\n       p.username,\r\n       tp.membership_status,\r\n       tm.team_name\r\nFROM tbl_Players p\r\nLEFT JOIN tbl_TeamPlayers tp\r\n    ON p.player_id = tp.player_id\r\nLEFT JOIN tbl_Teams tm\r\n    ON tp.team_id = tm.team_id"
                  },
                  {
                      "title":  "Q47. Use LEFT JOIN to show all tournaments and their registered teams.",
                      "badge":  "Q47",
                      "point":  "Use LEFT JOIN to show all tournaments and their registered teams.",
                      "code":  "-- Q47. Use LEFT JOIN to show all tournaments and their registered teams.\r\nSELECT t.title,\r\n       tm.team_name,\r\n       r.match_id\r\nFROM tbl_Tournaments t\r\nLEFT JOIN tbl_Registeration r\r\n    ON t.tournament_id = r.tournament_id\r\nLEFT JOIN tbl_Teams tm\r\n    ON r.team_id = tm.team_id"
                  },
                  {
                      "title":  "Q48. Use RIGHT JOIN to show all matches with winner teams.",
                      "badge":  "Q48",
                      "point":  "Use RIGHT JOIN to show all matches with winner teams.",
                      "code":  "-- Q48. Use RIGHT JOIN to show all matches with winner teams.\r\nSELECT m.match_id,\r\n       winner.team_name AS winner_team_name,\r\n       m.team1_score,\r\n       m.team2_score,\r\n       m.played_at\r\nFROM tbl_Teams winner\r\nRIGHT JOIN tbl_Matches m\r\n    ON winner.team_id = m.winner_team_id\r\nORDER BY m.match_id;"
                  },
                  {
                      "title":  "Q49. Use FULL JOIN to show tournaments and prizes.",
                      "badge":  "Q49",
                      "point":  "Use FULL JOIN to show tournaments and prizes.",
                      "code":  "-- Q49. Use FULL JOIN to show tournaments and prizes.\r\nSELECT t.title,\r\n       p.prize_title\r\nFROM tbl_Tournaments t\r\nFULL JOIN tbl_Prizes p\r\n    ON t.tournament_id = p.tournament_id"
                  },
                  {
                      "title":  "Q50. Use SELF JOIN to show teams playing against each other.",
                      "badge":  "Q50",
                      "point":  "Use SELF JOIN to show teams playing against each other.",
                      "code":  "-- Q50. Use SELF JOIN to show teams playing against each other.\r\nSELECT T1.team_name AS Team_1, T2.team_name AS Team_2\r\nFROM tbl_Matches M\r\nINNER JOIN tbl_Teams T1\r\n    ON M.team1_id = T1.team_id\r\nINNER JOIN tbl_Teams T2\r\n    ON M.team2_id = T2.team_id;"
                  }
              ],
    "Functions":  [
                      {
                          "title":  "Q51. Show total, average, highest, and lowest prize amount.",
                          "badge":  "Q51",
                          "point":  "Show total, average, highest, and lowest prize amount.",
                          "code":  "-- Q51. Show total, average, highest, and lowest prize amount.\r\nSELECT\r\n    SUM(prize_amount) AS total_prize_amount,\r\n    AVG(prize_amount) AS average_prize_amount,\r\n    MAX(prize_amount) AS highest_prize_amount,\r\n    MIN(prize_amount) AS lowest_prize_amount\r\nFROM tbl_Prizes;"
                      },
                      {
                          "title":  "Q52. Count total players and show first/last player name alphabetically.",
                          "badge":  "Q52",
                          "point":  "Count total players and show first/last player name alphabetically.",
                          "code":  "-- Q52. Count total players and show first/last player name alphabetically.\r\nSELECT\r\n    COUNT(full_name) AS total_players,\r\n    MIN(full_name) AS first_player_name,\r\n    MAX(full_name) AS last_player_name\r\nFROM tbl_Players;"
                      },
                      {
                          "title":  "Q53. Create a scalar function to display total matches.",
                          "badge":  "Q53",
                          "point":  "Create a scalar function to display total matches.",
                          "code":  "-- Q53. Create a scalar function to display total matches.\r\nCREATE OR ALTER FUNCTION fn_displayTotalMatches()\r\nRETURNS INT\r\nAS\r\nBEGIN\r\n    DECLARE @totalMatches INT;\r\n\r\n    SELECT @totalMatches = COUNT(*)\r\n    FROM tbl_Matches;\r\n\r\n    RETURN @totalMatches;\r\nEND;\r\n\r\n\r\nSELECT dbo.fn_displayTotalMatches() AS totalMatches;"
                      },
                      {
                          "title":  "Q54. Create a scalar function to calculate total match score.",
                          "badge":  "Q54",
                          "point":  "Create a scalar function to calculate total match score.",
                          "code":  "-- Q54. Create a scalar function to calculate total match score.\r\nCREATE OR ALTER FUNCTION fn_TotalMatchScore\r\n(\r\n    @team1_score INT,\r\n    @team2_score INT\r\n)\r\nRETURNS INT\r\nAS\r\nBEGIN\r\n    RETURN @team1_score + @team2_score;\r\nEND;\r\n\r\n\r\nSELECT\r\n    match_id,\r\n    team1_score,\r\n    team2_score,\r\n    dbo.fn_TotalMatchScore(team1_score, team2_score) AS total_score\r\nFROM tbl_Matches;"
                      },
                      {
                          "title":  "Q55. Create a table-valued function to show all active players.",
                          "badge":  "Q55",
                          "point":  "Create a table-valued function to show all active players.",
                          "code":  "-- Q55. Create a table-valued function to show all active players.\r\nCREATE OR ALTER FUNCTION fn_ShowActivePlayers()\r\nRETURNS TABLE\r\nAS\r\nRETURN\r\n(\r\n    SELECT *\r\n    FROM tbl_Players\r\n    WHERE is_active_flag = 1\r\n);\r\n\r\n\r\nSELECT *\r\nFROM dbo.fn_ShowActivePlayers();"
                      },
                      {
                          "title":  "Q56. Create a table-valued function to show tournaments by status.",
                          "badge":  "Q56",
                          "point":  "Create a table-valued function to show tournaments by status.",
                          "code":  "-- Q56. Create a table-valued function to show tournaments by status.\r\nCREATE OR ALTER FUNCTION fn_TournamentsByStatus\r\n(\r\n    @status NVARCHAR(20)\r\n)\r\nRETURNS TABLE\r\nAS\r\nRETURN\r\n(\r\n    SELECT *\r\n    FROM tbl_Tournaments\r\n    WHERE status = @status\r\n);\r\n\r\n\r\nSELECT *\r\nFROM dbo.fn_TournamentsByStatus (\u0027Ongoing\u0027)"
                      }
                  ],
    "Procedures":  [
                       {
                           "title":  "Q57. Create a procedure to show all active players.",
                           "badge":  "Q57",
                           "point":  "Create a procedure to show all active players.",
                           "code":  "-- Q57. Create a procedure to show all active players.\r\n\r\nCREATE OR ALTER PROCEDURE sp_ShowActivePlayers\r\nAS\r\n\r\n    SELECT *\r\n    FROM tbl_Players\r\n    WHERE is_active_flag = 1\r\n\r\n\r\nEXEC sp_ShowActivePlayers;"
                       },
                       {
                           "title":  "Q58. Create a procedure to show tournaments by status.",
                           "badge":  "Q58",
                           "point":  "Create a procedure to show tournaments by status.",
                           "code":  "-- Q58. Create a procedure to show tournaments by status.\r\n\r\nCREATE OR ALTER PROCEDURE sp_ShowTournamentsByStatus\r\n    @status NVARCHAR(20)\r\nAS\r\nBEGIN\r\n    SELECT\r\n        tournament_id,\r\n        title,\r\n        start_date,\r\n        end_date,\r\n        status\r\n    FROM tbl_Tournaments\r\n    WHERE status = @status;\r\nEND;\r\n\r\n\r\nEXEC sp_ShowTournamentsByStatus \u0027Ongoing\u0027;"
                       },
                       {
                           "title":  "Q59. Create a procedure to check if a player is active or inactive.",
                           "badge":  "Q59",
                           "point":  "Create a procedure to check if a player is active or inactive.",
                           "code":  "-- Q59. Create a procedure to check if a player is active or inactive.\r\n\r\nCREATE PROCEDURE CheckPlayerStatus\r\n    @is_active_flag INT\r\nAS\r\nBEGIN\r\n    IF @is_active_flag = 1\r\n        PRINT \u0027Player is Active\u0027;\r\n    ELSE\r\n        PRINT \u0027Player is Inactive\u0027;\r\nEND;\r\n\r\nEXEC CheckPlayerStatus 1;"
                       },
                       {
                            "title":  "Q60. Show teams who won prize in a specific tournament.",
                            "badge":  "Q60",
                            "point":  "Show teams who won prize in a specific tournament.",
                            "code":  "-- Q60. Show teams who won prize in a specific tournament.\r\n\r\nCREATE OR ALTER PROCEDURE sp_TeamWinningPrice\r\n    @TournamentID INT\r\nAS\r\nBEGIN\r\n    DECLARE @teamID INT;\r\n    SET @teamID = 1;\r\n\r\n    WHILE @teamID <= 12\r\n    BEGIN\r\n        SELECT T.team_name\r\n        FROM tbl_Teams T\r\n        INNER JOIN tbl_Prizes P\r\n            ON P.team_id = T.team_id\r\n           AND P.team_id = @teamID\r\n           AND P.tournament_id = @TournamentID;\r\n\r\n        SET @teamID = @teamID + 1;\r\n    END\r\nEND;\r\n\r\nEXEC sp_TeamWinningPrice 1;"
                       }
                   ]
};

let activeDataView = "Games";
let activeQueryCategory = "Test DDL";
let activeQueryIndex = 0;

function gameName(id) {
  return db.games.find((game) => game.game_id === id)?.game_name || "Unknown";
}

function tournamentTitle(id) {
  return db.tournaments.find((tournament) => tournament.tournament_id === id)?.title || "Unknown";
}

function teamName(id) {
  if (id === null || id === undefined) return "Not decided";
  return db.teams.find((team) => team.team_id === id)?.team_name || "Unknown";
}

function playerName(id) {
  return db.players.find((player) => player.player_id === id)?.full_name || "Unknown";
}

function idName(id, name) {
  if (id === null || id === undefined) return "NULL";
  return `${id} - ${name}`;
}

function formatHeading(value) {
  return value.replace(/_/g, " ").replace(/\b\w/g, (char) => char.toUpperCase());
}

function escapeHtml(value) {
  return String(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function renderMetrics() {
  const totalPrize = db.prizes.reduce((sum, prize) => sum + prize.prize_amount, 0);
  const metrics = [
    [String(db.games.length), "Games", "accent-green"],
    [String(db.tournaments.length), "Tournaments", "accent-blue"],
    [String(db.players.length), "Players", "accent-amber"],
    [String(db.teams.length), "Teams", "accent-violet"],
    [String(db.matches.length), "Matches", "accent-red"],
    [`$${totalPrize.toLocaleString()}`, "Prize Pool", "accent-green"]
  ];

  document.getElementById("metricGrid").innerHTML = metrics
    .map(([value, label, accent]) => `<div class="metric-card ${accent}"><strong>${value}</strong><span>${label}</span></div>`)
    .join("");
}

function renderStatusBars() {
  const statuses = ["Finished", "Upcoming", "Ongoing"];
  const total = db.tournaments.length;
  document.getElementById("statusBars").innerHTML = statuses.map((status) => {
    const count = db.tournaments.filter((item) => item.status === status).length;
    const percent = Math.round((count / total) * 100);
    return `<div class="status-row">
      <div class="status-label"><span>${status}</span><strong>${count} of ${total}</strong></div>
      <div class="bar-track"><div class="bar-fill ${status.toLowerCase()}" style="width:${percent}%"></div></div>
    </div>`;
  }).join("");
}

function renderTableCards() {
  document.getElementById("tableCards").innerHTML = tableDefinitions.map((table, index) => {
    const accents = ["green", "amber", "violet", "red"];
    const tags = table.keys.map((key, keyIndex) => `<span class="tag ${accents[(index + keyIndex) % accents.length]}">${escapeHtml(key)}</span>`).join("");
    return `<article class="mini-card">
      <strong>${table.name}</strong>
      <p>${table.purpose}</p>
      <div class="tag-list">${tags}</div>
    </article>`;
  }).join("");
}

function renderRelationships() {
  document.getElementById("relationshipGrid").innerHTML = relationships.map(([title, text]) => `
    <article class="relationship-card">
      <strong>${escapeHtml(title)}</strong>
      <span>${escapeHtml(text)}</span>
    </article>
  `).join("");
}

function renderDataTabs() {
  document.getElementById("dataTabs").innerHTML = Object.keys(dataViews).map((name) => `
    <button class="tab-button ${name === activeDataView ? "active" : ""}" type="button" data-view="${name}">${name}</button>
  `).join("");
}

function renderRecordTable() {
  const search = document.getElementById("recordSearch").value.trim().toLowerCase();
  const view = dataViews[activeDataView];
  const rows = view.rows.filter((row) => Object.values(row).join(" ").toLowerCase().includes(search));
  const head = `<thead><tr>${view.columns.map((column) => `<th>${formatHeading(column)}</th>`).join("")}</tr></thead>`;
  const body = rows.length
    ? rows.map((row) => `<tr>${view.columns.map((column) => `<td>${formatCell(column, row[column])}</td>`).join("")}</tr>`).join("")
    : `<tr><td colspan="${view.columns.length}">No matching records found.</td></tr>`;

  document.getElementById("recordTable").innerHTML = `${head}<tbody>${body}</tbody>`;
}

function formatCell(column, value) {
  const safeValue = escapeHtml(value ?? "");
  const statusColumns = ["status", "is_active_flag", "membership_status"];
  if (statusColumns.includes(column)) {
    return `<span class="pill ${safeValue}">${safeValue}</span>`;
  }
  return safeValue;
}

function renderQueryTabs() {
  document.getElementById("queryTabs").innerHTML = Object.keys(queries).map((category) => `
    <button class="tab-button ${category === activeQueryCategory ? "active" : ""}" type="button" data-category="${category}">${category}</button>
  `).join("");
}

function renderQueryList() {
  const items = queries[activeQueryCategory];
  document.getElementById("queryList").innerHTML = items.map((item, index) => `
    <button class="query-item ${index === activeQueryIndex ? "active" : ""}" type="button" data-query-index="${index}">
      <strong>${escapeHtml(item.title)}</strong>
      <span>${escapeHtml(item.badge)} example</span>
    </button>
  `).join("");
}

function renderSelectedQuery() {
  const item = queries[activeQueryCategory][activeQueryIndex];
  document.getElementById("queryCategory").textContent = activeQueryCategory;
  document.getElementById("queryTitle").textContent = item.title;
  document.getElementById("queryBadge").textContent = item.badge;
  document.getElementById("queryPoint").textContent = item.point;
  document.getElementById("queryCode").textContent = item.code;
}

function renderCoverage() {
  document.getElementById("coverageGrid").innerHTML = coverage.map((item) => `
    <article class="coverage-card">
      <strong>${escapeHtml(item.title)}</strong>
      <div class="progress" aria-hidden="true"><span></span></div>
      <p>${escapeHtml(item.text)}</p>
    </article>
  `).join("");
}

function setupEvents() {
  document.getElementById("dataTabs").addEventListener("click", (event) => {
    const button = event.target.closest("[data-view]");
    if (!button) return;
    activeDataView = button.dataset.view;
    renderDataTabs();
    renderRecordTable();
  });

  document.getElementById("recordSearch").addEventListener("input", renderRecordTable);

  document.getElementById("queryTabs").addEventListener("click", (event) => {
    const button = event.target.closest("[data-category]");
    if (!button) return;
    activeQueryCategory = button.dataset.category;
    activeQueryIndex = 0;
    renderQueryTabs();
    renderQueryList();
    renderSelectedQuery();
  });

  document.getElementById("queryList").addEventListener("click", (event) => {
    const button = event.target.closest("[data-query-index]");
    if (!button) return;
    activeQueryIndex = Number(button.dataset.queryIndex);
    renderQueryList();
    renderSelectedQuery();
  });

  const sections = Array.from(document.querySelectorAll(".section"));
  const navLinks = Array.from(document.querySelectorAll(".nav-link"));
  const observer = new IntersectionObserver((entries) => {
    const visible = entries
      .filter((entry) => entry.isIntersecting)
      .sort((a, b) => b.intersectionRatio - a.intersectionRatio)[0];
    if (!visible) return;
    navLinks.forEach((link) => {
      link.classList.toggle("active", link.getAttribute("href") === `#${visible.target.id}`);
    });
  }, { threshold: [0.25, 0.45, 0.65] });

  sections.forEach((section) => observer.observe(section));
}

function init() {
  renderMetrics();
  renderStatusBars();
  renderTableCards();
  renderRelationships();
  renderDataTabs();
  renderRecordTable();
  renderQueryTabs();
  renderQueryList();
  renderSelectedQuery();
  renderCoverage();
  setupEvents();
}

init();
