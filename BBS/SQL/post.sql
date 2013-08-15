CREATE DATABASE IF NOT EXISTS bbs default charset utf8 COLLATE utf8_general_ci;
use bbs;
DROP TABLE IF EXISTS post;
create table post(
postId int primary key auto_increment,
author varchar(20) not null,
title varchar(235) not null,
content text not null,
pdate datetime not null,
viewCount int not null
);
insert into post value (null, 'gagayu', '你好','再见', now(), 1);