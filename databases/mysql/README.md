# Setup
```
docker-compose up
```
# Usage
```
bash connection-cmd.sh
```
To connect to database using the installed mysql cli

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
