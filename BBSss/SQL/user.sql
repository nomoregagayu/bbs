use bbs;
drop table if exists reply;
drop table if exists post;
DROP TABLE IF EXISTS user;
create table user(
 id int primary key auto_increment,
 #一个字母/一个文字一个varchar
 name varchar(10) not null,
 password varchar(12) not null,
 rtime datetime not null,
 sign text,
 credit int  Default 1,
 posted int Default  0,
 portrait char(255)
);
insert  into user value(null, "gagayu","gagayu", now(), "楼主傻逼",1,0, null);
