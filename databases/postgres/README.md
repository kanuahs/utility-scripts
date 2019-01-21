# Setup

Install docker
docker-compose up

# Connection

docker container exec -it <context>_postgres-db "/bin/sh"
su postgres && psql

# Reference commands

$ sudo -u postgres createuser <username>
//change user and create a new db user

postgres=# \password
//set postgres root password

$psql postgres
//connect to db postgres

$psql <dbname>
//connect to db <dbname>

$ sudo apt install postgresql-contrib
postgres=# alter role <username> with valid until '9999-12-31';
//fix pgadmin3 access problem

<connected_database>=# \c <other_database>
//connect to another database
