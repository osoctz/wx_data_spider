from pymysql_comm import UsingMysql


def fetch_all():
    sql = "select * from wx_gzh"
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()
