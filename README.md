# World Cup Database

This project is a World Cup database that contains information about games played in various World Cup tournaments. The database is implemented using PostgreSQL and consists of two tables: games and teams.

The database provides information about individual games, including the year, round, teams involved, and the goals scored by each team. It also stores data about the participating teams, including their IDs and names.

To facilitate easy installation and usage, the project includes bash scripts that allow users to automatically insert data from a CSV file into the database and perform various queries to retrieve relevant information. The scripts are designed to handle different scenarios, such as inserting data for testing purposes or querying specific statistics.

## Installation

To use the World Cup database, follow these steps:

1. Clone the repository: `git clone https://github.com/Jeffs0412/worldcup_database.git`

2. Navigate to the project directory: `cd worldcup_database`

3. Create a PostgreSQL database: `createdb worldcup`

4. Import the database schema and data: `psql -d worldcup -f worldcup.sql`

### Setting up Password Authentication

By default, PostgreSQL prompts for a password when connecting to a database. However, you can automate this process by using the `PGPASSWORD` variable. Here's how you can set it up:

1. Open the terminal and navigate to the project directory: `cd worldcup_database`
2. Set the `PGPASSWORD` environment variable with the actual password for your PostgreSQL database. To do this, enter the following command in the terminal:
   ```bash
   set PGPASSWORD=mypass 
   ```
    Replace 'mypass' with the actual password for your PostgreSQL database.
3. Open the insert_data.sh and queries.sh scripts in a text editor. Export the `PGPASSWORD` environment variable with the actual password for your PostgreSQL database:
    ```bash
    #insert_data.sh

    export PGPASSWORD='mypass'
    if [[ $1 == "test" ]]
    then
      PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
    else
      PSQL="psql --username=postgres --dbname=worldcup -t --no-align -c"
    fi
    ```
    ```bash
    #queries.sh

    export PGPASSWORD='mypass'
    PSQL="psql --username=postgres --dbname=worldcup --no-align --tuples-only -c"
    ```
    Replace 'mypass' and 'postgres' with the actual password and username respecively for your PostgreSQL database.

    By setting the `PGPASSWORD` environment variable in the shell script, as shown in the provided example, the script ensures that the password is automatically supplied to the psql command when it is executed. This allows the script to connect to the database without requiring manual intervention or password input from the user.
## Usage

The World Cup database provides information about games played in different tournaments, including the year, round, teams involved, and the goals scored by each team.

To interact with the database, you can use the provided bash scripts:

- `insert_data.sh`: This script automatically inserts all the data from the `games.csv` file into the `games` table of the database.

- `queries.sh`: This script contains bash scripts to automatically show relevant data from the database based on the description provided above each query.

You can execute the bash scripts to perform operations on the database and retrieve specific information.

## Database Schema

The World Cup database consists of the following tables:

- `games`: Contains information about individual games, including the game ID, year, round, winner ID, opponent ID, winner goals, and opponent goals.

- `teams`: Stores information about teams participating in the World Cup, including the team ID and name.

## Examples

### Here are some examples of queries you can perform on the World Cup database:

Automatically insert all the data from the games.csv file:

```bash
$ ./insert_data.sh
TRUNCATE TABLE
Inserted Winner into teams table, France
Inserted Opponent in teams table, Croatia
Insert Game Data in games table for Year, 2018
Inserted Winner into teams table, Belgium
Inserted Opponent in teams table, England
Insert Game Data in games table for Year, 2018
Insert Game Data in games table for Year, 2018
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Russia
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Sweden
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Brazil
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Uruguay
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Colombia
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Switzerland
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Japan
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Mexico
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Denmark
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Spain
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Portugal
Insert Game Data in games table for Year, 2018
Inserted Opponent in teams table, Argentina
Insert Game Data in games table for Year, 2018
Inserted Winner into teams table, Germany
Insert Game Data in games table for Year, 2014
Inserted Winner into teams table, Netherlands
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, Costa Rica
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, Chile
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, Nigeria
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, Algeria
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, Greece
Insert Game Data in games table for Year, 2014
Insert Game Data in games table for Year, 2014
Inserted Opponent in teams table, United States
Insert Game Data in games table for Year, 2014
```

Show all the relevant data based on each query's description in the queries.sh file:

```bash
$ ./queries.sh

Total number of goals in all games from winning teams:
68

Total number of goals in all games from both teams combined:
90

Average number of goals in all games from the winning teams:
2.1250000000000000

Average number of goals in all games from the winning teams rounded to two decimal places:
2.13

Average number of goals in all games from both teams:
2.8125000000000000

Most goals scored in a single game by one team:
7

Number of games where the winning team scored more than two goals:
6

Winner of the 2018 tournament team name:
France

List of teams who played in the 2014 'Eighth-Final' round:
Algeria
Argentina
Belgium
Brazil
Chile
Colombia
Costa Rica
France
Germany
Greece
Mexico
Netherlands
Nigeria
Switzerland
United States
Uruguay

List of unique winning team names in the whole data set:
Argentina
Belgium
Brazil
Colombia
Costa Rica
Croatia
England
France
Germany
Netherlands
Russia
Sweden
Uruguay

Year and team name of all the champions:
2018|France
2014|Germany

List of teams that start with 'Co':
Colombia
Costa Rica
```
## Contact

You can reach out to me through the following channels:
- Email: manalejefferson@gmail.com
- LinkedIn: [LinkedIn Profile](https://www.linkedin.com/in/jefferson-manale/)

Feel free to explore the project and get in touch!

---

