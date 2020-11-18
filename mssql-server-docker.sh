
# Up MS SQL SERVER DATABASE on port 1433 and password Jochimin007
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Jochimin007' -p 1433:1433 -d microsoft/mssql-server-linux:2019-lastest


