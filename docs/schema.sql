CREATE TABLE `wx_gzh` (
  `fakeid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `alias` varchar(20) DEFAULT NULL,
  `round_head_img` varchar(255) DEFAULT NULL,
  `service_type` int DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fakeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wx_gzh_article` (
  `aid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `album_id` varchar(10) DEFAULT NULL,
  `appmsgid` bigint DEFAULT NULL,
  `checking` int DEFAULT NULL,
  `copyright_type` int DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `has_red_packet_cover` int DEFAULT NULL,
  `is_pay_subscribe` int DEFAULT NULL,
  `item_show_type` int DEFAULT NULL,
  `itemidx` int DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `media_duration` varchar(20) DEFAULT NULL,
  `mediaapi_publish_status` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `update_time` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `wx_gzh_article_ext` (
  `aid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `read_num` int DEFAULT NULL COMMENT '阅读',
  `old_like_num` int DEFAULT NULL COMMENT '点赞',
  `like_num` int DEFAULT NULL COMMENT '在看',
  `real_read_num` int DEFAULT NULL,
  `friend_like_num` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;