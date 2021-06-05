/*
 Navicat Premium Data Transfer

 Source Server         : local_mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : 127.0.0.1:13306
 Source Schema         : wx_gzh

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 05/06/2021 11:21:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wx_gzh
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh`;
CREATE TABLE `wx_gzh` (
  `fakeid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `round_head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `service_type` int DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`fakeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh
-- ----------------------------
BEGIN;
INSERT INTO `wx_gzh` VALUES ('MjM5MDA0MzU4OQ==', '学而思爱智康重庆', 'xes_cq', 'http://mmbiz.qpic.cn/mmbiz_png/F9W2a9v8r6D5GD54GPaIp7Oaibfxwlv5P51oqicVWssiaHOwGGNwicEYMUBL0JDX1U7L4QIicVz3BPmLTM5jTuLE60A/0?wx_fmt=png', 2, '重庆中小学理科培训学校。智能客服、班次查询等服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MDQ2OTU5Mw==', '郑州小升初指导', 'zzxesxiaoshengchu', 'http://mmbiz.qpic.cn/mmbiz_png/JRLbbdXaNVRkP8suFN1yq8aX8Ip76ibP2axjWA0YC3xTSS49KtQtmInibbokXNiauvFUxA9ZsFI26ToZu0Uqib4UFg/0?wx_fmt=png', 0, '郑州小升初版块，专注于郑州小升初的信息汇集，尽最大努力为家长和孩子提供郑州小升初的相关政策、资料以及家长之间的互动经验。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MDYyNzY4NA==', '成都学而思', 'cdxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/9ugQ7uyjMzwvaxO3FUQibpy4XeLicqoCGmnlPESibjj88HEkM8uZib3vqBWBaiaH3OBhpBJ0lxFqrEyxArweibPS7fwg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。成都学而思培优成立10年来，已开拓28家校区，现有近千名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MjIyNTA0MQ==', '北京学而思幼小', 'bjxesysx', 'http://mmbiz.qpic.cn/mmbiz_png/tcuMiayy5EmZTCkPv34xAcibuWNib1ChgYePicP3vBmjRuATAGzwVGf13JHo1Rt343qttIGA6T3uo5W4KQql2KAHNA/0?wx_fmt=png', 0, '提供小班、中班、大班、一年级、二年级5个年级的学习资讯、教育信息，让您抢先知晓学而思幼小年级最新公益活动。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MjkxMTY1Nw==', '广州小升初指导', 'gzxiaoshengchu', 'http://mmbiz.qpic.cn/mmbiz_png/Pl5dM7RYr4D7xSKnLiaGiaUtJqIhibfpKGFicKsHFII7jURNZDmfBN9afAicb9cx3POyfwbSO14OCYVpWdibwQiaLwV1g/0?wx_fmt=png', 1, '广州2021小升初版块，专注于2021广州小升初的信息汇聚，尽最大努力为家长和孩子提供今年广州小升初的相关政策、资料以及家长们之间的互动经验。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MjUyNDQ3Nw==', '郑州中考', 'zhongkaozhengzhou', 'http://mmbiz.qpic.cn/mmbiz_png/yxNZNF1RoWxrhj8qC1qzlwxH9lKXOeiadA3CGIwyFNEMjOTZ4H2jtR0FQte8v2MLnLCLKj1NNL5ZcBhRoHL3HQA/0?wx_fmt=png', 1, '中考相关资讯，教育一手信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5MzA3ODIwMA==', '学而思网校', 'xueersiwangxiao', 'http://mmbiz.qpic.cn/mmbiz_png/CcR0UPibqOyAiboHEyLW28bQmRlxO4uh4fjLI9CQtktBZwicUzEtE6pMJ4mFickJk4aLLY1DkS1ia23Tnlic4zUcxAjg/0?wx_fmt=png', 2, '学而思网校官方服务号，致力于服务新老用户的服务平台。我们将为您提供直播提醒、听课购课、优惠活动、新鲜事等服务。学而思网校，每天进步一点点。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NDE0NTA1NQ==', '广州学而思', 'gzxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/vbgJ9m5M2PAvRBdefeZichLdoJUjeYCYUDRQDmdJTJKNeJDO0VGmw3W3vwUTbgCbwjGrpW87vYx3LH8vdibep4TA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。广州学而思成立于2009年，已在广州10个区开设教学点。我们将为您提供入学报名指引、听课购课、福利活动、学霸经验分享及学习资讯等服务，伴孩子一路成长。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NjA5MzY4Mg==', '励步摩比沈阳分校', 'firstleapsy', 'http://mmbiz.qpic.cn/mmbiz_png/gvhhlxexrtjTGhQaXTWSV2cZeeAWsE1wK1ZeEd8wiac5QOJndXmHexdF6W6oPVLSAZLJiaDkzNtHV5oRDW6KMb0Q/0?wx_fmt=png', 0, '励步英语沈阳分校学生家长服务平台', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NjI3NTY4Nw==', '青岛学而思', 'qdxers', 'http://mmbiz.qpic.cn/mmbiz_png/WAhhBFqcDvuujI5bSkMTnuGP2GmDmwF0EgSWb6xVn4805fdHKG8MRLQwvYj5Hs5hIiaPf9EoXFwm9TibOSam2zBA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。青岛学而思培优成立6年来，已开拓9家校区，现有二百余名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NzE1Mzc2MQ==', '家长帮广州站', 'gzjiaoyu', 'http://mmbiz.qpic.cn/mmbiz_png/XXuSfnbG9icEWlOCtr8LWHkJibE7COof4L1oSfo7jMKo7keTib6PTvHSDL8lkiaDGbtOxgOgQxpj3CWSNSUw1grSdQ/0?wx_fmt=png', 0, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5Nzg0NjM3MQ==', '加油学习', 'zhongkaoshenqi', 'http://mmbiz.qpic.cn/mmbiz_png/oAJh7XQNiaXlMo1PqxKp1wKIFqLUJLvyfrzlVibAT3NnmThBZdKflcrjxibjc5ALmU3MEic6OI4IicMsKxmJNx4Cicqg/0?wx_fmt=png', 2, '3-18岁孩子学习成长平台，提供新鲜升学资讯、精选学习干货、内部学习资源和图书/课程优惠一手信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NzgzOTYxNQ==', '东莞升学浪潮', 'dgxes-xsc', 'http://mmbiz.qpic.cn/mmbiz_png/oUmfPjprnEgfYX7VmibiaaWgMdYgKQdHgBChxkzkV5uo8O1MLkz1y5IrGQPq7qwSH2mDsmYIiaUy4tLVGer9W8afw/0?wx_fmt=png', 1, '专注东莞本土小升初升学，发布权威升学咨讯，分析东莞升学新政策，剖析各名校，为东莞孩子更好的升学。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5NzUzMzg5Mw==', 'DaDa官方', 'idadaabc', 'http://mmbiz.qpic.cn/mmbiz_png/wrCvWy15WnskYbusQUR8ufnAmutPZMDNpeUV3tuiafdKUKRWg2X5x4ria9WPLMFkQibpialseB0tFEjjSN7wVCfPUA/0?wx_fmt=png', 2, '专业在线少儿英语', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5OTgxODkxNA==', '学而思理科服务', 'xeslkfw', 'http://mmbiz.qpic.cn/mmbiz_png/1QkCVGKftJJfA8FKh3y12VhrBYv6nQ2AA8hIicf2XCZllxN0TvUNg6QDYbz8SxJGGrSw6Mb8cmv8CE2Dic6qE8jQ/0?wx_fmt=png', 2, '1-12年级学习资料免费下载', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5OTgzMDM3Mw==', '杭州学而思', 'ihzxes1', 'http://mmbiz.qpic.cn/sz_mmbiz_png/lgCHtvkzGdkI6TJJ6Dv7zuia71Lfbmyf64iadvFypr1wjFe4AD9tVb7UL23QRawuke88wrxukVWNhYyQTGqIce1Q/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性学科教育品牌，提供覆盖3-18岁的学科教学产品和服务。 杭州学而思成立10年来，在全市开拓了50余家校区，汇聚1000余名优秀教师。我们深耕杭州本地学情考情，致力于为杭州学前到高中学生提供优质课程和服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5OTk1OTE3OQ==', '家长帮石家庄站', 'shijiazhuangjzb', 'http://mmbiz.qpic.cn/mmbiz_png/9HTGicRDgcUjVjWVoTRnOaVKia66KbINj6xIqcln3HUicpnn1Cr2M48wfV9eALs98gTNKRB6WtP7dFybfvRBk4ctw/0?wx_fmt=png', 1, '家长帮石家庄站致力于本地教育，为家长、学校、学生提供交流的平台。帮助孩子顺利走过升学之路。', 1);
INSERT INTO `wx_gzh` VALUES ('MjM5OTY2NjE1NQ==', '无锡幼小衔接', 'wuxiyouer', 'http://mmbiz.qpic.cn/mmbiz_png/HFOkKOKUvA6dKCPPzepccDg9NiaR26REicG2KR1aB3rgwcibHgIGpqUAib4u8V09jQFR0BY5DXuGkjsrulRmxDVWDA/0?wx_fmt=png', 1, '这里是无锡学前-二年级家长的聚集地。提供专业的政策相关资讯，在线讲座，资料福利，答疑解惑，内容覆盖学前及小学低年级，带着每一位家长，找到学习的正确道路~', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3MjA4ODYwMA==', '上海学而思小学', 'SH-xiaogao', 'http://mmbiz.qpic.cn/mmbiz_png/KjiaAGq9wwnSkLNMMerGtQUzNvBccicMmP0CEdoJv1fgK76fFfTjqSGOZCCiajXQUWdic0YczyZaAwmVLhBvKicS7zQ/0?wx_fmt=png', 1, '为上海家长提供上海本地学习资料，干货讲座，学习方法分享及优质活动等诸多福利，更多精彩，欢迎关注！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3MjE5NTE3NQ==', '成都学而思初升高研究中心', 'CDchuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/0xXqpqSHZDOHSwOqg7mQMaMdrh8doibdmGhUMH9q5DSXM1Ry8eQyfI3CvFN3HSz7y1wdLOPf8rqJd0wrXNaMWnA/0?wx_fmt=png', 1, '学而思培优中考研究中心成都市官方公众号。致力于为初一至初三的学生提供全面的升学资讯、学习资料等精选内容，为学生的学习保驾护航！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3MTkzMDY4Nw==', '浙江高考君', 'izjgk1', 'http://mmbiz.qpic.cn/sz_mmbiz_png/f2UD8bj95DcBUSV6HEwAaOEpn7B4h7TV0qjJ8suTWWFt994k4UgWslPBFmRA2u6eQ5GE40sxkTwrF9NQgzAXiaQ/0?wx_fmt=png', 1, '浙江高中生三年的选择，顺利闯关高考', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3MTMxMjU4MQ==', '小猴亲子课堂', '', 'http://mmbiz.qpic.cn/mmbiz_png/Z2KicqpicrlniaF0xZZicP3YTTvHvicWDQ1AafgibyWgwPFOOsHrPOIZ2ibZKKicJdMGiafjANkEqyh8nIMgwORGOia2BLicg/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NDM2MzQ3OQ==', '家长帮长沙站', 'changshajzb', 'http://mmbiz.qpic.cn/mmbiz_png/TxWNicxrXXPv90xGKZ4zsuib1IltDakqCKRL0hj5jy0IUxXuUWRAsWuzWEoHDPhnsqGVY4KyO9UJGZPzCkLrEm4g/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NDMyODEyNQ==', '漳州幼升小', 'zhangzhouysx', 'http://mmbiz.qpic.cn/mmbiz_png/7YzVrI0gl8pr87IicEQZQUjgicZzl7mglhLwunN0aIKEbiawucf7kb1DvTtlhiarLLticcxIkmYcPRHT0AXK3ySGzdg/0?wx_fmt=png', 1, '这里有优秀的老师、有关心孩子教育的家长、有很好的文章、有最新的资讯、有丰富的资料、有经验的分享，有我陪你度过幼升小的纠结时光。愿我们成为朋友，希望能带给你一点帮助。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NTA5NjcxMQ==', '好未来公益基金会', 'tal2263760850', 'http://mmbiz.qpic.cn/mmbiz_png/SX3ar81NP7ahRxkjpL1byg3wj6l3d6BJF9W5C2zHLhzszTdkpiaJapBcjYItSwA7icQnSTicaW4nPzPLbGcYSdqhw/0?wx_fmt=png', 1, '教育为公，科技向善，我们坚持用爱和科技带给更多孩子美好未来！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NzM2Mzc2MQ==', '家长帮沈阳站', 'shenyangzjb', 'http://mmbiz.qpic.cn/mmbiz_png/VdNmiazjFAOzxcW2vNp0G6c7xW8uBaDKE4ezWWdKO1jW5quwto7lFoA5h1nkicg1XFYtVibYd4k21I25PaJTWODoA/0?wx_fmt=png', 1, '家长帮，帮家长。沈阳家长帮主要为您提供沈阳本地的幼升小、小升初、中考等招生政策、重点学校、考前指导、考情分析等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NzU1NjIzMA==', '学而思图书优选', 'ScienceHome', 'http://mmbiz.qpic.cn/mmbiz_png/icsic0BHt8w4tiaL4dAulTr0ciak9b50SibNX3WUfwdLsICQPCUoicTuVibXt3ickjDqzY2qYcowZgsw51zZfDmMaRUevw/0?wx_fmt=png', 1, '学而思辅导资料、图书秘籍倾情奉献！专业书籍咨询，为您提供小学、初中、高中期间数学、物理、化学全面书籍服务！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3NzUxNTAwMA==', '考研帮', 'kaoyanbangvip', 'http://mmbiz.qpic.cn/mmbiz_png/bxexT0Ht7llPXLXeeicsACjPRe9ZemRqCkFVxc10ia3wdvkHOXWLFBiaQfy4InINvpYZHSCGicctWRhszcGyqDhADg/0?wx_fmt=png', 2, '考研帮（原考研网）官方服务号，致力于为考研人提供优质的学习干货、备考经验、答题技巧、课程及答疑等优质服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3ODIxMjg3Nw==', '广州中考团队', 'zhongkaotuandui', 'http://mmbiz.qpic.cn/mmbiz_png/9SxFTzicsG2Jh70AoTeAz5BNP3ew7NDG41AVROJMDVNTBHQrjEGDIrwxlylhMr4FLn7Dr5pcOeA8SW81yTTgB4Q/0?wx_fmt=png', 1, '中考政策、学校介绍、最新资讯，这里都有！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3ODk3MTU5NA==', '学而思柳州分校', 'xeslzfx01', 'http://mmbiz.qpic.cn/mmbiz_png/iboy0TLPjy3bcGfibEibkx7A5kiaJZ42tOIldT1ModQpibanibnaUnyr3JlgMIkkqgh1rbM57fC0Oiazu8tK7prWb1OjA/0?wx_fmt=png', 1, '学而思，成立于2003年，国内知名的中小学教育品牌，始终秉承“激发兴趣、培养习惯、塑造品格”的教育理念，以科学教育为载体，采用多元创新的教学方式，培养孩子“受益一生的能力”。2020，您好，柳州！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA3ODM2ODc5OA==', '杭州幼儿', 'ihzyouer', 'http://mmbiz.qpic.cn/mmbiz_png/uzXbHtUI9JzK9ic8f268z9rIYibsA2JdALAA1WP2wSCb6PC99H2fwEbpYuMEUagsntTrXic6BxbArOYAn4ATpLkxw/0?wx_fmt=png', 1, '3-6岁杭州幼儿及家长的专业教育咨询平台，及时分享学习资讯、精选资料、福利活动。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4MzAzMzE0Nw==', '励步沈阳福利社', 'FIRSTLEAP-SYFWH', 'http://mmbiz.qpic.cn/mmbiz_png/aBnRLhZwNIJ5GO7xTsIaYPEEpyKClYFicnqGgOiafpJ0H3owyNcLZ7WAA0A3jGr1Y4rqmMfmictfaovQicKv8gpesQ/0?wx_fmt=png', 2, '励步英语&摩比思维合力打造的福利平台，沈阳上万家长关注，专注3-12岁孩子成长。本公众号只发放福利活动及福利课程，欢迎大家关注锁定！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NDA1OTMyNw==', '好未来', 'haoweilai-tal', 'http://mmbiz.qpic.cn/mmbiz_png/j0Uu0pbkYO35tBeztbwicWcBdUq7SEHqYiabNEO1DevQ0mflWrYiac9KZMpPniaW1a50McTyKn3zV9KemnaFlHAhJw/0?wx_fmt=png', 1, '好未来是一个以智慧教育和开放平台为主体，以素质教育和课外辅导为载体，在全球范围内服务公办教育，助力民办教育，探索未来教育新模式的科技教育公司。  坚持“爱和科技让教育更美好”的使命，好未来致力于让每个人都能享有公平而有质量的教育。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NjAxMjYxNw==', '考研网', 'kao_yan', 'http://mmbiz.qpic.cn/mmbiz_png/d2bicN5EQp1LtArsvVkVFv4HZPRwCQnxVOF5fgicmGGXakWJnvqyB84oM84NVq7IkbCd2tLgeDWBQZkNmrUQiciaqw/0?wx_fmt=png', 1, '考研帮官方订阅号，从备考到拿到录取通知书，考研帮与你不离不弃！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NjM2MzQ3OA==', '家长帮重庆站', 'chongqingjzb', 'http://mmbiz.qpic.cn/mmbiz_png/oynRvjMJxUeuHGkou1MZ26hwmOXtgkOnClKsvKHfXIPka4uoLQyLPsmDjIeN0vfQeBDvP08oicUnYI7EWPrMVdQ/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NTc3NjIyMg==', '北京学而思本地网课', 'bjxesbendiwangke', 'http://mmbiz.qpic.cn/mmbiz_png/gnr9LKBl1WC9ASV0AcP5fTpTibZWIDBuFQ13nDSdHQWMJmSQhG3IhZhX2tJtaa9mto9gUbyshAFY9r8M9YphjVA/0?wx_fmt=png', 2, '在家就能上的学而思，是学而思培优推出的一款K12在线直播教育产品，采用授课教师直播+辅导老师个性化辅导的教学模式，结合互联网直播技术和教学数据全程跟踪记录，为孩子提供专业的教学服务，给孩子受益一生的能力。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NTE5ODM2NA==', '成都学而思小学', 'cdxesxx', 'http://mmbiz.qpic.cn/mmbiz_png/6HwtvsTUaeBLuiaKyJhjkvOz9n7e0fvYzpHY0fFCBkyPzCbCDe4oTm1qnzDdTgcmL5HiaGyh9X4uwcl6vSyNSYOA/0?wx_fmt=png', 1, '为成都家长提供成都本地学习资料、学习方法、入学讯息分享，更多精彩，欢迎关注。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NTIxODc0MA==', 'GRE KMF', 'GREKMF', 'http://mmbiz.qpic.cn/mmbiz_png/JmIbVt8mkXDsr1GIh9AxXtrjNMHOJQC5715FiaDh7GPYBVShIb1gc5ArOWrBkmlLNPBY3vodg7R9uL05aCCicwMA/0?wx_fmt=png', 1, '每日带来最优质、最及时、最全面的GRE备考资讯。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NzI5MTA4Ng==', '杭州中考君', 'ihzzkj', 'http://mmbiz.qpic.cn/mmbiz_png/m2MZcwkW6KTaXRe2COlbVwQWrpiaE6eE2iaAEEgr5o0u38oBIjRJOZorFVnqDVLpr93RTud45Wv8mcdKZ90TAiaNA/0?wx_fmt=png', 1, '杭州高中学校介绍、中考数据分析、内部资讯、不定期福利资料更新，初中三年，我们陪你！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4NzM3NTk4OQ==', '家长帮长春站', 'changchunjzb', 'http://mmbiz.qpic.cn/mmbiz_png/9gl36ZLPGWmWicBWUicE6g9KBrfdXicjykQ7hibicsKceQV5c9AAmZglZuj1rEepngtp1097Ae8vPv6sQuyzbMO73Mw/0?wx_fmt=png', 1, '家长帮，帮家长。用户数量1000万的家长教育社区。 家长帮长春站帮助家长及时了解长春学校、考试、辅导等全方位信息，及时发布升学咨询及政策解读。 孩子的成长，我们与你一同见证。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA4ODIwOTYzMA==', '励步英语合肥区', 'FirstleapHefei', 'http://mmbiz.qpic.cn/mmbiz_png/BPBiav06uYibyksu9WNWFNiaVRc6NKAprszDiay43qYfUlJdiaOP0JE2VbpNaaAKrROeEk49Nibysow4TGvEj8CicslKQ/0?wx_fmt=png', 1, '励步英语为好未来旗下高端英语机构，专注为2-15孩子提供全英文全学科全场景教育。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5MDExMzIzNg==', '上海学而思幼儿', 'shxes-youer', 'http://mmbiz.qpic.cn/mmbiz_png/K8tUs0fQuhuILnF0JdQJZGwASeMxKunVbUgv0JMWs7FmPvZ2yGuapanibaibMJRlibF1mt8rM1sJQEDA5k4jYCOJw/0?wx_fmt=png', 1, '为您提供上海0~8岁宝宝及家长的学习资料福利，在这里可以最快了解到上海学而思幼小年级的最新课程资讯及活动讲座福利！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5MDIzMzExMw==', '北京学而思', 'bjxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/MNtvCtzHaLV7t4DFXaNicKt1PfU9ibwu6R4TdqZJDD00kaHfSUqb7r4wkFhibrM4AKk0jd0d3Wl03CU31sjLKyv7w/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖6-18岁年龄的学科教学服务。北京学而思培优成立17年来，已开拓70多家校区，现有千余名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5MjIxNDI5MA==', '北京学而思史地政生化', 'xessdzsh', 'http://mmbiz.qpic.cn/mmbiz_png/72jPTb9DLfbtGB0ldoqjictJRQPQGe60fhdm6rQ0csQiaEc53qJOamcroCrWIYhxG8z6YnuAXokq67l45nG3dEGg/0?wx_fmt=png', 1, '北京学而思史地政生化，致力于服务北京地区的初中同学及家长，提高孩子对初中历史、地理、政治（道德与法治）、生物、化学的学习兴趣及能力。关注我们，及时获取各科目的学习资料，掌握学习方法和技巧，浏览教育信息动态，获取最新的讲座及课程信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5MjU5OTczNg==', '石家庄学而思培优', 'sjzxueersipeiyou', 'http://mmbiz.qpic.cn/mmbiz_png/tWjiakAVWREbeM7T4J8nAFhZAvy5CoN1FNwqmBuTQVgy5Vqxf3Rmj65q0F8ibGPA2eFqtkVlx3dXbL7vNT867VTg/0?wx_fmt=png', 2, '学而思培优是中小学综合性全科教育品牌，提供覆盖6-18岁学科教学服务。石家庄学而思培优成立7年来，已开拓13家校区，现有三百多名优秀教师。我们将为您提供听课购课、福利活动、学习经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5MTE5NTQ3OQ==', '青岛小升初资讯', 'qd_xsc', 'http://mmbiz.qpic.cn/mmbiz_png/fXsOabZicAbCFeMuKkuYqfRVtdE61a5BkVdeBWBhibLCXFR3CHqjdlGdDgV6Ax3UjKb6l5RLFp9nr9Nh0fFDt0Wg/0?wx_fmt=png', 1, '青岛小升初资讯提供小升初政策、分班考试题、重点中学巡礼以及试题资源等，帮助青岛小学生提升学习能力，升入理想初中！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NDM0MjIyNw==', '北京市高考研究中心', 'xesgkyjzx', 'http://mmbiz.qpic.cn/mmbiz_png/Gpehia6uxu5odVicgIOeDlqTiaw7omSnePRMyQhIj7m56ZjPh6MatvkoaGib5XoZqOgbBfe3fD51EcQrUI7wz9HCNQ/0?wx_fmt=png', 1, '提供高考一站式服务：最新高考资讯、强基计划、各科试题资料在线查阅！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NDQwMjcwOA==', '上海学而思', 'shxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/G66ZKZ3u8xYDBVqZ0wfcIlb9fW8f0Hxic4soMM7ahKcWXPRDn0O6ibDd1pYLxOFKq5Jk1tjz9jbZrO5SuVOeg9mg/0?wx_fmt=png', 2, '学而思是国内知名的中小学学科教育品牌，入驻上海13年，立足上海考纲考情，深耕上海本地课程，课程根据上海特有的五四学制专门设计，打造真正属于上海学生的本地化课程。众多老师毕业于清北交复等985、211高校，真正帮助上海学生成绩，能力双提高。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NjE2NTgzMg==', '郑州学而思', 'zzxueersipeiyou', 'http://mmbiz.qpic.cn/mmbiz_png/ibypKfyz93gbqiaw9Liamo02eRmEUfcmQFibOw9FMfjTXqJDIo8gicWnHWWPiav1ptsZk18EKyz4zFTJgX3tSgNuTfOg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，郑州学而思为孩子提供全学科课外教学。我们将为您提供讲座直播、福利活动、学习咨询、选课报班等服务。秉承“激发动力、培养能力”的教育理念，做到因材施教、因人施教、因地施教。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NjE5ODM4Nw==', '网校初三帮', 'xeschusanbang', 'http://mmbiz.qpic.cn/mmbiz_png/a5zyQcjyjBDAxPrx0CO6ciareAzvmiacS9Ib9dprPt4tjh3LfdicvIYY6zXjmBKRd4vF5iaiark8LvvTHChFjJqgiazw/0?wx_fmt=png', 1, '学而思网校旗下教育自媒体。集结网校老师资源，聚焦初三年级，为初三学生家庭提供学习方法，备考经验，学科资料，教育政策，心理疏导等服务，助力初三学子合理备考中考。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NjEyNDkyNA==', '励步英语', 'first-leap', 'http://mmbiz.qpic.cn/mmbiz_png/77oiceAuTASicmKuvx8iaPN9Yial1zo0ZVBOAupA0MPNbu8Msg5WpZhWf6BvmrOsoqs1I3wxY1MXhI1mLNwb7GiaOaw/0?wx_fmt=png', 2, '好未来旗下高端儿童素质教育品牌。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5Njg5MjMxOQ==', '学而思本地网课', 'haibianclass', 'http://mmbiz.qpic.cn/mmbiz_png/agkEWic48pOhle1zHLa5TyBib87RM5nRwlryU00rFKsLEhUHqrZdcYC6Lw8mwAWJZ9b8ErVMfffKa9icAibZGu5ADQ/0?wx_fmt=png', 2, '学而思在线官方服务号，为新老用户提供学习咨询、优惠活动、听课购课、家庭教育等服务。我们对学习效果负责。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NjYxMTU5NQ==', '泉州学而思', 'qzxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/Sb9d1q7CdF5bZODMR5PGDmDJ3Qq5qptTHw1e35o5sbOIHHNhdpCKyVKaQGlEic9y6HSZu2lm321l2rCMmJRXEbw/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。泉州学而思培优成立2年来，已开拓2家校区，现有20+优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NTE0OTA3OQ==', '杭爸升学圈', 'hbsxq2020', 'http://mmbiz.qpic.cn/mmbiz_png/xhK9rGAaB7DWjPicyrefTRYehyVgicPQyFsTH9SnvapwuBcmEbnBE2jLdY0hz9Xvbkff6o4XMAfS2I9CNd3DEib9A/0?wx_fmt=png', 1, '一个有趣的杭州奶爸，和你一起看杭州升学。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5NTM2MzM3MQ==', '家长帮济南站', 'jnjiazhangbang', 'http://mmbiz.qpic.cn/mmbiz_png/iaoAvTvJI7wYiapXuXRJZqeMpiaTFfMc4XVO2qnS7J2BPJ4TeqjTFDzffVbXhQ7Nzy9NiaUHCQNN5C9rlxWia92bBnQ/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5ODM2NDE3Mg==', '家长帮杭州站', 'hangzhoujzb', 'http://mmbiz.qpic.cn/mmbiz_png/9bCL6JXPibo1icjyYN1pkk7DLTRSLqb6oBrjSMK4AGdS7wxWdst6J5ESCajrFLx54urlMNvNLVN81iaCraE3ibdOiaQ/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzA5OTE0ODUzMg==', '上海学而思中考研究中心', 'SH-chuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/0ApzynnrELfBzzfQpKia0mzQ5xxerdwTxqPibWK2EDiazG7YBUibfJKMwIRX7iaekEVULPVYT4es3rrGJAqpoO8uRMQ/0?wx_fmt=png', 1, '为上海初中家长及学生分享最新的升学资讯、第一手中考资讯、专业的学习资料、学而思独家微课。助力每一位学生更加优秀！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwMDA1NDc5OQ==', '未来教育实践平台', 'dh_teacherplatform', 'http://mmbiz.qpic.cn/mmbiz_png/vA4GzicvsTjjf6lgcctw19k6bKcUMyicC9W17B4M8SLMdgHrR1lM1PMHvjJq6gcmZh3M6oZy2KDAZ5tKEcgpr8UQ/0?wx_fmt=png', 2, '未来教育实践平台由学而思网校倾力打造，全方位服务于大学生学习、实践、生活，同时也为对教育行业感兴趣的同学提供兼职、实习、全职等多种岗位。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwMDIwNTgzMQ==', '学而思爱智康济南', 'JNizhikang', 'http://mmbiz.qpic.cn/mmbiz_png/fAXZy2gpffTiaBHqYZO8P9k2hPMMq2icgKog5lom2dR5IpHyByAuI4DQUIiaUiaxcyCPFibOq1qgoe84OEcwWW2Srrw/0?wx_fmt=png', 2, '好未来旗下中小学个性化一对一教育品牌。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwMDQ5MjU5Mw==', '长沙学而思中考研究中心', 'cschuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/ETNxiapaPNdhjhQfvapvNKwTX3265UnERXyxYbibLu8fofc4Ztwkjqjsff5nsuGj2MKx32BDicefNC68NdptH12bw/0?wx_fmt=png', 1, '关注长沙学而思中考，及时获取长沙中考教育资讯，抢先知晓学而思动态', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwODY3NTc3NA==', '长沙学而思小学', 'csxesxiaoxue', 'http://mmbiz.qpic.cn/mmbiz_png/DQibP4NlWpRkGUNVw0JtEsoIElf7nuPMkUtdicPHRDKymfgnic5pXw0OTgiapMfagkkfcficcVyrDfK5Lo9wdFERLNQ/0?wx_fmt=png', 1, '学而思是国内知名的中小学课外教育品牌。成立14年来，学而思始终秉承“激发兴趣、培养习惯、塑造品格”的教育理念，以学科教育为载体，采用多元创新的教学方式，培养孩子“受益一生的能力”。目前学而思已在全国43个城市开设分校。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwOTIwNjc3NA==', '石家庄学而思中考研究中心', 'SJZchuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/IXRpSXUPYAzQODXYEAM2fZlibDBInXIHmXslgP5n0uNjclomoDUXibL91ic8ndYhnnFTRuu2lrgdbs3ibaNkwLFmicg/0?wx_fmt=png', 1, '石家庄学而思中考研究中心为石家庄官方公众号。致力于为初中学子提供全面的升学资讯及服务，为学生的学习保驾护航！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwOTIwODAwNw==', '无锡初中生圈子', 'wxchuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/pVK1icdeJdduoCJnB0PeFfouLaAQwzYDX9sht2K0sRCfzpibr6aFYcnU9PoXlboG0s6cLW1a1yo2e05faibp85qYw/0?wx_fmt=png', 1, '无锡专业的中考信息传输交流平台，提供中考资讯、学习资料、政策分析等，无锡学而思初中团队伴您一路同行！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAwOTMxOTg4MQ==', '小猴思维', 'xiaohousiwei', 'http://mmbiz.qpic.cn/mmbiz_png/icWBQvia1Ed5rn4jibtT9tbibdnQEcsmpcn3S37sCrVIXrU9BcKNpKY6aaFeQCwsI0wTicaZKKcrh6E4C4dTRpzrdDQ/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMDQwMjI5Nw==', '郑州幼升小', 'zzyoushengxiao', 'http://mmbiz.qpic.cn/mmbiz_png/ZiczrqY8DpvI67bH8dXQrnCZgrJFNdsQkSJLZpd9IRlB3NHoFoPdkXcc1ia60J9DSq4CmKdjNBNiafNNltZCTrJoQ/0?wx_fmt=png', 1, '这是一个专注于郑州幼升小的升学平台。面向数十万幼儿园、小学阶段的郑州家长，独家解读幼升小升学划片择校政策、经典重现知名小学面试真题等辅导信息，科学指导幼升小与幼小衔接准备工作。让家长不焦虑，也能报上名校！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMjI5NzI5NQ==', '家长帮成都站', 'chengdujzb', 'http://mmbiz.qpic.cn/mmbiz_png/zgy9pR5FRQryW43rYV8jic0GbAKE429ibshiclgS8XVegE3gvG9oW7387xiawfjklSDUzlaBiaibeHK0Dn84iatEgsjcA/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMjk2MjY2MQ==', '厦门初招助手', 'xmpnxsc', 'http://mmbiz.qpic.cn/mmbiz_png/9GpCH0PYoxMfq29dDM4W7M2nWHxfm0Xw2vAiaVQd4m4DLcADo4biatPmtlMJQFAKljOxiahWEv7kH5ty59etOGn3A/0?wx_fmt=png', 1, '厦门初招助手是厦门本地专业的小学升初中平台，每日为家长推送小学升初中政策资讯、学校信息、真题资料、备考经验、学习方法、入学考试、录取通知等信息，志向成为厦门家长们升学的好帮手。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMTAxNDg4Nw==', '家长帮青岛站', 'jzbqingdao', 'http://mmbiz.qpic.cn/mmbiz_png/NcyPE3vzDVRaibCYEMF8eiab3k9YUyTu1FdE0CXQicYWQrbwhf2PRCLyBwaoZEJSiadzuicvexLBw1wtdHAe3SibW39Q/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMzI2OTE2Nw==', '家长帮上海站', 'jzbshanghai', 'http://mmbiz.qpic.cn/mmbiz_png/VKHjdsAzYwnSiasWGzicchoOOUsa77IzVELWvvb4wWTvXFLPFhc8kE45HkIU348uMMqncqePZBydhdAVnllmklmQ/0?wx_fmt=png', 1, '家长帮上海站专注上海本地升学资讯，覆盖入园、幼升小、小升初、中考、高考全学段，几十万上海家长都在关注！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMzI5NTYzMg==', '学而思', 'ixueersi', 'http://mmbiz.qpic.cn/mmbiz_png/TmH8qpXyWiaQAAhZd8eorRZ2Uus9ic85Dsq9E7s6eJRLVRLeVqRPq88hveGopzKIUtlIyqPjAUppFuCwb3FpskWA/0?wx_fmt=png', 1, '学而思培优官方号。作为国内知名的中小学课外教育品牌，学而思培优自2003年成立以来，始终秉承“激发动力，培养能力”的教育理念，以学科教育为载体，采用多元创新的教学方式，培养孩子“受益一生的能力”，目前已在全国91个城市开设百余个教学中心。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxMzIwNjYzOA==', '青岛中考', 'QDchuzhong', 'http://mmbiz.qpic.cn/mmbiz_png/jEUn01ia5iaqNIymQwAhHk1Imub62l7E8RoVsYMTbkicXHVYke1WSMOgSWxmx0NW0ib9xXIibaIBBwM4ghEUlDzDy2g/0?wx_fmt=png', 1, '分享青岛中考相关资料与信息，提供学习途径与方法，试题干货一手掌握，助力初中三年的学习，共同迎接中考！', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxNjM1NTM5NA==', '广州幼升小', 'gzyoushengxiao', 'http://mmbiz.qpic.cn/mmbiz_png/E4Juduwjwn7RibthtY2GfNuuxKqCEY6eM6WDGwNrJJGhtpZhGNgqrAMJJjIpUJyJPDegEsuic0jQa9246ZzHTagw/0?wx_fmt=png', 1, '这里有优秀的老师，有关心孩子教育的宝爸宝妈，有很好的文章，有快速的消息，有丰富的资料，有经验的分享，有我陪你度过幼升小的纠结时光。愿我们成为朋友，希望我能带给你一点帮助。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxNjYzMzAwNA==', '宜昌升学指导', 'ycsxzd', 'http://mmbiz.qpic.cn/mmbiz_png/htkkExCWTmlxNBiar2t0aZebVTaKk2DJjnqJpVRBibuXeuuyE8beiae6jDAroxngNL3iaibQrhpZA3jxzYEeBwFOOkA/0?wx_fmt=png', 1, '宜昌升学指导，旨在为宜昌家长提供权威、及时、全面的幼升小、小升初及中考升学免费咨询和服务、', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxNTIwNzA4Ng==', '成都学而思幼小', 'cdxesye', 'http://mmbiz.qpic.cn/mmbiz_png/NkU4XMd4GXZhVrcNw8H22XgSH5AGs13icgQxQMOjQDic5jwoWHtibOzofgJNXE6uqgdzeB8xQQK9JQrOBms8qeKww/0?wx_fmt=png', 1, '整理收集成都幼儿教育的相关信息，发布成都学而思学前教育公益活动。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxNzI5NTYwNQ==', '家长帮福州站', 'fuzhoujzb', 'http://mmbiz.qpic.cn/mmbiz_png/pXs7XHSd8iakwmIL30yonnUv7ZPibJDlswib5bIFicWFvdVL4mMZibxwNYXvJl3FBQ5FtdiakWH5P4lOwc1toz6lHyww/0?wx_fmt=png', 1, '家长帮，帮家长。用户数量1000万的家长教育社区，家长帮福州站帮助家长及时了解福州学校、考试、辅导等全方位信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxODIwNjg3OA==', '高中僧', 'xesgaozhong', 'http://mmbiz.qpic.cn/mmbiz_png/ibTicDbVfjuKSMiaib04a2yEfqC0YfiawaJB6Nh3BkKicvcnib2ANjqEHmn7IuedFEdV8Ra6MZqUzDHw1pXFJkLYhhurg/0?wx_fmt=png', 1, '大家好，我是高中僧，我就是传说中“学而思网校最靓的崽”！希望大家喜欢我～', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxODU1MDA1OQ==', '广东高考', 'GD_gaokao', 'http://mmbiz.qpic.cn/mmbiz_png/qpoNwicThVXWaJXqRMEwKW8ZEftic0OaueSfjibRvicJicpaFv2UH8mmJD5mmKprBvxiavaBJCiaM2IDHmiaqavuZjAuLQ/0?wx_fmt=png', 1, '专注高考资讯与学习指导，不求狂轰滥炸，只求有所帮助', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxOTc0MDQwNQ==', '北京学而思小班', 'bjxesry', 'http://mmbiz.qpic.cn/sz_mmbiz_png/DS7J9OMHiah3wWTnBnNrvnLsIicHnAmeRRnF4fVlexGWtMtFDg4uvyv1ZVVDZ5jfDGFB7Gu8OLCIRYc3XdRj7SYw/0?wx_fmt=png', 1, '北京学而思小班学习助手（2020年9月升小班）', 1);
INSERT INTO `wx_gzh` VALUES ('MzAxOTI5NjAyMw==', '家长帮郑州站', 'zhengzhoujzb', 'http://mmbiz.qpic.cn/mmbiz_png/6GMWqekbjTJwOrgXzj4kOrFibup03ESUXFahkO9KQjicgJfHpjVSjufZyOeAAAowpZYia6ok2N8xg6W1hutI50SbQ/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg2MDMyODg4MA==', '常州高考交流中心', '', 'http://mmbiz.qpic.cn/mmbiz_png/7Hia8Qly6DU6eksiaCicqFpS2LlJZbn3F44uvWqVichU51k0E2IwNvCIpkibCn8mpl23aia0xFnyJRLmPNj6U3qksjxQ/0?wx_fmt=png', 1, '关注高考最新动向，解答高考政策，指导高考志愿填报，提供精细复习资料，交流高考提分技巧，全心全意助力常州高考！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg2MjUzMTk5NA==', '济宁学而思', 'jnxueersipy', 'http://mmbiz.qpic.cn/mmbiz_png/IXUMDdhISIhWGD1cawxvd4LVTu8WsibANPia5FvEDkdjxOZNh5bfwMlDRRXh7Kgwj10SknpU7BdxvyYSVaLbGzUg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，济宁学而思培优提供覆盖5-15岁年龄的数学教学服务。我们将为您提供听课购课、学情诊断、福利活动、学习资讯等服务，伴济宁孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg2MTQ3MTcyNg==', '轻舟同学会', '', 'http://mmbiz.qpic.cn/mmbiz_png/IzYficWvwVetWpj3MNMicuq2SibibWoZ5rFTZBnA2jshjKfibJ4CmzHrEAcpjhfwxcxN24pHlHeRuDuY2qdo2Il9TBw/0?wx_fmt=png', 1, '提供大学生必知干货，四六级、考证、考研、出国、找工作等。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg2NDQ3ODU1OQ==', '乌鲁木齐学习圈', 'wlmqxuexi', 'http://mmbiz.qpic.cn/mmbiz_png/XUfsHuCKC059WZRoeW9bX4qFsMbCXzKiaqfNkBfKt3D8gXq9Ytx5Ytc3iaVXY1pFbcQibzvgJibqcFkIqUnibp9N52Q/0?wx_fmt=png', 1, '提供中小学学习资料分享、家庭教育、课程推荐等服务', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg2NTE3MDIxMQ==', '厦门学而思', 'xmxueersi', 'http://mmbiz.qpic.cn/sz_mmbiz_png/h1nrGtlJTBk8oG61xs9RlGI9H1BMayoBxm9496P8PktHJANOlwaC6PNcrXCFhOicNEVzUtXeFCjNwXsRNI3icibCg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。成立17年来，已在91个城市开设分校。厦门学而思2017年成立，我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg3MDQ4MjI0Nw==', '青岛入园资讯', 'ryzx-qingdao', 'http://mmbiz.qpic.cn/mmbiz_png/su0ggaS8PJGxkuyxibKOktKIibBY85TmAWGjJYicnGqA3nRaFn74HgCTN5otibBRc6CeWOj6ycB7rebOKmFibZtC2iag/0?wx_fmt=png', 1, '专注青岛本地幼儿园入园咨询、幼儿园新闻、经验交流、学习资料分享。与您一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg3MzQ1OTUwNw==', '秋天聊小升初', '', 'http://mmbiz.qpic.cn/mmbiz_png/VuuS5sTRP6GReobYq6FKbA1clrWycRJgWpMupNaMXwU3I1fBfY68vMCfabYiaNAibibddeP3dP4IibgiaYHcxV54ucQ/0?wx_fmt=png', 1, '家长帮秋天老师带你了解成都小升初，你知道的和不知道的成都小升初都在这里！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg3NTUyMjY1MQ==', '同学了不起', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/srBa9C8b3biaXwG5Nsfg2libNpniaLKfNnV1Pnibxrcm0OUWr0b613e1DRcKF2NwWJp3anBvRYuGsIic2opDGOyz89A/0?wx_fmt=png', 2, '点击右上角【关注】，免费领课程讲义/学习资料/大咖直播课等，不定期送实体礼物/抽奖，快快关注吧。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg3NzUwNzMwMQ==', '无锡学而思中考研究中心', 'wxxeszkyjzx', 'http://mmbiz.qpic.cn/mmbiz_png/nMiccjvfc9cOVjaedmFs3giaibBoJ88P60X9B6kJYbSw4TSR9g4cicOMQVs3xBbQLff1SRYMLibrDgVQ9mVlQnJaqug/0?wx_fmt=png', 2, '无锡学而思中考研究中心。为初中学生学习、中考考生备考保驾护航。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg4MzM2MzYwNg==', '宜昌学而思', 'ycxes01', 'http://mmbiz.qpic.cn/mmbiz_png/3aldPrbduck7ia4LkBakcqyj20eWGQ5nAc0QHwhGo1b3h0hhGnqDicrLlw2oQkew8IeytLTCzZNaFQDK7BjTxHaA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。宜昌学而思培优将为您提供听课购课、福利活动及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg4NjEyMzU0Ng==', '学而思少儿编程', 'xueersi_bc', 'http://mmbiz.qpic.cn/mmbiz_png/9OFJW1bD4HWMa1ZhJ08NZx4PMIwxwg70jquGafP0BucIphF5iaCHCkERpJ1GfkskVZhUzMIu7TDCBqszic0OvOnA/0?wx_fmt=png', 1, '学而思编程官方订阅号，定期推送少儿编程相关资讯，提供多种免费教育资源，帮助广大用户进一步了解少儿编程行业，提供更优质的课程服务。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg4NjUyODI1Nw==', '中山学而思培优', 'zsxespy', 'http://mmbiz.qpic.cn/mmbiz_png/3qKbzKaAdfliaQweR13ia7yh6lx4brUxA5Gj7DB911jCFKWW9D2vQ9DYNRdSXq37iacicaVYJemCzIhRv16jl9GAeA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。中山学而思培优成立17年来，已开拓2家校区，现有49名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg4NzE3NDMyOA==', '小猴AI启蒙课', '', 'http://mmbiz.qpic.cn/mmbiz_png/CRjSJ4qVzzgvmUaQF4aRY6CArUQiawSHqiaLqF2bQuEQ3wRFtl2DZbgkYBJLPKPc5e8NFCuMB8n6ODyKE8M1RDibA/0?wx_fmt=png', 1, '学而思出品，专为2-8岁儿童开发，符合儿童认知发展规律的数学、英语、语文启蒙课程。17年教学经验沉淀，沉浸式动画+AI智能互动，让孩子开心启蒙、主动学习。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg4NzUyNTQxMw==', '青岛学而思中考研究中心', 'qdxes-zk', 'http://mmbiz.qpic.cn/mmbiz_png/ythGqRo4OLsXibvibMUYMcmZRJGYKyHmyDBuvy0jachicqpay6kTk8qW4wNkrWUNv8vXSwsrLYibFQALyGx3tFo6GQ/0?wx_fmt=png', 2, '青岛学而思中考研究中心，为青岛初中学子提供中考复习资料、中考志愿填报服务。同时，也为青岛初中学子搭建本地化学习交流平台，定期组织优秀学员进行经验分享和交流，传播励志故事，树立榜样力量。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg5MzUxMjQyMg==', '西安升学快讯', '', 'http://mmbiz.qpic.cn/mmbiz_png/wHnmoFh4qwz6UypZibu6ia4aQQLUnwLRBjfHcvdmolQQb5eVpWxWQDmzahZDPq3vtmles7Khj0DGFbTzntL7aicww/0?wx_fmt=png', 1, '专注西安市本地中小学升学资讯，免费提供中小学教育资料、干货讲座、教育咨询，助力孩子奔向未来！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg5ODQ1NDYxNg==', '夏天聊幼升小', '', 'http://mmbiz.qpic.cn/mmbiz_png/0eBBMeAjQUl58GpocOOMcLa6247LicgkooOUOcr2tKbNQxdja5nEAXGJMOPq6tLEfU0v1ibbz1I6UP677snUHib6w/0?wx_fmt=png', 1, '成都幼升小家长指南宝典：了解最新一手信息，政策解读，独家爆料！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzg5OTE5MjAyMQ==', '牛娃爱学习', 'ywydyykt', 'http://mmbiz.qpic.cn/mmbiz_png/I7j3h9OQGxg2o8HibeCUyd0uxiaFuZciaFmbr8CzlSMYfXkTVVa1gYh16WKHSCBNH9ofBwnDB0hNXBFOskF0dAAQw/0?wx_fmt=png', 2, '3-6岁儿童学习', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MjY2NDIxMg==', '北京学而思中考研究院', 'XESxuexi', 'http://mmbiz.qpic.cn/mmbiz_png/zib5JxcmW2a8He8utcPk1RpibuAftrczia3PdaW1qvuj5VemL8PFDSHImgvOJ6ndR7h7COeBhl0WDRw1bto3r3iaeQ/0?wx_fmt=png', 1, '北京学而思中考研究院，致力于服务北京地区的初中同学及家长，每日推送中考政策、备考方法、中考讲座等中考方向内容，助力更多中考家庭决胜中考', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MjY2NjM2NA==', '贵阳学而思幼小衔接', 'xesyxxj', 'http://mmbiz.qpic.cn/mmbiz_png/kdoWxrElwz8K6QOAYssf7sEXnzGqPgzAJ5wuibJ12mqKvUibSbicIa7H1hBjJMwxIOQSibXNW1yWxWjdXicLZl0JWmg/0?wx_fmt=png', 1, '贵阳幼小衔接，提供教育信息，升学资讯，最新公益活动抢先知晓。助力宝贝提升幼小衔接基本能力。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MTcxNzg4NQ==', '家长帮乌鲁木齐站', 'wlmqjzb', 'http://mmbiz.qpic.cn/mmbiz_png/MuHvcQys7LmLeGcalkS5G7aIlkp1ZCe2qjmrx9MCSRQsZacGxfKqoUhQ4NWwXicGyUdfE96ticvicIBAHAIhUpz1A/0?wx_fmt=png', 1, '家长帮乌鲁木齐站是乌鲁木齐最专业的幼儿园至高中年级教育家长交流平台，提供最全面及时的本地幼升小、小升初、中考政策、试题、备考攻略、重点中学、中考资料、高考真题等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0Mzc0OTU1Ng==', '初三干货总结', '', 'http://mmbiz.qpic.cn/mmbiz_png/kmomVHQuRWHtc15UiajIyS5GHnnXWwxME80QaDMby9XfHHZ5CSjKbqMtSrAg5aD8Em5LialZGhpicXWAgNCtG4JmA/0?wx_fmt=png', 2, '中考各科干货总结，优化复习效率，把握重难点', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MzgxMjYwMw==', '初中天天练', 'shxeswx', 'http://mmbiz.qpic.cn/mmbiz_png/fYMnFoXu1KsO2amLNRDtL4yhzGEscEicsU3p5GD1WYXYcV7w7qJ18lZVDiaDWSJj59HcZAoAwDfXq5jZ9ElqQyIw/0?wx_fmt=png', 2, '为初中生免费提供全科学习资料，以及免费送书福利！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MzY1NjU1Ng==', '北京学而思五年级', '', 'http://mmbiz.qpic.cn/mmbiz_png/iad3M1qeoI83e7LaUSa987TuQBFb17t8VTtAOXb4Q9NPF9VYuyE3ia8PWXJNYlJcsQPcl0uGmxMcCib3dTJRDeD5g/0?wx_fmt=png', 1, '北京学而思五年级学习助手', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0MzY2NTcyNw==', '北京学而思一年级', 'bjxesdb', 'http://mmbiz.qpic.cn/mmbiz_png/FmvZg7gEialoI9Mcq61HqxjNKPwQzLlVsDaQ5ywfcxiabhXgAVTO4hbozbfibSNDhHjHkyibdibXaOibmquxYjDSOU8Q/0?wx_fmt=png', 1, '北京学而思一年级学习助手（2020年9月升一年级）', 1);
INSERT INTO `wx_gzh` VALUES ('MzI0NDY2NTQwNw==', '北京学而思初三', 'BJxesxuexi', 'http://mmbiz.qpic.cn/mmbiz_png/iaqD6iaUAPcNrUEnurFlsLORR4wQtjerPbKL5Wpt6hs0844NY0XObxjZ6QmgZzrraIjfO3j81KHD5IrOa1cyjnxA/0?wx_fmt=png', 1, '北京学而思初三学习助手', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MDUwMDA1Nw==', '小猴幼儿启蒙学堂', '', 'http://mmbiz.qpic.cn/sz_mmbiz_png/Sj2LmiaCDz8qMjNBDP5rhroShcSiafY5t9hHREiag8esqast4C4IgPPsFJa7n6GzfwMYBDlbdQyaJOBDYC7AWCiczA/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MDUzODAyMg==', '北京学而思二年级', 'bjxes1', 'http://mmbiz.qpic.cn/mmbiz_png/seyTCHAZqBakeD6dmaUSpicP5cCmydG4E1RoOFK22uLfS6lpxP4ia64DqupGFSDmdyTRbflar5bkb0YnqNbKEMZw/0?wx_fmt=png', 1, '每日分享小学语文、数学、英语等各种学习资料和家长教育心得。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MjU0MDAxMw==', '北京学而思初二', 'bjxeschuyi', 'http://mmbiz.qpic.cn/sz_mmbiz_png/ibtKzMIzk2kiala92Lib3fmFtdENYeQxrzMveRWm4JY9Ab4ky5U5nDv1H4R4ExWmpo7PwEziaqucKoKH9RGNFtaNhg/0?wx_fmt=png', 1, '北京学而思2020级初二学习助手', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MjY0MjE3NA==', '常州小初衔接', 'cz_xueersi', 'http://mmbiz.qpic.cn/mmbiz_png/4SMJDAhRgVq22PiaBIfM843icczWnf6pVfYsjial8DPVALnVBr3QO2sE75a8pf10k9uHtCBM9acibyGF6LbCLXpSJw/0?wx_fmt=png', 1, '常州小学升学信息早知道，为常州家长和孩子们提供相关政策、资料及家长们的互动经验。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MTE4NDE4OA==', '初中生资料站', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/w6NMeLPgnLUlbVuXcPRb0pYiae0Xkz3fialSPHFZoNw8tYaAlWjCCEjNcwQ5sPbNu1zYLwIbPZd9vlo8clAnVOibw/0?wx_fmt=png', 2, '定期为孩子甄选学习资料、免费课程、规划讲座等干货，帮助初中生学习少走弯路，让家长省心更放心！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MzAxMjE5Mg==', '无锡学而思培优', 'wxxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/tCibS1h2srCiaNyXeQ9azQPl8KWYFDS3hMLiaDLG9exibs6VL1TCSpmibSGz2icaXJfA5dtLpnibB5bvibHjGxKrYSZjZQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。学而思无锡分校成立6年来，已开拓6家校区，现有200名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1MzQ3ODU4Mg==', '北京学而思订阅号', 'dongxuetangbj', 'http://mmbiz.qpic.cn/mmbiz_png/veiaibrr2T9nJvkBuibJ6IT5gdXdYvQDzhj6BIGkSnQkpIctyDOeFgBSEfstDHdXUvOwJSicFxQQIluaC9243M9XqA/0?wx_fmt=png', 1, '北京学而思针对K12的孩子提供全学科课外教学，线上线下课程服务，学习资讯，家庭教育等内容，秉持爱和科技让教育更好的愿景，为北京中小学生提供本地化学习内容，帮助孩子们提升学习力，培养受益一生的能力。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1NDE4Mzk3NQ==', '镇江学而思英语', 'ZJXES_English', 'http://mmbiz.qpic.cn/mmbiz_png/jT2WBszfFoFKTwrR3ZbfTIzE1S1icgicQgNnjlYyejWZ9p2jCxok1PReIEQicfzdmiaLdB3SVpmbYLDar2Mbibo9ibQQ/0?wx_fmt=png', 2, '学而思英语——学而思旗下专业英语品牌。拥有超过10年英语教育培训经验，专注中小学英语学习，已在北京、上海、广州、深圳、南京、苏州等多地设立分支机构，年培训约40万人次。提供专业的镇江教育信息服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1NTY3OTIyMQ==', '镇江小学生', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/qDn2b25yQa47DhVTqLPRvMYYpAzvj8tu4v8vlvlGbBFY5AFRpudHxIZ5UCTryhqS2dgFARz7xnl6oGkz5KZPgQ/0?wx_fmt=png', 1, '镇江小学生是镇江地区最专业的小学阶段家长交流平台，提供最全面最及时的本地小学试题、备考攻略、学习方法、教育理念等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI1ODI5NDg5Nw==', '福州学而思', 'fzxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/NxozP9vlgY2EbVVfQLaZwrADjCNeW2wr1DTpFIGqqmkyJCbJbve5UMYQ3CRcQ2M9Mm8yl4X3dsowyYOVlb1NIA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。福州学而思培优成立6年来，已开拓10家校区，现有近200名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI2MDM1MzQxOQ==', '佛山小升初指导', 'fsxsczd', 'http://mmbiz.qpic.cn/mmbiz_png/GOLbWuZgypcdD6Gicicyty23UjnxgtEmteSjboGFic8w4Hia3dRLwibWpPEXT9Yz5Bh8Q0Hw5WtmzyCfJLM1IibTytLg/0?wx_fmt=png', 1, '佛山小升初指导，专注于本土的小升初教育信息发布，包含小升初小道消息以及政策分析，帮助你更好的了解佛山的小升初资讯，更有牛娃家长给您分享不同的教育经验', 1);
INSERT INTO `wx_gzh` VALUES ('MzI2MTc0MDk1OA==', '学而思网校素养课', '', 'http://mmbiz.qpic.cn/mmbiz_png/Ynk9QL6KMAjQoa4ticnoeFIDdAb3GaM4vWIkSSAOKO75sNNtzL59EXZXUlZc8Jic3HVicwgCIFUPdKNC60QtzhrsQ/0?wx_fmt=png', 2, '学而思网校素养课程官方服务号，致力于汇聚全球的优质资源为学生提供高起点的通识素质教育课程，帮孩子构建完整的知识图谱，真正做到‘激发兴趣，培养习惯，塑造品格’，让学生有能力适应未来的世界。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI2NDY1OTI0Mw==', '摩比思维服务号', 'beijingmobby', 'http://mmbiz.qpic.cn/mmbiz_png/wt1LmEJ7wwoX9H6zdra5oEBcicgoofwLRs7VUmp7bZd3kFEiaOYm3BM3fzbfYzWkQJVibUZnkibFjotTdoNtJv5eNw/0?wx_fmt=png', 2, '美国纽交所上市公司好未来教育旗下（NYSE:TAL）的儿童素质教育品牌，拥有自主研发出贯穿儿童成长敏感期的完整学习体系。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI2NTIzODQzMA==', '长沙学而思', 'csxes1', 'http://mmbiz.qpic.cn/mmbiz_png/IeDTPRvSALu2hy0qOR3Q4Vvw9FOOaRSUs1xCq4zFKp83CatyIBGGxsqeJcSLiaesmSypuGOvKibJ1xzyFGouRHpw/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。长沙学而思培优成立7年来，已开拓15个教学点。我们将为您提供购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI2OTYyOTU0NA==', '重庆学而思培优', 'cqxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/ibgYAsoibgnOpcD69CcH0AhYz9QMU2fZFJOjBaqNxCX4F5Ax3wmZfttjK9F5rDOJ6HlWKouWBPuYibiaIcI0Norpjg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。重庆学而思培优成立9年来，已开拓40+家校区，现有1000+名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3Mjk0NDI3OQ==', '镇江学而思中考研究中心', 'zjzkzd', 'http://mmbiz.qpic.cn/mmbiz_png/9e2ibCrTFYBXfabv0ZyfEibJepI4icsicbyKicOW0IGF2IoT0rKBMu8LUMMtlYRNJKtJhZLORhibAOASq53Jh2HatELg/0?wx_fmt=png', 1, '专注镇江中考：镇江中考政策解读，高中招录信息分析，初中文化课程指导，服务于镇江初中生及家长。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3MTUzODM2MA==', '北京学而思大班', 'bjxeszb', 'http://mmbiz.qpic.cn/mmbiz_png/0kIuweosZBM84D3NrF5em7CPWShpl8BpjOlHf9HxKwuw14dtQa3lyfVojeEbO1Sapa66fmc9NGBQQH4uPPhtUg/0?wx_fmt=png', 1, '北京学而思大班学习助手（2020年9月升大班）', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3NDE2NTU1MQ==', '考满分考雅', 'IELTSKMF', 'http://mmbiz.qpic.cn/mmbiz_png/07OMNwsCev307rGU6sUvB9lF8Zrgr2vwciaGVEEeYUpqQWibZ5US8fDpygRFIkvdN56CluHzoEicu4IicQ78fwtz2w/0?wx_fmt=png', 1, '没有太多复杂的Title，只为成为你的雅思idol，关注我，成为考雅路上最靓的仔！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3NjI2NjgyNA==', '长春中考君', 'ccxeszk', 'http://mmbiz.qpic.cn/mmbiz_png/2BI3YqjD1zVeb4xqibHricc7oH2tO14ibhx49tWiamyjypIEXByo2d4J10ezN8MBhTAq8daJ9FJBXn18SEBmaXNwaQ/0?wx_fmt=png', 1, '这里有长春最新最及时的中考资讯！政策信息、试题资料、赛事信息、中考讲座及学习方法全在这里。决胜中考，有这一个号就够了！欢迎关注我们~', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3NTkxNzExOA==', '东莞幼升小资讯', '', 'http://mmbiz.qpic.cn/mmbiz_png/sHa2ibjM4s9EiaxClGSP9ibyrqANXUTQR8FnicX6Gk3P46V1uX4xvvM8oFP9Yb8ZJCyVMQqBHibhyN3juIKL3eSPTvA/0?wx_fmt=png', 1, '此公众号主要服务于东莞幼儿园及小低年级家长，旨在第一时间发布“本地名校招生信息、独家择校建议、幼小考情分析、名校面试真题、当地家长分享”。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI3ODYyOTczNA==', '青岛学而思高考研究中心', 'QDgaokao', 'http://mmbiz.qpic.cn/mmbiz_png/RlJ7PE5lsicKNsutXWUpTnCQXY6wDyDibvhetvIpbnM0pibK0Vjhfyaic6rnG3qrtbaoH5jLibBHGepobj6QjMA8lNw/0?wx_fmt=png', 1, '学而思培优高考研究中心青岛市官方公众号。10+年专业经验积累及研究沉淀，整合优质教育资源，聚焦高考全链条服务，为青岛学子提供最需要的高考资讯。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4MDY2MjcwMQ==', '学而思网校初中', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/WWSW6g8TiaAVH9sLPicc3p1hlmHzG3TNibL2rU4hmYZpxURUPOxUroXibBQadBteNtpShibxBOPOS9iac6NsxiaJFeDpA/0?wx_fmt=png', 2, '学而思网校初中官方号', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4NDY5NzI4Ng==', '佛山学而思培优', 'fsxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/iaOgSfvMzbVrvQGfanMaWchF30RgTMy1NRKkOtKvicj47czV9KhS46v1icwhnfJia7hnnbyvwibHe5n6djo5UkhR2Zg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。佛山学而思培优成立5年来，已在佛山三个区开拓8家校区。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4NTY5Njg4MQ==', '学而思1对1', 'jiaoyuing', 'http://mmbiz.qpic.cn/mmbiz_png/hQET9gRJVriaJk6HVJlnRUUllpia9zkaibgMElZUFiakjfQVAVyy5PRpsicJ40Kw6Vf8ton447ZS9a1y31I09gic0sZg/0?wx_fmt=png', 2, '学而思1对1是学而思旗下聚焦中小学个性化辅导的高端品牌。我们为小初高年级提供1对1、8人班、1对1在线等全学科辅导服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4NzI3NzczOQ==', '小猴启蒙亲子课堂', 'kaixinbaba06', 'http://mmbiz.qpic.cn/mmbiz_png/umoZ8XiagZILnhTeGbbMW94FEAVYM3rWWNj266QGHWtvhl9AI0A2GOaO4RPXV61giapEOrVtFmQCo5UYMl1LNd7w/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4ODA5NDMzMg==', '上海学而思订阅号', 'shxesyier', 'http://mmbiz.qpic.cn/mmbiz_png/mic6tg4ibMricumvgibo6TSficwNSyDkGjqsgUdTUMFPTu9A0CaeVcXS5e6ZNVyWhge71BW41Qe3ibIwhMQicgvL8MzBQ/0?wx_fmt=png', 1, '上海学而思 | 立足于上海本地考纲考情，为您提供本地课程、本地服务、本地老师，分享学习方法，优质的学习资料，学习路上始终有学而思相伴。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4ODc3Njg4MA==', '冬天聊初升高', '', 'http://mmbiz.qpic.cn/mmbiz_png/3KEK7Zrw8zJbnl0jPy3bbDIyHO6ibFp1XjG66813utrEtTJ8BLHY0BAM3a5b7Pic6fJ3eia03ByoPbyVN6jvu0LaA/0?wx_fmt=png', 1, '成都一站式升学咨询平台', 1);
INSERT INTO `wx_gzh` VALUES ('MzI4ODE3NjMxNA==', '家长帮厦门站', 'xiamenjzb', 'http://mmbiz.qpic.cn/mmbiz_png/DJBYTDQoFpy0xbbASibwUhtcBIZBjvE8hEPsiaHkHvj1iahHd6ziab1RFwVm8aRGBMuYicOmUmqwhnraJcG0OLlKibgg/0?wx_fmt=png', 1, '家长帮，帮家长。中国规模大、活跃度高的家长教育社区，家长帮厦门站帮助家长及时了解厦门学校、考试、辅导等多方位信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5MjExNDI2Mw==', '小猴启蒙乐园', '', 'http://mmbiz.qpic.cn/mmbiz_png/dD4VymfxsjxVUM3WibAqFuNVKNZTYdPJcjZnCwdzIT8CU5y8Nnjz2qeBbk6oReAzpRkAZvJR8wXzB9bfzicHBFBQ/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5MjIyMjM4MA==', '佛山幼升小指导', 'fsysxzd', 'http://mmbiz.qpic.cn/mmbiz_png/Sic8UB3I2cgWSaXV2IHoCAAQBzURgiaaVkibtqDXS9ziaNlytykuV2H1L4L2TS4GbRCeaP9JIXU641xuzscv1QdOiag/0?wx_fmt=png', 1, '专注于佛山本土幼升小信息发布，包括幼升小学校动态信息、升学小道消息以及政策分析，帮助您更好了解幼升小资讯，还有牛娃家长与您分享不同的教育经验。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5MjkyNDQzNQ==', '东莞中学宝', '', 'http://mmbiz.qpic.cn/mmbiz_png/7GiamnxPXpaTb5b2R16UuNqBib8tuTa8z7KAyZ8Eibr8SQ6tuHIGSXf6uIkmreibshuDAdGxQj8JticX3GLXwXwkNeQ/0?wx_fmt=png', 1, '抓住初高中黄金6年，不要错过东莞中学宝。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5MzE5MDgzNA==', '东莞学而思培优', 'dgxueersipy', 'http://mmbiz.qpic.cn/mmbiz_png/X1Y4U01e841R3fWJAlvCcDtbOFia3VPwAjicABLqucNHtXxDaCorE7DQsPml5KAcELvPlIB7XYNU432VAOlgfkaQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，2016年入驻东莞，提供覆盖3-18岁年龄的学科教学服务。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NTc2MzQ0OQ==', '杭州小学生', 'ihzxxs', 'http://mmbiz.qpic.cn/mmbiz_png/5YtGiaQGY2Rfhw2LeDGpWFmVStZ4fLeyxGBjBeibsRl21kpqQYFqlLmhCp5bl1c5jzyCWXUMh0W2cziblQwM88kIQ/0?wx_fmt=png', 1, '杭州小学生成长营，一到六年级课程专业解读与能力培训指导，分享实时热点、精选资料、福利活动。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NTcxMjQ5NQ==', '烟台小学升学', 'ytxxsx', 'http://mmbiz.qpic.cn/mmbiz_png/iaL4Pqo0dtQ64oKKAsVrlcKhB72tSarrQaqJFmUe4QpcN5yTx4XMNibVbcmNLtdAPf4DN2TibwIS8bvx5UNjDibBhw/0?wx_fmt=png', 1, '烟台专业的教育升学交流平台，提供全面、及时的本地小学升学政策、试题资料、备考攻略、重点中学等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NTY0MTUwNA==', '淮安小学升学', 'haxxshx', 'http://mmbiz.qpic.cn/mmbiz_png/YjarDhnmcgfntibSHbt2EyAOiaClsuE2FGLDc6KrZ4ZW6BVGFxDSjMz2e8I1XtglJBJtFNJP27icUTXrY2JfpZwtw/0?wx_fmt=png', 1, '淮安专业的教育升学交流平台，提供全面、及时的本地幼升小、小升初、中考政策、试题资料、备考攻略、重点学校等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NTY0NjQzNA==', '福州幼升小助手', 'fzysxzs', 'http://mmbiz.qpic.cn/mmbiz_png/hiaQc9J1VlSzibvMJWkQtxfwW1EsicvmgKszWdtUNclrcDIVlnn7LKczxfj9sb1PE8THFMd6pOLbGDiawSwQfCdW1Q/0?wx_fmt=png', 1, '我们以专注福州幼升小，服务福州家长为口号！为家长们提供专业的幼升小资讯、政策解读、择校攻略。在幼升小的道路上，我们陪您前行，与您相伴！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NzUzNzA1MA==', '长春学而思培优', 'changchunxes', 'http://mmbiz.qpic.cn/mmbiz_png/ngFopzRPJuEWHtefCYiaPia1mZI861A3Let8bJv9bb4b0a4UAVQhicWHMSvDiatDF6vzUNl7uopfbQvaee5CIklJUw/0?wx_fmt=png', 2, '学而思是国内知名的中小学课外教育品牌。成立14年来，学而思始终秉承“激发兴趣、培养习惯、塑造品格”的教育理念，以学科教育为载体，采用多元创新的教学方式，培养孩子“受益一生的能力”。目前学而思已在全国43个城市开设分校', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5NzYzNjU4MQ==', '学而思爱智康长沙', '', 'http://mmbiz.qpic.cn/mmbiz_png/aBFMMrA6ibOu4qYicsUfq3PQ6Vuibtq77gpU9q4SLac5JDjKq4gIdLfIbicO9onB4apd4ibibGerXdJxhArjH5jsAYaA/0?wx_fmt=png', 2, '关注长沙学而思爱智康，了解最新的中小学政策动态、学校介绍，最实用的学习方法、知识点讲解，让学习更有效！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5ODc1MDg5Mg==', '沈阳学而思幼儿', 'syysxtd', 'http://mmbiz.qpic.cn/mmbiz_png/8DkEhxqWKGT7K0jV1YsUeHd7FUiciaYtQyxibZxTgQiauyuknzpiaLtz6Hf9uicWesJJCUp6ddoCLN2zFB8HQ0arI4nA/0?wx_fmt=png', 1, '爱交流，爱分享，提供沈阳学前资料，热点活动第一时间全知道！！', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5ODg3OTg3Mg==', '镇江学而思在线', 'zhenjiangxeszx', 'http://mmbiz.qpic.cn/mmbiz_png/3nic8auKSib3YMDIL98NINpX0rvp2KMQ1icVibkfKibgJWACQ7iaN2iaQUaWm4G4tPm6ZagpDl7FT4Z3fnynSdbY2pFYg/0?wx_fmt=png', 2, '在家就能上的学而思小班课，是学而思培优推出的一款K12在线教育产品，采用与双师线下班同样的教学模式，结合互联网技术和教学数据全程跟踪记录，为孩子提供专业的教学服务，给孩子受益一生的能力', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5ODM0OTkzNw==', '杭州初升高资讯', 'hzaizhikangjiaoyu', 'http://mmbiz.qpic.cn/mmbiz_png/WhNwqONCiaXbco3uTwOgiaPfmDhzQzbicqG0iaqC2p4ibiaR8riah0WgqveZGw3d0XqPjboK89sYkCVCrMlJz7aWMHfvA/0?wx_fmt=png', 1, '好未来杭州学而思1对1 为广大学生家长提供相关资讯、学习资料和公益讲座服务。陪伴孩子一起成长', 1);
INSERT INTO `wx_gzh` VALUES ('MzI5ODYxNjg1NA==', 'GMAT考满分', 'kmf-gmat', 'http://mmbiz.qpic.cn/mmbiz_png/hroBznpZeojIdoEI4MKiaydOZ4LmxpMVAC0gWCV66rk08MiaX4tdib257y9aGtGvcBIzEd2eAMvicSIFpB8jtjGwYw/0?wx_fmt=png', 1, 'GMAT考满分唯一官方订阅号！ 热门免费活动，一周公开课预告，大牛老师提分干货，高分学员经验分享…… 想要更多赶紧关注我们吧！', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwMDg2NjY3OQ==', '学而思长安校区', '', 'http://mmbiz.qpic.cn/mmbiz_png/5fic6nmndugIaBGSjUWicXe0MgOR7KEyPnM0vyw9ZvicjH8hafm2icCOdqd8Og5ouHfWrzMub20Th07Endw9XUnFKw/0?wx_fmt=png', 1, '此公众号主要服务于长安及东莞地区家长，旨在第一时间发布“本地名校招生信息、独家择校建议、升学考情分析、名校面试真题、当地家长分享”。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwMjc2MzYyNA==', '小猴英语快乐学', '', 'http://mmbiz.qpic.cn/mmbiz_png/lwKV255RPbq2MTKvdEo51CjLCsuCfyHCuVFvgkcmJF5tFYnziaOiaZf1ezw4s9lkLq99Ol90EgibJwzWlGyGeI6jw/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwMTk0MzU5Mg==', '口语精灵', '', 'http://mmbiz.qpic.cn/mmbiz_png/QlkOmBicl9BZlnWrXqYNkBcmXvLeZfwAsTvh9vWhNIycOgia82U07LmZZ9JagJx9PW6G3oUZqibmnLggTDwXAy5xg/0?wx_fmt=png', 2, '用表达发现世界，让思维探索更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwMzIxODQ5NQ==', '初三家长课堂', '', 'http://mmbiz.qpic.cn/mmbiz_png/V9SpibwjLSia1FH3kuR4ictuLG1Zia1eqWkMu9uubmnmB0KqTEN3oriaJcCDqibe2FmG5S5MfzOKschq5PfZ3XicPPeRg/0?wx_fmt=png', 2, '提供家庭教育、亲子沟通、心理辅导等方面优质文章，分享优质教育理念和教育方法。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwMzY1NzcxNw==', '北京学而思六年级', '', 'http://mmbiz.qpic.cn/mmbiz_png/6ia997XeGcNzbhyCcItwbQCicfJIyKUxH5QLwIeibT7h9fwjX7RpnT1iaHDiaXR689eLQTLf5LGbYMfxV2y13GNnPyA/0?wx_fmt=png', 1, '北京学而思六年级学习助手', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwNDIwOTkxMg==', '长沙学而思幼儿', 'csxesyouer', 'http://mmbiz.qpic.cn/mmbiz_png/DiaZSHcZsvUUJNichIMptEiaxaPc2flPJWfzicCKjRNQEEleeia09x4FE7o1y6EF0YXxtURCcgZpDNcTxcfZA12PxSQ/0?wx_fmt=png', 1, '学而思是国内知名的中小学课外教育品牌。成立14年来，学而思始终秉承“激发兴趣、培养习惯、塑造品格”的教育理念，以学科教育为载体，采用多元创新的教学方式，培养孩子“受益一生的能力”。目前学而思已在全国43个城市开设分校。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwNTg2NDA5Nw==', '扬州小初衔接', 'YZXXSX2017', 'http://mmbiz.qpic.cn/mmbiz_png/8USraYjwSLomtHSASWWRAH5oVIpMgcPa1VgoGHrGQWnN4NGQ5CbBSArZY10KN5AjVnichTA7ia0JiaUickMJKYHhVw/0?wx_fmt=png', 1, '扬州专业的教育升学交流平台，提供全面、及时的本地小学升学，小升初政策、试题资料、备考攻略、重点中学等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwODY1NDY1Nw==', '英语学习资料站', 'EnglisDoc', 'http://mmbiz.qpic.cn/mmbiz_png/VF9icC4pUaomZo7qfLyFKQyzqtqIGwM9O6gUibTIlQft8o1HmP2hE9OYmC3kMicm1gDnx06ba2ulAM9yBINIACZ2w/0?wx_fmt=png', 2, '学而思小学英语学习资料和课程服务', 1);
INSERT INTO `wx_gzh` VALUES ('MzIwOTAxOTkwMQ==', '深圳摩比励步', 'mobby_firstleap', 'http://mmbiz.qpic.cn/mmbiz_png/vk3Q6O2DmGSf2e88ZtCkAPVdiaSeXcNtMawroHVEiajYLSDeEu1t2iaWxX7kOz8H0ibfbj2sDdDU9ianeOCzpUibBNDw/0?wx_fmt=png', 1, '深圳摩比励步是好未来集团TAL（原学而思）旗下的高端素质教育品牌，专为3-8岁的儿童提供优质的素质英语和数学思维启蒙。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxMDI5MjAyNQ==', '学而思互联网招聘', 'xeshlwzp123', 'http://mmbiz.qpic.cn/mmbiz_png/42FfviaqFyY7xPMSBicpwUR2Bw3H8Yc64hNXCb90icdsbouuS3uaqm5wPzkwlKLAG83noeASlxyIia4hkziafqpBy1w/0?wx_fmt=png', 1, '我们的校招，可以是有颜、有趣、有料的！', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxMDY1ODU1Mw==', '北京学而思初一', '', 'http://mmbiz.qpic.cn/mmbiz_png/ibNTUjcJrwHicc6GLj4JLyeMKXHm0xAZ71QyRdyMNDmRXPqy5NEF8K5C0iaMqqjxUZ3lLJtMaHIpa5Rq9WVkhxACA/0?wx_fmt=png', 1, '北京学而思初一年级学习助手', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxMjAxODA5MA==', '好未来招聘', 'hwljob_zp', 'http://mmbiz.qpic.cn/mmbiz_png/2eYCfzdpC2cegjiareDOFUuibqX2APhxZzxmmcibJVrH5tbu9ehJHjYNFtGBsJH8sqImibkG66YzhqP8JezhLYchjQ/0?wx_fmt=png', 2, '更多可能，更好未来', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxNDA3NTQ3Mg==', '我在无锡上小学', 'studyinwx', 'http://mmbiz.qpic.cn/mmbiz_png/Jt1viaiay7QG90gusNvQmnWtVIcEKWcIOOiaSfDR1tTKBRKx1IaSCvkLUGWgX4Orf85csUnmJsSkPoYZCgVjyEYUg/0?wx_fmt=png', 1, '这里是无锡4~6年级家长的聚集地。提供专业的小学升学相关资讯、在线讲座、资料福利、答疑解惑，带着每一位家长，找到小学升学的正确道路~', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxNjg5NTA4Mw==', '初三资料库', '', 'http://mmbiz.qpic.cn/mmbiz_png/Fm3nu3ZeU4Gm0Mz2x8RzYaKTlA5Txgb2tsuaHMSNCtQpvpKGzYicRJfU2YS78pOoroonN8YFzvXrT7J1VR6qmibQ/0?wx_fmt=png', 2, '持续提供中考学科试卷、各地中考真题、模拟题、思维导图、知识点总结等资料。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxNjY4MzA3MA==', '学而思大语文服务号', 'xesdyw', 'http://mmbiz.qpic.cn/mmbiz_png/wER921RXuz8WNia7lZKxauwv8QCuMPgovheDLIcoo6Ciav83V3qz6Avn2VTibBRLUHPicSP9vvgeTI5DAdBwcoUFzw/0?wx_fmt=png', 2, '学而思大语文，更懂语文更懂你！免费课程、备考提分、政策资讯、资料分享、素养打卡、教育心经、人文素养、家长论坛，尽在学而思大语文~', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxNzc5NzQyNg==', '小猴启蒙图书馆', '', 'http://mmbiz.qpic.cn/mmbiz_png/2cv8lS18LldrRKe8Mswm0sujgFUIFk2G0scs9NicJbY90Gko2z3BzwficRBNlzFOEC2NqXGmWEuVEb4fwwcddnGg/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIxOTk2NjMyNA==', '杭州学而思本地网课', 'ihzxes11', 'http://mmbiz.qpic.cn/mmbiz_png/Mg8wtOCQpQ85U7LnrXeGgxVichuz88ZMP4icKvLaicOAicTP0VWwj2ntwQcW9WDrj4laXfkFibTxJws0fLe9VibY2CRQ/0?wx_fmt=png', 2, '杭州学而思本地网课是杭州学而思推出的一款专注于杭州本地在线直播教育产品，采用授课教师直播+辅导老师个性化辅导的教学模式，结合互联网直播技术和教学数据全程跟踪记录，为孩子提供专业的教学服务，给孩子受益一生的能力。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyMDc2OTkzMA==', '贵阳学而思', 'gyxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/GibiaiaP3giasib55jJsIwPvsibEQTia9SwUpMhLP4ggBX8QyPUTYpqhIMXuBjiaIbb2zQicibiaCqeWLBZaXlQ6mn87yoehA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖 3-18岁年龄的学科教学服务。贵阳学而思培优成立5年来， 已开拓4家校区，现有近百名优秀教师。我们将为您提供听课购课、 福利活动、学霸经验及学习资讯等服务，伴孩子一路成长!', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyMjA0NTkyNQ==', '学而思1对1太原', '', 'http://mmbiz.qpic.cn/mmbiz_png/p5llMBXVjxyuCgvFgR345ibwJGTNbicic2cBdpvMLNcJc4QNVGSsRcZEhzwGXmk68sAXVqnzaNU2vSLwWskFwLDww/0?wx_fmt=png', 2, '学而思1对1太原是好未来旗下高端1对1教学品牌。为您带来太原小初高中学科教育，中高考政策分享、优质学习资料领取和家庭教育指导等内容。在这里，孩子可以找到适合自己的学习习惯，了解到最新的升学政策，让家长找到和孩子相处的好方法。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyMTc5MDY5NA==', '泰安升学指导', '', 'http://mmbiz.qpic.cn/sz_mmbiz_png/JeYdHlMpuCyFtAiamZbVyT9jv5Qj4zvcaA2EtGl6PiaRh048fRkTRzusVAwcXRpWesibtEtesVdd1MFARQZm8bwFQ/0?wx_fmt=png', 1, '泰安专业的教育升学交流平台，提供全面及时的本地幼升小、小升初、中考政策、试题资料、备考攻略、重点学校等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyNTc3ODQ4NA==', '长春学而思', 'ccxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/Xc8jRE82micjz0J5EauKn4GAnZE4k6y0d7dVdB5Md5p60IVaiav3aRr123ZnHic7gHW5BSvhU7gXB5DgicKVr8vBgg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。长春学而思培优成立5年来，已开拓5家校区，现有57名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyNzc4OTc0Nw==', '顺德校园助手', 'jzbfsz', 'http://mmbiz.qpic.cn/mmbiz_png/Tb7DCicMlCjWMtLRpZlmJDRCIMqDKZHTiafmGz6E5GicpCktrWTmJoSEhRJgMWAavr9jCFvCLMbzibRbfriaNkLyJoA/0?wx_fmt=png', 1, '顺德校园助手，专注于佛山顺德区本土的教育信息发布，包含幼升小、小升初、中考、高考等小道消息以及政策分析，帮助你更好的了解佛山顺德的升学资讯，更有牛娃家长给你分享不同的教育经验', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyODg0ODY1Nw==', '学而思网校大课堂', 'xueersiyuxike', 'http://mmbiz.qpic.cn/mmbiz_png/ibiaSu93nmnsBo1iaoku6ejysYb3LibBPRTSfhSkTIAXfgFUy8edEKRs0rEERcLNE6kO7EV5IiaMduWQQViap3dSMNHA/0?wx_fmt=png', 2, '学而思网校，为6-18岁孩子提供小初高全学科课外教学，纽交所上市公司旗下品牌。十余年教学沉淀，“直播+辅导”双师模式，AI技术辅助教学。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyOTM1ODk1Nw==', '烟台学而思', 'ytxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/cBSHSTZEdEELZ95pdqrJFp6MXliatO1qhH60ZicQR1rFUWafTDY1sO82ObX7LeiaA78lmpvOBNMI7dcGbogSF2UYA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。烟台学而思培优成立4年来，已开拓4家校区，现有40余名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIyOTY2NTIzOQ==', '北京学而思中班', 'bjxesxb', 'http://mmbiz.qpic.cn/mmbiz_png/LKibFic23qu48KRhiagz50yFQ8tY1OFmanTOxzwyYWDFhvhZlAUf40ebMNlqcZwM7wyEdgDFrNvtrxZVAxpBFIQTQ/0?wx_fmt=png', 1, '北京学而思中班学习助手（2020年9月升中班）', 1);
INSERT INTO `wx_gzh` VALUES ('MzIzMjc4ODAwNA==', '乌鲁木齐初升高指导', 'wlmqcsgzd', 'http://mmbiz.qpic.cn/mmbiz_png/3cL0Pqxj5LAFtiafPIEp8CDCkFNN78XcPA8VSqBAuPgZtYYaomM8liabdZMCTFZnsbU58nG1254Jg0CIbYNeAWGg/0?wx_fmt=png', 1, '乌鲁木齐初升高指导是本地最专业的初升高教育家长交流平台，提供最全面及时的本地中考政策、试题资料、备考攻略、重点中学、高考真题等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzIzNjcxOTA0MQ==', '连云港升学指导', 'lygsxzd', 'http://mmbiz.qpic.cn/mmbiz_png/uHPrS2vpSheiacGpaPYHPVwVWr59jsASvibWLNp5gZgY7bMONfGVxCqUoC7ibBoLHQdymiaoyJQO36o8eJ4NXQbBIQ/0?wx_fmt=png', 1, '连云港升学指导是连云港最专业的幼儿园至高中年级教育家长交流平台，提供最全面及时的本地幼升小、小升初、中考政策、试题、备考攻略、重点中学、中考资料、高考真题等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('Mzk0NDE2NDU4Mw==', '沈阳中考研究中心', '', 'http://mmbiz.qpic.cn/mmbiz_png/Yqqh4ev4PzcuQ9UIMWKVkicBPcbMACMaKk44VxHQhIh4zIX4rbo9rCuCaT0bo1tjZEOyz7XXSyguxkBHmdyckhg/0?wx_fmt=png', 2, '学而思培优中考研究中心沈阳市官方公众号。致力于为初一至初三的学生提供最全面的升学资讯及服务，为学生的学习保驾护航！', 1);
INSERT INTO `wx_gzh` VALUES ('Mzk0NzE2OTY4NQ==', '沈阳小升初研究中心', '', 'http://mmbiz.qpic.cn/mmbiz_png/yWYwDg3PUEwFcCN1xPOJHaGOBSGLkSwAx40a5qicib4sXyuW8UhddyvjbSNy2qElT1TiaW20ZpoePJibbcLOO2eD2Q/0?wx_fmt=png', 2, '沈阳本地小升初相关信息分享', 1);
INSERT INTO `wx_gzh` VALUES ('Mzk0ODEwOTE5Nw==', '学霸进阶课堂', 'xuebajinjieketang', 'http://mmbiz.qpic.cn/mmbiz_png/GMpib3xhNs8JDvkYoXniaHCYMANTkh8oHuMIguTFvclsa7qmJGDYiblYiblEOosS5wEakQMoVw4ddLlb10TOGrYLVQ/0?wx_fmt=png', 2, '学而思网校，在线学习更有效。 学科知识，资料分享，教育资讯，免费课程，家庭教育，备考提升，尽在学霸进阶课堂', 1);
INSERT INTO `wx_gzh` VALUES ('MzkwNDIzMzMwOQ==', '石家庄幼升小指导', '', 'http://mmbiz.qpic.cn/mmbiz_png/sJZ8lzVICsCKzsktOjxw7x4UNFSFu7RHQvib3wcPkF0UKRvvdnROpFHfGAic0hAtqoLt6p2N1cPVZPAXtxyESL4w/0?wx_fmt=png', 1, '石家庄幼升小指导，旨在为石家庄学生提供全面及时的入学政策、招生简章、入学流程等政策资讯。', 1);
INSERT INTO `wx_gzh` VALUES ('MzkwNzE1NDgyMA==', '轻舟学生圈', '', 'http://mmbiz.qpic.cn/mmbiz_png/eDyDuCwAxNboqSkmRqL4BWbUfTyqiaJwt5ThDkJdiabIB9OvNLZx1UIchJB5Y5yrPsbStG9z2hw0zyAKZX3RM0hg/0?wx_fmt=png', 2, '轻舟大学生是好未来旗下专注于大学生备考的一站式提升平台，目前拥有考满分、考研帮两个分别专注于出国考试培训、考研备考服务的业务品牌。', 1);
INSERT INTO `wx_gzh` VALUES ('MzkwODE5OTQyNw==', '学而思1对1重庆', 'xes1v1_cq', 'http://mmbiz.qpic.cn/mmbiz_png/bRJatUfpYx5blBCHomrsgxlqua7nroKBUxdSRrEMhicthnTKzx8P4h3ibYO0hHX9uCAxzsj2DzH28ZEAvkAP2TpQ/0?wx_fmt=png', 2, '学而思1对1是学而思旗下聚焦中小学1对1辅导的高端品牌。我们为小初高年级提供全学科1对1在线及面授辅导。', 1);
INSERT INTO `wx_gzh` VALUES ('MzkwOTE3MzkxOA==', '小学生免费提分课', 'xueersixiaoxuesheng', 'http://mmbiz.qpic.cn/mmbiz_png/DkjhXfOXEoV3BkgCcAfooDZyWALaUhfGteVVfLUgVAhZSDmib5kHgCibDI3IbictAHiaaJzuSDFRI8NB0n1b9Ho8Rw/0?wx_fmt=png', 2, '学而思旗下，小学生专属免费提分课！', 1);
INSERT INTO `wx_gzh` VALUES ('MzkxMzAzNDExOQ==', '沈阳学而思培优', 'syxespy', 'http://mmbiz.qpic.cn/mmbiz_png/OGPDtEfHxSSZVA6dSvAicurQPSkvoeFibb5xRCOM990aXxEic2TzePaaR8vCmdnibuiatibXicibg6G6fqdibCbDOXia9xEQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，沈阳学而思培优成立8年来，已开拓11家校区。我们将为您提供听课购课、福利活动、学习经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzkxNzE4OTE5OA==', '学而思网校外教1对1', 'XES1D1WJ', 'http://mmbiz.qpic.cn/mmbiz_png/G26QT23AfS7TFT0lUVSzln5qcd3qsF5SKEAPV8xGP0txPqmtDicFxfDLxBeuMcs6WgCRrXMW2A8ueNOCoTFhE9g/0?wx_fmt=png', 2, '外教1对1官方公众号', 1);
INSERT INTO `wx_gzh` VALUES ('MzkyMDE1NDEyMQ==', '初中语数英秘籍', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/mlr73o3TC1kia64ZXtrZj2Nbab83f1PIDENpysPfAuIBP11F9NExDs2QG6krNAicWfDETzM8JgjhibfETyLcZwBDg/0?wx_fmt=png', 2, '初中生必备公众号，每周定期更新语数英相关学习资料！', 1);
INSERT INTO `wx_gzh` VALUES ('MzkyNjIxMjAzMA==', '柳州学而思', 'lzxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/cPib1z6jIjNcViaZtsu6wLTu5VeWVsyBdL3vNZj2NDIQjSKic5sib75vH7CZ7x8Vj9R81PEOBq8z2DE0icCIWjbhiaoQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。柳州学而思培优成立1年来，已开拓2家校区，现有20名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzkyNTE4NjM5Ng==', '家长帮无锡站', 'wuxijzb', 'http://mmbiz.qpic.cn/mmbiz_png/06jTPsSCz7KvBY9l3Slu4N09mMCRDnicBIRRBHCDovILJMO7dwYTUIeF48oQwFUDAKywCyHyib60nUfmWZ33WgYA/0?wx_fmt=png', 1, '家长帮关注本地教育资讯，分享孩子成长所需的教育观点与学习方法。家长的问题家长帮，与家长一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzkzNDE3MDA4NQ==', '沈阳学而思高考研究中心', '', 'http://mmbiz.qpic.cn/sz_mmbiz_png/GqhhqpMmxqqVMfgjRqJY4Xeo45fJpn35FgSwq6icicGDBibBpAh3hqXvpibgCKoFjQ4pC4x4DElOP2YIbEticdlyHPg/0?wx_fmt=png', 2, '学而思培优高考研究中心沈阳市官方公众号。10+年专业经验积累及研究沉淀，整合优质教育资源，聚焦高考全链条服务，为沈阳学子提供需要的高考资讯。', 1);
INSERT INTO `wx_gzh` VALUES ('MzkzNTE3MzcyMg==', '小学生资源站', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/j5hxq4fIen4bxwbyGu3k18ebyXzqd0J69UCboXUtNr50LQR00fNA3nwWKsbdwFH2Vric0fxvFhwXQKTW5CXVuoA/0?wx_fmt=png', 2, '提供1-9年级各类课程资源，免费课程等', 1);
INSERT INTO `wx_gzh` VALUES ('MzkzNzE4ODM2Mw==', '好未来SEG双师课堂', '', 'http://mmbiz.qpic.cn/mmbiz_png/9KDfPPskPNQZ3L0Kp42vUbbhyJicI1mflWM9fh0koPF6HibA1d4QiaGVtbBjQhPia14WrDlQtbvTTgia6P9OkqQZy6w/0?wx_fmt=png', 2, '好未来智慧教育事业部对公双师课堂服务', 1);
INSERT INTO `wx_gzh` VALUES ('MzkzOTE5NDQwMw==', '小学家长请留步', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/xQeSWx9j0f9DSzI3GEh8KsWkAiadhaxnHt1aiafHFIibGiamx0tQ7vtdBibTwiaAKhAibicwSsPTyaNTiamKO7JT00VV88g/0?wx_fmt=png', 2, '小学家长', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0MDYwNTc0Mw==', '贵阳学而思小学升学助手', 'xesxsczs', 'http://mmbiz.qpic.cn/mmbiz_png/muUkIyYVTQkZJdW53hCAvQuxNLRx0ebZHIJnLqLU27JUQm1ibAXuFzLYq2nSrYfRJcVaT6vP0mhIjnsOGMdlsnQ/0?wx_fmt=png', 1, '及时推送贵阳小学升学教育资讯，抢先知晓贵阳学而思最新动态！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0MTc0NTM1Mg==', '贵阳初中助手', 'xesczzs', 'http://mmbiz.qpic.cn/mmbiz_png/sIrXictuKdNABhTFDnPR8wzXoU25zxXXPR6j26DxYvsrgGJoqdNga4CXp9lQLKahicyJkuH6oyghAOUzsvTNbwCw/0?wx_fmt=png', 1, '依托学而思在K12中的能力，结合贵阳本地教育情况，为家长及学生提供一个免费学习、获取信息的平台！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0MzM2ODA1Nw==', '学而思编程', 'tal_enjoycode', 'http://mmbiz.qpic.cn/mmbiz_png/KyT96svXzComnyRIbznibQKXqpMrLibFTUcicjTkIasXMQFEpeNoUTuZia4nuAWyWOeOKh9gWyvZuhyKsvaibr1Q26g/0?wx_fmt=png', 2, '学而思编程是好未来（原学而思）旗下致力于为5-18岁青少年学生提供专业的在线编程教育。当前已发展成为集少儿编程全体系课程、教学服务、社区交流于一体的“教育+互联网”平台。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0NDg4OTIyNg==', '淮安学而思', 'haxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/duAUQ9Dibd0wyLRicicvuMG23XibDAiak9dJ8ZkOgh3O8Z0iaAHZVcia25t6Xp9IpW97qibokLt9q903HtVaUEWRkZhMicw/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖8-16岁年龄的学科教学服务。淮安学而思培优成立2018年来，已开拓3家校区，现有45名优秀教师。我们将为您提供听课购课、福利活动、及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0NTE1NjEwNw==', '小猴英语启蒙课堂', 'xiaohouyingyu123', 'http://mmbiz.qpic.cn/mmbiz_png/nPEiclKAJBL3dugOqgKEu5ksKafKwWx7loKoO5rRLN4k8icHCV9iaaPmk8u92eS4exyicvHU8WeTE9d74oFOSCkDrw/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0NzgxNzA1MA==', '太原初中生', '', 'http://mmbiz.qpic.cn/mmbiz_png/PE5wuUPNdSnoajlO6icczUF922eXGsSXBZBbhrZ5atyUaIIAVIricHNBY7gbq7cvb8EibLlSae0ST9icRDTAYcubzA/0?wx_fmt=png', 1, '太原初中生为您带来太原中学学科教育，中考政策分享、优质学习资料领取和家庭教育指导等内容。在这里，孩子可以找到适合自己的学习习惯，了解到最新的中学升学政策，让家长找到和孩子相处的好方法。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU0ODk4MDEyMg==', '连云港学而思培优', 'lygxueersi', 'http://mmbiz.qpic.cn/sz_mmbiz_png/L1rlMmXqIEsFq3UDRfDRHzPa5zfaUgQNVGZPtUqLzicbewRIMYicomia2B1Tos1MqHCKMhVKFwAmDibobxXExo53mQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。连云港学而思培优成立2年来，已开拓2家校区，现有20名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1MTg5MjM4NQ==', '小初阅读训练营', NULL, 'http://mmbiz.qpic.cn/mmbiz_png/rPOLN9WtBmYdpYcCLibKiafDVL4ic5uwrL5skibzdlWFsI4k8cOVFJaGVQnOaTItpiaJaZgf7N7GJIcFDjQ6dYandjA/0?wx_fmt=png', 2, '专为中小学生（4~18岁）提供中小学必读经典书籍，让孩子接受美的熏陶，获取更多阅读技巧，提升文学素养。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1MTM0NDAzMg==', '佛山中考君', 'fszk-zkj', 'http://mmbiz.qpic.cn/mmbiz_png/kiaichU4RxQ62mgFHuc6oYt4w2Rhpt0rfXEH1Bwzvyr9T5U8SNuEJSQFT1vXnrP4JZkicykibc5QaWJp3Wyz9AzyBg/0?wx_fmt=png', 1, '佛山中考君，为您提供全面的本地中考升学资讯，包括高中学校介绍、中考政策解读、中考备考方法、中考成绩分数等。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1NDU2MzgzNQ==', '燕郊幼小衔接', 'yjyouxiaoxianjie', 'http://mmbiz.qpic.cn/mmbiz_png/33mjSWOYZNyI9WOjxqiaXlZaFgmA8N9sqIJhicNJMzMjpCDlQJfOibMZC9yQopD1BmaOyTK5eWiaadh1dk1KwztdjQ/0?wx_fmt=png', 2, '关注燕郊幼升小，共享优质教育资源，学习资料；提供最全面、最及时的本地教育咨询、升学指导，为幼儿园至小学家长提供教育经验交流平台，传播强大的正能量。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1NTgwMTQ2Mw==', '儿童中英文阅读', 'parrotlovesreading', 'http://mmbiz.qpic.cn/mmbiz_png/Wo614lLpSLibn70n3icIUDic2OcA3FGS1tDbPqpuFzEFVHUZeotIaqibYPFQibaicnwzl4tOMXJozUpnhWq9YHqBkibicQ/0?wx_fmt=png', 2, '3-16岁分级阅读产品', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1ODAxMTA2MQ==', '福州中招助手', 'fzzzzs01', 'http://mmbiz.qpic.cn/mmbiz_png/JFzcpjWnvGXiblhQEvqXYIuaLJSPq36ib15OhiauZM9PeicyCNT2p9VoKYl2GpdbxTb0Ibmu2ppIu9eGBeqKAmweCg/0?wx_fmt=png', 1, '提供福州中考资讯、应试资料、学习方法、中考讲座等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU1OTA3NjczNg==', '镇江小学升学', 'zjxxsx', 'http://mmbiz.qpic.cn/mmbiz_png/NKZbtqgqgYaRwr32xHucn8fic7PefNcebe7EPxf2zECumib5SglJdLSbaPu3fRNibHGG9qdBULSPDFBLKV2Qk2YRg/0?wx_fmt=png', 1, '镇江专业的教育升学交流平台，提供全面，及时的本地小学升学政策，试题资料，备考攻略，重点中学等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2MTY4Nzg0MQ==', '乌鲁木齐学而思', 'wlmqxes', 'http://mmbiz.qpic.cn/mmbiz_png/9dEdqpDkZIGaqj9GWHDXmU6PZedmsGHpwLfhz1vBibe6RoCcRstXRqS4wj4TS0mcGQOhHfMrcLmtx1hc6cibuWyg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。乌鲁木齐学而思培优成立3年来已开拓1家校区，现有21位优秀教师。我们将为您提供听课购课福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2NDA2NzY2Mw==', '常州学而思', '', 'http://mmbiz.qpic.cn/mmbiz_png/XhY5wicIx8iabO3sDicplQ2HgfsSXIZbgrYGxUeaRR6IKeicdkV7bVMTjG23ianjIygUA0PTJas6Bj6jBF2UVNBZbeg/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。入驻常州4年来已开拓8个校区，众多老师毕业于985、211、双一流高校。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2NjA2NjMxNQ==', '好未来研究院', 'weilaijiaoyudahui', 'http://mmbiz.qpic.cn/mmbiz_png/3fHWLfvAhvPD32Ox6FtC61Zv67ia3MkEeuB6KfFRkglibdrl65RR50j3ZiclRMMpVWNytoFdlo2KGdNMQib2jrsNUw/0?wx_fmt=png', 1, '好未来教育研究院官微', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2NjAxNzcxNw==', '小猴启蒙少儿学堂', '', 'http://mmbiz.qpic.cn/mmbiz_png/7nib6SEU7GEVbCPNDI24ibCXt88UPH9toHcXNxCsJwhxHFMLy44PAgfatFlpOVh11F5KNARERhdyhk1ia4NFcvUbg/0?wx_fmt=png', 2, '学而思出品，专为2-6岁儿童开发，符合儿童认知发展规律的数学、英语、语文启蒙课程。17年教学经验沉淀，沉浸式动画+AI智能互动，让孩子开心启蒙、主动学习。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2NjkyMDgyNQ==', '郑州学而思本地网课', 'zzxueersibendiwangke', 'http://mmbiz.qpic.cn/mmbiz_png/ret8Pj18vFwj0rwEqgIBWHePmuBLzTHEeicr3hU29KN7fr1k0iaIFVPckYHuv1G93fyNMV30xnXSYHQb7HYOic2wQ/0?wx_fmt=png', 2, '在家就能上的学而思，是学而思培优推出的一款K12在线直播教育产品，采用授课教师直播+辅导老师个性化辅导的教学模式，结合互联网直播技术和教学数据全程跟踪记录，为孩子提供专业的教学服务，给孩子受益一生的能力。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2Nzg5MjE2MQ==', '厦门学前指导', 'xiamenxes0123', 'http://mmbiz.qpic.cn/mmbiz_png/dy18hgNIUuCqhyYVffykciamHob9H2u9rayFpI61uklqz48ibBcELParKAkGwaGARhD1F3BNmy0fgTooQhI3eFcw/0?wx_fmt=png', 1, '幼升小相关政策信息分享，幼升小必备知识分享，幼升小相关问题交流等', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2NzY2OTE5OQ==', '枣庄升学', 'zaozhuangshengxue', 'http://mmbiz.qpic.cn/mmbiz_png/NT6EG9d9l5fVGPRajic3rcNKWYdFUjT2yLOYnciciaCHotgCKxV7PDZqj6zroVGQDHrXtC939Lrf8opBcBXjicibcKQ/0?wx_fmt=png', 1, '枣庄升学是枣庄地区专业的幼儿园至高中年级教育家长交流平台，提供全面及时的本地小学升学、初中升学、中考政策、试题、备考攻略、重点中学、中考资料、高考真题等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2ODMyOTExNg==', '镇江学而思招聘', 'zjxeszhaopin', 'http://mmbiz.qpic.cn/mmbiz_png/YL9XkRMlt2MyypGJ8xxGkOESGj71tgXcLia4GfbOH7AU71XHQfk5n1mpOxb8KV2ibTCgnibEJADS8fhga7faZzRAg/0?wx_fmt=png', 1, '我们将定期发布学而思招聘的信息，年轻的镇江学而思正在等待年轻的你们！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2OTc4NDQ5Mg==', '廊坊学而思培优', 'lfxespy', 'http://mmbiz.qpic.cn/mmbiz_png/h29kytJp5NodydPoNeNuW7RB6hrrzXsLycm16Xj0YqSibBePYPK2RWjpXhag64nNbLwjePBFzZVWD0gamRTDNkQ/0?wx_fmt=png', 2, '学而思培优是全国知名中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。廊坊学而思培优成立2年来，现已有天洋城校区和弘阳广场校区两个教学点。我们将为您提供听课购课、福利活动、学霸经验及学习咨询等服务，伴孩子一路成长。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU2OTEwNjE4MQ==', '考满分托福', 'kmf-TOEFL-T50', 'http://mmbiz.qpic.cn/mmbiz_png/Gm6ZbdpnsIk36csRhamYYdGr2aXibTWv7baqqJpPNIofgGAT6aiaeB88I7XsO17zY7V6tdWm8OW0DSkwlEUD8U3g/0?wx_fmt=png', 1, '在线学托福，也能考满分。ETS战略合作伙伴KMF考满分旗下托福账号，全网唯一自带锦鲤属性的托福账号。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3MzIzMDY4MQ==', '学而思网校1对1服务号', 'dahailearn', 'http://mmbiz.qpic.cn/mmbiz_png/cLic9zRmy5LlreyODHZZWKOoa8UhYAEVEsUzBUE6lHgQu7bCBMYQU2I6IXMtib8rxmVEZtrEV7Sc6S1ibsbpSrOpw/0?wx_fmt=png', 2, '学而思网校1对1是好未来旗下在线一对一教育品牌，基于“激发学习兴趣，培养学习习惯，构建知识体系”的教育理念，依托先进的人工智能技术、优质的教师资源和丰富的教研积累，为学员提供高品质1对1个性化辅导。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3NDQ2OTIyNg==', '枣庄学而思', 'zzxueersipy', 'http://mmbiz.qpic.cn/mmbiz_png/Sfr3YTezGoFpXGd7LiaC5J4qKAD2ZUDtupBScc179BHwYuetumGhyGHGYCCEQicIT4UBmSKZoMmCavTq0CYXjDPQ/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。枣庄学而思培优成立1年来，共有7名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3NjU4OTg1MQ==', '小猴少儿乐园', 'kaixinbaba02', 'http://mmbiz.qpic.cn/mmbiz_png/vD7IRwAMUQMq6jH851Ic2HbO8McLTMc8icibss58lhTTy6DIf42wp7434JJWfZeqViaicaSDTxQ7ibs4pYsvCichFelQ/0?wx_fmt=png', 2, '小猴启蒙由好未来集团出品，旨在为儿童打造多元化启蒙场景。 基于18年教育沉淀，小猴启蒙联合国内外儿童启蒙专家，为孩子提供老师互动、趣味动画、游戏化体验和陪伴式辅导等启蒙方式，启发孩子成长的更多可能。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3NzAxMDkzOA==', '福州小升初助手', 'fzxsczs', 'http://mmbiz.qpic.cn/mmbiz_png/xuVfqyYJLzYjj59yyk4yCyjxxV44EUpz4VwqLjLTiaxIVPrkrq20icGgiap7uNJcypBfWKxQv1Lu1bpMRB8TiaAsZw/0?wx_fmt=png', 1, '本公众号定期更新福州小学升学备考、政策解读、实时热点等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3OTgxNzIxNQ==', '燕郊升学指导', '', 'http://mmbiz.qpic.cn/mmbiz_png/y20WKDqYjA0GZ2bHiakhdAoVbBbJoJ3KavU4elZ72iaXpTGTGdX88ePe3xdTTJE8JwdPrHibmQWpPL5ziaHicsPyzbA/0?wx_fmt=png', 1, '燕郊专业的教育升学交流平台，提供全面及时的本地幼升小、小升初、中考政策、试题资料、备考攻略、重点学校等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU3OTM1NTAzMA==', '申城初升高', 'shanghaicsg', 'http://mmbiz.qpic.cn/mmbiz_png/PZxQFQgv2T2FJBBmh9pbDrNtYtLPBCq7Uia2M05ssEL9AN0MbqEyice2IiaxhDmWBicbSqq6eAHcRxhDJxficr9Ly8w/0?wx_fmt=png', 1, '一个有温度的知识大咖，为您汇集申城中高考的专业资讯！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU4MDQzNjk4Mw==', '学而思VIPX', 'XRS-VIPX', 'http://mmbiz.qpic.cn/mmbiz_png/xW5TgZfJlPWee0UdPqs7IjIHxopJNlqVKxl3eWibuHEPE4jia4jdK5MMXs0icmGqicQBovFnYr27kCAibDFhJgXn47A/0?wx_fmt=png', 2, '学而思旗下在线外教品牌', 1);
INSERT INTO `wx_gzh` VALUES ('MzU4Mjc5MjEyMg==', '学前素养启蒙', 'weilaiertongxt', 'http://mmbiz.qpic.cn/mmbiz_png/g6Wqu65BaxgDG0kA1o7ia6mU7kziaCCxlbzHZrhF0ZKcUBlI0TcZjSSpoU0XZjwgj16STGbkj3FvKSUlQ3d5a8bQ/0?wx_fmt=png', 2, '整合各类精品绘本读物、好课等优质内容资源，为3~8岁中国孩子提供优质的学前教育启蒙！', 1);
INSERT INTO `wx_gzh` VALUES ('MzU4NDAxNzU2Ng==', '漳州小升初', '', 'http://mmbiz.qpic.cn/mmbiz_png/2ymWXibhdtRWt87zvzvs1aSKicvVv0ME19NG8Eoiab9tB3RTCct5jaW57mgdVssVTjFBqwLdsOANQwWUlf55MkRJw/0?wx_fmt=png', 1, '漳州小升初是漳州最专业的小学升学教育家长交流平台，提供最全面及时的本地小升初、中考政策、试题、备考攻略、重点中学、中考资料等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU4NDU4OTkzOA==', '小猴启蒙少儿乐园', '', 'http://mmbiz.qpic.cn/mmbiz_png/8ibq5PCqQAXCjpO7s758s1DurNlZ5AFryQ7rLhebxkv3KxlZ0eaSSsALCGnm041suHzYcfBxanMfIa4CJsdQejw/0?wx_fmt=png', 2, '学而思出品，专为2-6岁儿童开发，符合儿童认知发展规律的数学、英语、语文启蒙课程。17年教学经验沉淀，沉浸式动画+AI智能互动，让孩子开心启蒙、主动学习。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU4ODAyNzgwOQ==', '好未来智慧教育', '', 'http://mmbiz.qpic.cn/mmbiz_png/TYIIHw3t4PtgnOOibnFib8U9rfc4veiaS41yuf4LDfWarOSiaFW2l19QKpAnKqueQLOG73RiblDHq8X7mZ7Viafk86iag/0?wx_fmt=png', 1, '好未来智慧教育事业部整合好未来优质的教学资源、教学教研服务及丰富的教学应用，为区域和学校打造一整套智慧教育和未来学校建设的解决方案。真正做到教育赋能，助力实现公平而有质量的教育。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU5NDgwNzQ3MQ==', '泰安学而思', '', 'http://mmbiz.qpic.cn/mmbiz_png/mAYia1MSiciagTmAw14V0eh5ib27rFic4a9ve4XMtX9VPOkBJib6a7PDc7u7OLxqZrcl9cnVhHh1gibDUnT0oNObetzkA/0?wx_fmt=png', 2, '学而思泰安分校，及时发布学而思泰安分校最新通知，并为广大学生和家长提供全面的教育信息服务和咨询服务，抢先了解泰安中小学教育咨询、升学信息、学习方法。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU5OTA3NzMzOQ==', '中山小学升学', 'zsxxsx', 'http://mmbiz.qpic.cn/mmbiz_png/QUpk1T0lyaoibyTSphEIpaKPZSIvSobN6nuxzFxNKL2V9ibZTWwqex2pFPnVCVbEibGwhIoUN1C4em05te380MNYQ/0?wx_fmt=png', 1, '中山专业的教育升学交流平台，提供全面、及时的小学升学资讯，包括小升初政策分析、试题资料、备考攻略、重点中学等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzU5OTExMDcyOQ==', '泉州升学指导', 'qzxxshx', 'http://mmbiz.qpic.cn/mmbiz_png/e9DJZhPfS8d9ewibU6HpttJwcrDoqECYsfgtVUzHrfCe1yABwAlpI69diar7OldSKtoib0ySHNvepY2Zwq5wPFt6g/0?wx_fmt=png', 1, '泉州升学指导，伴你升学，伴你成长，我们旨在为泉州家长提供权威、及时、准确的幼升小、小升初及中考升学资讯和服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUwOTQ0OTg0NA==', '镇江学而思培优', 'ZJ-XUEERSI', 'http://mmbiz.qpic.cn/mmbiz_png/Y8nkGlVibyK48BP6KVicsQ7vWgXjuicQSdL2IAHB651JlMHU5ncFbOh4lRDcSXmhNWbYBNbLGnynS2ySeUzf8FribA/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖6-18岁年龄的学科教学服务。镇江学而思培优自2017年成立以来，已开拓6家校区，现有100余名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxMDMxMTY1OA==', '学而思大语文', 'xesdayuwen', 'http://mmbiz.qpic.cn/mmbiz_png/d6Q8wckbQ8jjn2qdYMeBLcbdGHmedPXDWswmCrcfbb1PJG4SKoz7UC8we6d0DPL0aF1qEsPn7t0cf08MWyxZDA/0?wx_fmt=png', 1, '更懂语文更懂你！备考提分、政策资讯、资料分享、教育心经、人文素养、家长论坛，学而思大语文统统有！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxMTAwNjY2OA==', '济宁升学指导', '', 'http://mmbiz.qpic.cn/mmbiz_png/57j7dUn12b108TUsYwJ93PSsIuCTHGNjLmBfYrxrx91o5vgbN7oC3Ap7gY8Z9hFzgF7Wb9OpzcUCNFzCnTLJxg/0?wx_fmt=png', 1, '济宁升学指导是济宁最专业的幼儿园至高中年级教育家长交流平台，提供最全面及时的本地幼升小、小升初、中考政策、试题、备考攻略、重点中学、中考资料、高考真题等信息资源。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxMTMyMDA5NQ==', '烟台初升高研究中心', '', 'http://mmbiz.qpic.cn/sz_mmbiz_png/ZNwQgHrQIR6zd0JkevIpKZEIfT7LSDeEFXEWibWuWbfQWTMSp5oDAodmSokMOmLbrC2micicqs2l8U1vnPYcDVEOQ/0?wx_fmt=png', 1, '烟台学而思中考研究院：陪伴中考一站式服务，最新中考资讯，学习资料，考试热点快速了解，精准把握中考方向', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxMTY4MzkyOA==', '学而思图书', 'xueersikids', 'http://mmbiz.qpic.cn/mmbiz_png/pIdROGM6Rn199mttlmHwAuaujfzc45yByDTYTaRcDibjgRThQRibZb9uVY2QlA3AjZiciaoRdQKRXAuUMzMlbAbCfQ/0?wx_fmt=png', 2, '致力于儿童素质教育培养训练，开发幼儿启蒙认知、培养思维能力的亲子教育平台。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxMzUwOTQ5Nw==', '扬州学而思', 'yzxueersi', 'http://mmbiz.qpic.cn/mmbiz_png/9rIAu0Zvv4gIclFV5kz1qyCKt41kuibt8GJ5aWMUdeMbibvrqjQRgwdmkEjdorMMtF9juoBoTRLQmb3ibuOadt2fw/0?wx_fmt=png', 2, '学而思培优是全国知名的中小学综合性全科教育品牌，提供覆盖3-18岁年龄的学科教学服务。扬州学而思培优成立4年来，已开拓4家校区，现有50余名优秀教师。我们将为您提供听课购课、福利活动、学霸经验及学习资讯等服务，伴孩子一路成长！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxNjA4NTI4Ng==', '镇江幼升小', 'zjysx1', 'http://mmbiz.qpic.cn/mmbiz_png/MwlnzmHdUN2CmVtW1YhUlJVmP4wonlLaC92TNxwvEVFeYLncR2gHBt4sdbycibkz6EmSHymUImWFib6J2yqYelPg/0?wx_fmt=png', 1, '致力于镇江幼升小政策解读，幼升小基本能力衔接。让家长更懂教育！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxNTgxNzEwNQ==', '青岛幼升小资讯', 'ysxzxqingdao', 'http://mmbiz.qpic.cn/mmbiz_png/DbI2VC5htniccByDJAYia76TpiaVJSaNZdfKRlIhFuIlGRtVNQrjul7UNXFB46nceuJRtiazEvYYmU0hpib4KrutYAg/0?wx_fmt=png', 1, '专注青岛本地幼升小教育、升学资讯、经验交流、学习资料分享，愿与您一起培养面向未来的孩子。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxNzA4NjEyMA==', '中山幼升小', 'ZSYSXHO', 'http://mmbiz.qpic.cn/mmbiz_png/VvvOLsXMCiccnYNhYjPz3icucrss93NDlHkhud7m349jFrPvcdamQxIveNabpmicwxUqaBfXI7acDXOEHVAbxIdPQ/0?wx_fmt=png', 1, '精选最实用的幼升小资讯，热门的幼升小政策、面谈讲座活动、政策解读，中山幼升小家长首选关注。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxNzI5ODQ4Mg==', '爸妈成长服务站', 'xes_public_lecture', 'http://mmbiz.qpic.cn/mmbiz_png/O9R6n9r1CuhzY1mLAjXtEjzncX48x77KxAGPyEialZbeeDAvB3aN139UT6pVbOicJibZRoicE65RVfsILcxL8htXRA/0?wx_fmt=png', 2, '爸妈成长学院会定期推出各种讲座和微课。针对爸妈在孩子教育过程中遇到的各种问题进行专业解答；也会邀请有实力的老师对各个学科的重难点进行讲解，让爸妈更懂教育，更好得守护孩子的成长。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUxOTE4OTU4Ng==', '上海学而思本地网课', 'shxeslive', 'http://mmbiz.qpic.cn/mmbiz_png/j7ibp7fp6kT8udDBHOHy5QWNGmEaGzib9mMNp5eeJmmPoNIMtI3bHW9Adic8GiafNUBWHmAbnibCpibsAHEOcTPQdw7w/0?wx_fmt=png', 2, '在上海，上网课，就上学而思本地网课！本地课程、本地老师、本地同学、本地服务，深耕上海本地课程，打造真正属于上海学生的本地网课！上海学而思在线小班课，在家就能上的学而思面授课，效果更好、互动更多、关注更多、效率更高。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUyMzA4NTk0NQ==', '扬州幼小衔接', 'YZYSX2017', 'http://mmbiz.qpic.cn/mmbiz_png/SIFHx0IeZg6HicdPxaB1BeLzLhQibAeoGwfLoeibXUeAicTzoN1sgkqaeFJVpKGtDLoX52pgpBXqk5bzI4Pvic62vUQ/0?wx_fmt=png', 1, '扬州专业的幼儿教育升学交流平台，提供全面、准确、及时的本地幼升小升学政策、试题资料、备考攻略及重点小学的信息。还有各种针对幼升小的专项练习，等你关注哦。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUyNTAwNDg5MQ==', '中山初升高指导', 'jzb-zs', 'http://mmbiz.qpic.cn/mmbiz_png/INibvktY4NibNttdiby0mDiagDdtRvNmicZIrJN4Q9LVORoAsviccJE4yqiaOMsujFYsTwBJLMfENBG3LTtBQ4Oc0zm4w/0?wx_fmt=png', 1, '【中山初升高指导】为中山初中生家长提供交流服务平台，同时为大家提供中山中考政策解读、热点跟进、学校介绍、初中学习方法以及试题资料分享等教育相关服务。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUyNzA1MjE4OA==', '大语文资料站', 'xeszxyw', 'http://mmbiz.qpic.cn/mmbiz_png/nQKsia2LMPdx4A9P3bTqib5JQuH0vHS94SUBSLWKPqOqicMUGZtObv0oJuqhygCEGdlKiawNcvugk7VAzPAnTMVEMw/0?wx_fmt=png', 2, '学而思大语文，更懂语文更懂你！免费课程、备考提分、政策资讯、资料分享、素养打卡、教育心经、人文素养、家长论坛，尽在学而思大语文！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUyOTAxNjk1Mg==', '长春陪你幼升小', 'ccyxzn', 'http://mmbiz.qpic.cn/mmbiz_png/sTkOQUI6v00mcRiaJwp3Waibz9b1A5JTkdlNvZUGKkKUBqETCjXSWsRNBes1fwtCkbJWlWnGicJDGcibAEp0Gr5FuA/0?wx_fmt=png', 1, '长春幼升小家长的聚集地，致力于提供升学资讯，幼升小政策，幼升小基本能力习惯衔接、育儿等信息，帮助孩子入读理想学校！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzMDE3MTM3Nw==', '北京学而思高中', 'gaoyixuezi', 'http://mmbiz.qpic.cn/mmbiz_png/nxw54dFOvnw7IG7SBLcYw45sOtnvmCn4pfKRspxp989A9AKoB8XrxGO9wOSAA1zygkUJf4Y18kBp6nUDSuwEqA/0?wx_fmt=png', 2, '专注高中教育资讯，囊括学科知识方法！提供高考一站式服务：高招报考信息分析、强基计划、志愿填报、各科试题资料在线查阅！', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzMDY3OTYxNA==', '河北高考研究中心', 'SJZgaokao', 'http://mmbiz.qpic.cn/mmbiz_png/cupWuf5AT0umBtyZqwxa9Og0LurwzScwrtZuN6YtibVmWJgOSk6NJ0kSxzUBy9ibh0Ah94pNy8yopEAHfCntfhBw/0?wx_fmt=png', 1, '河北高考研究中心为石家庄学而思官方公众号。10+年专业经验积累及研究沉淀，整合优质教育资源，聚焦高考全链条服务，为石家庄学子提供需要的高考资讯。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzMTg1NjU4MA==', '成都学而思一二年级', 'cdxes12', 'http://mmbiz.qpic.cn/mmbiz_png/b8anhFAtbWrRBIPnaMEqdVjKgZEczO1WkKN6loibQnj90o2334hHPddCtibbIY0XmLCHmKCoYAgOvXrzJToRDn1Q/0?wx_fmt=png', 1, '即时收取学而思最新动态，知晓学而思公开课、公益讲座等信息。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzMTY4MTk0NA==', '海口初升高', NULL, NULL, 1, '........', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzNTExMjk4NQ==', '初三资讯通', '', 'http://mmbiz.qpic.cn/mmbiz_png/Pb9KkqjqzbDkkgpI0JqsaaQuPUgACARib6NQdHsf6DxROhasFsDQwBnhoMFqpeYVrZwcB2HJnrBduQiazIrcL6pw/0?wx_fmt=png', 2, '提供各地中考政策资讯、中考经验分享、中考学科讲座等服务', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzODEyMjY2Mw==', '学而思国际', 'XESGJ-HIWORLD', 'http://mmbiz.qpic.cn/mmbiz_png/Ull1FAddcuicPgQ2wCFzYf2IWIbAZf7HjLGkibV1tEVbL2icH87CZiadnJUBWaAeRHBJWUVfPZnKGogL5J1x2aLzoQ/0?wx_fmt=png', 2, '学而思国际官方公众号，服务留学家长。帮助家长了解海外留学相关信息、出国留学及国际班择校政策分享，学而思国际留学经验交流官方平台。', 1);
INSERT INTO `wx_gzh` VALUES ('MzUzOTI3NDkxMw==', '学而思网校1对1', 'xueersiwangxiao1v1', 'http://mmbiz.qpic.cn/mmbiz_png/dhuOgLiaSpib1LhcEBWPltHiat46j87QibrJQWbibz6ictMib4dNIlgoOGrxRfGWmLsPCqsTlYUicALp95jSm7k1riagEvA/0?wx_fmt=png', 1, '学而思兄弟品牌，专注小初高中在线1对1辅导.', 1);
COMMIT;

-- ----------------------------
-- Table structure for wx_gzh_article
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh_article`;
CREATE TABLE `wx_gzh_article` (
  `aid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fake_id` varchar(30) DEFAULT NULL,
  `album_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `appmsgid` bigint DEFAULT NULL,
  `checking` int DEFAULT NULL,
  `copyright_type` int DEFAULT NULL,
  `cover` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_time` bigint DEFAULT NULL,
  `digest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `has_red_packet_cover` int DEFAULT NULL,
  `is_pay_subscribe` int DEFAULT NULL,
  `item_show_type` int DEFAULT NULL,
  `itemidx` int DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `media_duration` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `mediaapi_publish_status` int DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `update_time` bigint DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh_article
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wx_gzh_article_content
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh_article_content`;
CREATE TABLE `wx_gzh_article_content` (
  `aid` varchar(20) NOT NULL,
  `content` text,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh_article_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wx_gzh_article_ext
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh_article_ext`;
CREATE TABLE `wx_gzh_article_ext` (
  `aid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `read_num` int DEFAULT NULL COMMENT '阅读',
  `old_like_num` int DEFAULT NULL COMMENT '点赞',
  `like_num` int DEFAULT NULL COMMENT '在看',
  `real_read_num` int DEFAULT NULL,
  `friend_like_num` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh_article_ext
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wx_gzh_article_image
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh_article_image`;
CREATE TABLE `wx_gzh_article_image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aid` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `origin_image_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh_article_image
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wx_gzh_article_video
-- ----------------------------
DROP TABLE IF EXISTS `wx_gzh_article_video`;
CREATE TABLE `wx_gzh_article_video` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `aid` varchar(30) DEFAULT NULL,
  `origin_video_link` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wx_gzh_article_video
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
