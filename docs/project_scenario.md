# Project Scenario

## Esports Tournament Management System

This project is based on an esports tournament management system. The system is designed for an organization that hosts gaming tournaments for different games and needs a simple database to manage players, teams, registrations, matches, tournament schedules, and prizes.

## Problem Statement

Managing esports events manually can become confusing because one tournament may have many registered teams, each team may have multiple players, and every match needs scores, winners, and timing details. Registration and prize records also need to be stored clearly for each tournament.

This database solves that problem by organizing the tournament data into related tables.

## How The System Works

The system stores games such as Valorant, DOTA 2, Football, Counter Strike, Apex Legends, COD, Delta Force, and PUBG. Each game has a genre and a maximum team size.

Tournaments are created for these games. Each tournament has a title, start date, end date, and status. A tournament can be `Upcoming`, `Ongoing`, or `Finished`.

Players register in the system with their full name, email, username, and active/inactive status. Teams are created independently, and registration rows place those teams into tournament matches. A player can be part of a team through the team membership table.

Matches are recorded between two teams. Each match stores both teams, the winner team, the scores, and the date and time when the match was played.

Registration rows connect teams to tournament matches, so the system can show which teams participated in each match.

Prize records are connected to tournaments and winning teams. Each prize has a position, title, and amount. For example, a tournament can have Gold, Silver, and Bronze prize records.

## Main Entities

- Player
- Game
- Tournament
- Team
- Team Membership
- Match
- Registration
- Prize

## Business Rules

- One game can have many tournaments.
- One tournament belongs to one game.
- One tournament can have many registered teams through registration records.
- One team can appear in different tournament registrations.
- One player can join multiple teams across different events.
- One team can have multiple players.
- One tournament can have many matches.
- One match has two competing teams.
- A match winner can be stored after the result is known.
- Registration connects a tournament, team, and match.
- One tournament can have multiple prizes.
- Prize positions are limited to first, second, and third place.

## Purpose Of The Database

The purpose of this database is to make esports tournament data easier to store, update, search, and report. It also demonstrates important DBMS concepts such as table design, keys, constraints, relationships, DDL, DML, DRL, joins, subqueries, aggregate functions, user-defined functions, and stored procedures.
