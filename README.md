# MySQL IPL Database in Docker

This project contains a Dockerized MySQL setup with an IPL cricket players dataset.  
It includes a `Dockerfile` and an `init.sql` script to automatically create the database and populate it with sample player data.


## 🚀 Getting Started

### 1. Build the Docker Image

docker build -t dbimage .

### 2. Run the MySQL Container
bash
docker run -d \
  --name db-cont \
  -p 1111:3306 \
  -e MYSQL_ROOT_PASSWORD=rootpassword \
  -e MYSQL_DATABASE=IPL_Team \
  -e MYSQL_USER=ipluser \
  -e MYSQL_PASSWORD=iplpassword \
  dbimage
  
### 3. Connect to MySQL
From inside the container:

bash
docker exec -it db-cont mysql -uipluser -piplpassword IPL_Team
From your host machine:

bash
mysql -h 127.0.0.1 -P 1111 -uipluser -piplpassword IPL_Team

**📂 Project Structure**
Code
SQL-Database/
│── Dockerfile        # Defines MySQL image with environment variables
│── init.sql          # Creates IPL_Team database and Players table with sample data
│── .gitignore        # Ignores logs, tmp files, MySQL data dirs
│── README.md         # Project documentation
🏏 IPL Players Dataset
The Players table includes:

player_id (Primary Key)

name

team

role

nationality

age

matches_played

runs_scored

wickets_taken

Sample entries include Virat Kohli, MS Dhoni, Rohit Sharma, Rashid Khan, and more.

**🔧 Useful Queries**
sql
-- Show all players
SELECT * FROM Players;

-- Top 3 run scorers
SELECT name, runs_scored
FROM Players
ORDER BY runs_scored DESC
LIMIT 3;

-- Bowlers with more than 100 wickets
SELECT name, team, wickets_taken
FROM Players
WHERE wickets_taken > 100;

**📌 Notes**
Default root password: rootpassword

Default user: ipluser / iplpassword

Database: IPL_Team

Port mapping: Host 1111 → Container 3306

**🤝 Contributing**
Feel free to fork this repo, add more IPL players, or extend the schema with additional stats like strike rate, economy, or captaincy records.

Code


👉 Just copy this into a file named `README.md` in your project directory, then commit and push:


git add README.md
git commit -m "Add README documentation"
git push
