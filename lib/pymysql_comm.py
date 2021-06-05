import pymysql
import yaml
import os

config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "../conf/config.yaml"

with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


def get_connection():
    """
    获取连接
    :return:
    """
    host = config['host']
    port = config['port']
    database = config['database']
    user = config['user']
    password = config['password']
    conn = pymysql.connect(host=host, port=port, db=database, user=user, password=str(password))
    return conn


class UsingMysql(object):

    def __init__(self, commit=True):
        self._commit = commit

    def __enter__(self):
        conn = get_connection()
        cursor = conn.cursor(pymysql.cursors.DictCursor)
        conn.autocommit = False

        self._conn = conn
        self._cursor = cursor
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        if self._commit:
            self._conn.commit()
        self._cursor.close()
        self._conn.close()

    @property
    def cursor(self):
        return self._cursor
