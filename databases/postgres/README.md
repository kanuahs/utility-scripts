# Setup
```
docker-compose up
```
# Usage
```
bash connection-cmd.sh
```
To connect to database using the installed postgres cli

# Cleanup & Deletion

```
docker-compose down
```
Keeps data in the volume and reuses it the next time

```
docker-compose down --volumes
```
Removes the volume along with the data stored in the database.
Database will reinitialize next time the container is started


# Reference commands
```
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
```