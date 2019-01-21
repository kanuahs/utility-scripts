import psycopg2
import argparse
import getpass

parser = argparse.ArgumentParser()
parser.add_argument("-D", "--database-name", help="database name", default="postgres", nargs=1)
parser.add_argument("-H", "--host", help="url to database host", default="127.0.0.1")
parser.add_argument("-P", "--port", help="database listen port", default="5432", type=int)
parser.add_argument("-U", "--user", help="database user", default="postgres")
args = parser.parse_args()

print("Connecting to {} on host {}:{} as {}".format(args.database_name, args.host, args.port, args.user))
conn = psycopg2.connect(
    database=args.database_name,
    user=args.user,
    password=getpass.getpass(),
    host=args.host,
    port=args.port,
)

cur = conn.cursor()

cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
rows = cur.fetchall()
print("Tables:")
for row in rows:
    tablename = "".join(row)
    print(tablename)
    cur.execute("SELECT * FROM " + tablename)
    data = cur.fetchall()
    print(data)
    print("----------------")
conn.close()
