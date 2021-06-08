import os
import yaml

config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "../conf/config.yaml"

with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)

GZH_KEY = "gzh"


def get(key):
    """
    读取配置项
    :param key:
    :return:
    """
    keys = key.split(".")

    value = config.get(keys[0])

    for i in range(1, len(keys)):
        value = value[keys[i]]
    return value


def get_list(key):
    """
    读取list配置项
    :param key:
    :return:
    """
    keys = key.split(".")
    value = config.get(keys[0])

    for i in range(1, len(keys)):

        value = value[keys[i]]
        if isinstance(value, list):
            return value

    return value


# if __name__ == '__main__':
#
#     print(get("common.fmt"))