
# Up MS SQL SERVER DATABASE on port 1433 and password YouPassWord
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=YouPassWord' -e "MSSQL_PID=Express" -p 1433:1433 -d microsoft/mssql-server-linux:2019-lastest
