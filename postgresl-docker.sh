# Up POSTGRESQL SERVER DATABASE on port 5432 and password Jochimin007

docker run --name BD_POSTGRES -e POSTGRES_PASSWORD=Jochimin007 -p 5432:5432 -d postgres

# if want interactive console with database server
# docker exec -it my-postgres bash

# for graphical enviroment install pgadmin4
