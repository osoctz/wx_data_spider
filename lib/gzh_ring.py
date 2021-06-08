class GzhRing:

    def __init__(self, gzh):
        self.gzh = gzh
        self.count = 0

    def next(self):
        gzh_len = len(self.gzh)

        if self.count == gzh_len:
            self.count = 0

        current = self.gzh[self.count]
        self.count += 1
        return current


# if __name__ == '__main__':
#     ring = GzhRing(spider_config.get_list("gzh"))
#
#     while 1:
#         print(ring.next()['token'])
#         time.sleep(2)
