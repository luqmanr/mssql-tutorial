#!/bin/bash
source .env
docker exec -it ${NAME} \
/opt/mssql-tools18/bin/sqlcmd \
  -S ${MSSQL_HOST},${MSSQL_PORT} \
  -U SA -P ${MSSQL_PASSWD} \
  -C \
  -d TestDB
