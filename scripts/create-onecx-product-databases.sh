#!/bin/bash

# Initialize the PostgreSQL databases of OneCX Core products
#
# Example:
#   CREATE USER onecx_announcement WITH PASSWORD 'onecx_announcement';
#   CREATE DATABASE "onecx-announcement" WITH OWNER = onecx_announcement;

products=( announcement bookmark help parameter permission product-store tenant theme welcome workspace user-profile user-profile-avatar )
# PostgreSQL admin user:
db_admin=postgres
db_pwd=admin


manage_database() {
  PRODUCT=$1
  # For user/role names it is required to replace '-' with '_'
  USER_NAME=onecx_${PRODUCT//\-/_}
  DB_NAME=onecx-$PRODUCT
  echo "  User: $USER_NAME    database: $DB_NAME"

  # USER
  RESULT=`psql postgresql://$db_admin:$db_pwd@postgresdb:5432/postgres -c "SELECT 1 FROM pg_roles WHERE rolname = '$USER_NAME'"`
  if [[ $RESULT =~ "0 rows" ]]; then
    RESULT=`psql postgresql://$db_admin:$db_pwd@postgresdb:5432/postgres -c "CREATE USER $USER_NAME WITH PASSWORD '$USER_NAME'"`
    echo "    $RESULT"
  else
    echo "    User exists"
  fi

  # DATABASE
  RESULT=`psql postgresql://$db_admin:$db_pwd@postgresdb:5432/postgres -c "SELECT 1 FROM pg_database WHERE datname = '$DB_NAME'"`
  if [[ $RESULT =~ "0 rows" ]]; then
    RESULT=`psql postgresql://$db_admin:$db_pwd@postgresdb:5432/postgres -c "CREATE DATABASE \"$DB_NAME\" WITH OWNER $USER_NAME"`
    echo "    $RESULT"
  else
    echo "    Database exists"
  fi
}


echo "=> Create user and databases (if not exist)"
for key in "${!products[@]}"
do
  manage_database ${products[$key]}
done

