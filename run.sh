#!/bin/bash
source .env
docker run -it \
-e "ACCEPT_EULA=Y" \
-e "MSSQL_SA_PASSWORD=${MSSQL_PASSWD}" \
-p ${MSSQL_PORT}:1433 \
--name ${NAME} \
--hostname ${NAME} \
mcr.microsoft.com/mssql/server:2022-latest
#-v `pwd`/data:/var/opt/mssql/data \
#-v `pwd`/log:/var/opt/mssql/log \
#-v `pwd`/secrets:/var/opt/mssql/secrets \
#--privileged=true \
#mcr.microsoft.com/mssql/server:2022-latest
