#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Truncate the games and teams tables before inserting any data rows.
echo $($PSQL "TRUNCATE games, teams") 

# Read the column and row data from the games.csv file by using "cat" command.
# Use the Pipeline Operator "|" to redirect the output of the cat command as the input of WHILE LOOP to be read using read command with comma (",") as the Internal Field Separator (IFS).
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OPP_GOALS # Create a variable for each column name in the games.csv file.
do
  # INSERT THE WINNER AND OPPONENT INTO THE TEAMS TABLE AS NAME
  if [[ $WINNER != "winner" ]] 
  then 
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WIN_ID ]] 
    then
      INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER == "INSERT 0 1" ]]
      then
        echo Inserted Winner into teams table, $WINNER
      fi
    fi
  fi

  if [[ $OPPONENT != "opponent" ]]
  then
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    if [[ -z $OPP_ID ]]
    then
      INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
      then
        echo Inserted Opponent in teams table, $OPPONENT
      fi
    fi
  fi

  # Get the IDs of the newly added WINNER AND OPPONENT. These IDs are referenced keys for the winner_id and opponent_id columns in games table. Hence, must be added to the games table.

  WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  if [[ -n $WIN_ID || -n $OPP_ID ]] # Check if $WIN_ID and $OPP_ID contain IDs. If it is, then they can be added to the games table.
  then
    if [[ $YEAR != 'year' ]] 
    then
        INSERT_GAME_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WIN_GOALS, $OPP_GOALS)")
        if [[ $INSERT_GAME_DATA == "INSERT 0 1" ]]
        then
          echo Insert Game Data in games table for Year, $YEAR
      fi
    fi
  fi
done
