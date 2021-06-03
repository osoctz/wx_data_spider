import logging
import os

log_dir = os.path.dirname(os.path.realpath(__file__))
log_file = log_dir + os.sep + "log/log.log"

LOG_FORMAT = "%(asctime)s %(name)s %(levelname)s %(message)s "
DATE_FORMAT = '%Y-%m-%d  %H:%M:%S %a '
logging.basicConfig(level=logging.INFO,
                    format=LOG_FORMAT,
                    datefmt=DATE_FORMAT,
                    filename=log_file)


def error(msg, *args):
    logging.error(msg, *args)


def info(msg, *args):
    logging.info(msg, *args)


def debug(msg, *args):
    logging.debug(msg, *args)
