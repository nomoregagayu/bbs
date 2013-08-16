CREATE DATABASE IF NOT EXISTS bbs default charset utf8 COLLATE utf8_general_ci;
use bbs;
drop table if exists reply;
DROP TABLE IF EXISTS post;
create table post(
id int primary key auto_increment,
author varchar(20) not null,
title varchar(235) not null,
content text not null,
pdate datetime not null,
viewCount int not null
);
insert into post value (null, 'gagayu', '1你好','再见', now(), 1);
insert into post value (null, 'gagayu', '2你好','再见', now(), 1);
insert into post value (null, 'gagayu', '3你好','再见', now(), 1);
insert into post value (null, 'gagayu', '4你好','再见', now(), 1);
insert into post value (null, 'gagayu', '5你好','再见', now(), 1);
insert into post value (null, 'gagayu', '6你好','再见', now(), 1);
insert into post value (null, 'gagayu', '7你好','再见', now(), 1);
insert into post value (null, 'gagayu', '8你好','再见', now(), 1);
insert into post value (null, 'gagayu', '9你好','再见', now(), 1);
insert into post value (null, 'gagayu', '10你好','再见', now(), 1);
insert into post value (null, 'gagayu', '11你好','再见', now(), 1);
insert into post value (null, 'gagayu', '12你好','再见', now(), 1);
insert into post value (null, 'gagayu', '13你好','再见', now(), 1);
insert into post value (null, 'gagayu', '14你好','再见', now(), 1);
insert into post value (null, 'gagayu', '15你好','再见', now(), 1);
insert into post value (null, 'gagayu', '16你好','再见', now(), 1);
insert into post value (null, 'gagayu', '17你好','再见', now(), 1);
insert into post value (null, 'gagayu', '18你好','再见', now(), 1);
insert into post value (null, 'gagayu', '19你好','再见', now(), 1);
insert into post value (null, 'gagayu', '20你好','再见', now(), 1);
insert into post value (null, 'gagayu', '21你好','再见', now(), 1);
insert into post value (null, 'gagayu', '22你好','再见', now(), 1);
insert into post value (null, 'gagayu', '23你好','再见', now(), 1);
insert into post value (null, 'gagayu', '24你好','再见', now(), 1);
insert into post value (null, 'gagayu', '25你好','再见', now(), 1);
insert into post value (null, 'gagayu', '26你好','再见', now(), 1);
insert into post value (null, 'gagayu', '27你好','再见', now(), 1);
insert into post value (null, 'gagayu', '28你好','再见', now(), 1);
insert into post value (null, 'gagayu', '29你好','再见', now(), 1);
insert into post value (null, 'gagayu', '30你好','再见', now(), 1);
insert into post value (null, 'gagayu', '31你好','再见', now(), 1);
insert into post value (null, 'gagayu', '32你好','再见', now(), 1);
insert into post value (null, 'gagayu', '33你好','再见', now(), 1);
insert into post value (null, 'gagayu', '34你好','再见', now(), 1);
insert into post value (null, 'gagayu', '35你好','再见', now(), 1);
insert into post value (null, 'gagayu', '36你好','再见', now(), 1);
insert into post value (null, 'gagayu', '37你好','再见', now(), 1);
