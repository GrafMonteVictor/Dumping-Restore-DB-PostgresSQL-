#!/bin/bash

source settings.sh
PATHUTILITY=$PATHUTILITY/pg_restore
HOST=$HOST
USER=$USER
PGPASSWORD=$PASSWORD
PATHDUMP=$PATHDUMP
export PGPASSWORD

echo $HOST
echo $USER
echo $PATHUTILITY

$PATHUTILITY -d Postgres -U $USER -p 5432 -h $HOST -c -Fd -f $PATHDUMP

unset PGPASSWORD