import os
import urllib.parse as up
import psycopg2
import normalize as norm

def main():
    up.uses_netloc.append("postgres")
    url = up.urlparse(os.environ["DATABASE_URL"])
    conn = psycopg2.connect(
        database=url.path[1:],
        user=url.username,
        password=url.password,
        host=url.hostname,
        port=url.port
    )
    cur = conn.cursor()

    data = norm.full_get_agencies(cur, 0)

    print(len(data))

    conn.commit()
    cur.close()
    conn.close()
    # print(type(conn))

if(__name__ == "__main__"):
    main()
