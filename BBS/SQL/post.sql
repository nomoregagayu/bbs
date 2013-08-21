CREATE DATABASE IF NOT EXISTS bbs default charset utf8 COLLATE utf8_general_ci;
use bbs;
drop table if exists reply;
DROP TABLE IF EXISTS post;
create table post(
id int primary key auto_increment,
userId int ,
title varchar(235) not null,
content text not null,
pdate datetime not null,
viewCount int not null,
foreign key(userId) references user(id)
);
insert into post value (null, 1, '1你好','再见', now(), 1);
insert into post value (null, 1, '2你好','再见', now(), 1);
insert into post value (null, 1, '3你好','再见', now(), 1);
insert into post value (null,1, '4你好','再见', now(), 1);
insert into post value (null,1, '5你好','再见', now(), 1);
insert into post value (null,1, '6你好','再见', now(), 1);
insert into post value (null,1, '7你好','再见', now(), 1);
insert into post value (null,1, '8你好','再见', now(), 1);
insert into post value (null,1, '9你好','再见', now(), 1);
insert into post value (null,1, '10你好','再见', now(), 1);
insert into post value (null,1, '11你好','再见', now(), 1);
insert into post value (null,1, '12你好','再见', now(), 1);
insert into post value (null,1, '13你好','再见', now(), 1);
insert into post value (null,1, '14你好','再见', now(), 1);
insert into post value (null,1, '15你好','再见', now(), 1);
insert into post value (null,1, '16你好','再见', now(), 1);
insert into post value (null,1, '17你好','再见', now(), 1);
insert into post value (null,1, '18你好','再见', now(), 1);
insert into post value (null,1, '19你好','再见', now(), 1);
insert into post value (null,1, '20你好','再见', now(), 1);
insert into post value (null,1, '21你好','再见', now(), 1);
insert into post value (null,1, '22你好','再见', now(), 1);
insert into post value (null,1, '23你好','再见', now(), 1);
insert into post value (null,1, '24你好','再见', now(), 1);
insert into post value (null,1, '25你好','再见', now(), 1);
insert into post value (null,1, '26你好','再见', now(), 1);
insert into post value (null,1, '27你好','再见', now(), 1);
insert into post value (null,1, '28你好','再见', now(), 1);
insert into post value (null,1, '29你好','再见', now(), 1);
insert into post value (null,1, '30你好','再见', now(), 1);
insert into post value (null,1, '31你好','再见', now(), 1);
insert into post value (null,1, '32你好','再见', now(), 1);
insert into post value (null,1, '33你好','再见', now(), 1);
insert into post value (null,1, '34你好','再见', now(), 1);
insert into post value (null,1, '35你好','再见', now(), 1);
insert into post value (null,1, '36你好','再见', now(), 1);
insert into post value (null,1, '37你好','再见', now(), 1);
insert into post value (null,1, '38你好','再见', now(), 1);
insert into post value (null,1, '39你好','再见', now(), 1);
insert into post value (null,1, '40你好','再见', now(), 1);
insert into post value (null,1, '41你好','再见', now(), 1);
insert into post value (null,1, '42你好','再见', now(), 1);
insert into post value (null,1, '43你好','再见', now(), 1);
insert into post value (null,1, '44你好','再见', now(), 1);
insert into post value (null,1, '45你好','再见', now(), 1);
insert into post value (null,1, '46你好','再见', now(), 1);
insert into post value (null,1, '47你好','再见', now(), 1);
insert into post value (null,1, '48你好','再见', now(), 1);
insert into post value (null,1, '49你好','再见', now(), 1);
insert into post value (null,1, '50你好','再见', now(), 1);
insert into post value (null,1, '51你好','再见', now(), 1);
insert into post value (null,1, '52你好','再见', now(), 1);
insert into post value (null,1, '53你好','再见', now(), 1);
insert into post value (null,1, '54你好','再见', now(), 1);
insert into post value (null,1, '55你好','再见', now(), 1);
insert into post value (null,1, '56你好','再见', now(), 1);
insert into post value (null,1, '57你好','再见', now(), 1);
insert into post value (null,1, '58你好','再见', now(), 1);
insert into post value (null,1, '59你好','再见', now(), 1);
insert into post value (null,1, '60你好','再见', now(), 1);
insert into post value (null,1, '61你好','再见', now(), 1);
insert into post value (null,1, '62你好','再见', now(), 1);
insert into post value (null,1, '63你好','再见', now(), 1);
insert into post value (null,1, '64你好','再见', now(), 1);
insert into post value (null,1, '65你好','再见', now(), 1);
insert into post value (null,1, '66你好','再见', now(), 1);
insert into post value (null,1, '67你好','再见', now(), 1);
insert into post value (null,1, '68你好','再见', now(), 1);
insert into post value (null,1, '69你好','再见', now(), 1);
insert into post value (null,1, '70你好','再见', now(), 1);
insert into post value (null,1, '71你好','再见', now(), 1);
insert into post value (null,1, '72你好','再见', now(), 1);
insert into post value (null,1, '73你好','再见', now(), 1);
insert into post value (null,1, '74你好','再见', now(), 1);
