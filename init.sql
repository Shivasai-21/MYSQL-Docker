-- Step 1: Create Database

USE IPL_Team;

-- Step 2: Create Table with fewer attributes
CREATE TABLE Players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    team VARCHAR(50),
    role VARCHAR(30),          -- Batsman, Bowler, All-rounder, Wicketkeeper
    nationality VARCHAR(30),
    age INT,
    matches_played INT,
    runs_scored INT,
    wickets_taken INT
);

-- Step 3: Insert 10 sample rows
INSERT INTO Players 
(name, team, role, nationality, age, matches_played, runs_scored, wickets_taken)
VALUES
('Virat Kohli', 'Royal Challengers Bangalore', 'Batsman', 'India', 37, 237, 7263, 4),
('MS Dhoni', 'Chennai Super Kings', 'Wicketkeeper', 'India', 44, 250, 5082, 0),
('Rohit Sharma', 'Mumbai Indians', 'Batsman', 'India', 39, 243, 6211, 15),
('Hardik Pandya', 'Mumbai Indians', 'All-rounder', 'India', 32, 123, 2309, 53),
('Rashid Khan', 'Gujarat Titans', 'Bowler', 'Afghanistan', 27, 109, 370, 139),
('David Warner', 'Delhi Capitals', 'Batsman', 'Australia', 39, 176, 6397, 0),
('Shubman Gill', 'Gujarat Titans', 'Batsman', 'India', 26, 91, 2790, 0),
('Andre Russell', 'Kolkata Knight Riders', 'All-rounder', 'West Indies', 36, 112, 2269, 96),
('KL Rahul', 'Lucknow Super Giants', 'Batsman', 'India', 34, 118, 4163, 0),
('Jasprit Bumrah', 'Mumbai Indians', 'Bowler', 'India', 32, 120, 56, 145);

