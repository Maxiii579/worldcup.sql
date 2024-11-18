#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do
# Eliminating Title line
if [[ $YEAR != "year" ]]
# get team_id
   then
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")


   # if not found
  if [[ -z $WINNER_ID ]]
  then
  # insert team
  INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
if [[ INSERT_WINNER_TEAM == "INSERT 0 1" ]]
   then
   echo Inserted into teams, $WINNER
fi

# new winner team_id

WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

fi

# get team_id

OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

# if not found

if [[ -z $OPPONENT_ID ]]

then

# insert team

INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

if [[ INSERT_OPPONENT_TEAM == "INSERT 0 1" ]]

then

echo Inserted into teams, $OPPONENT

fi

# new team_id

OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

fi

LOG_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")

if [[ $LOG_GAME_RESULT == "INSERT 0 1" ]]

then

echo Inserted, $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS

fi
fi


done