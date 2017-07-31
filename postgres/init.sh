#!/bin/bash
set -e

PGPASSWORD=elephants
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
EOSQL
tail -f `find /var/log -name *.log -or -name *.out`
