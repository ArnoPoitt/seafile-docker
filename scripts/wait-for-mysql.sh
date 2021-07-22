#!/usr/bin/env bash

echo "Waiting for MySQL..."
while ! mysqladmin ping -h$SEAFILE_DB_HOST -useafile -pseafile --silent 2>/dev/null; do
    sleep 1
done
