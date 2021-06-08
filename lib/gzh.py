from lib.pymysql_comm import UsingMysql


def fetch_all():
    """
    查询所有
    :return:
    """
    sql = "select * from wx_gzh"
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()


def fetch_by_status(status):
    """
    根据状态查询
    :param status:
    :return:
    """
    sql = "select * from wx_gzh where status=%d" % status
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()
