use bbs;
DROP TABLE IF EXISTS reply;
create table reply(
replyId int primary key auto_increment,
pid int null,
followId int,
author varchar(20) not null,
title varchar(235) not null,
content text not null,
pdate datetime not null,
foreign key(pid) references post(postId)
);
insert into reply values (null, 1, 1,'gagayu', '蚂蚁大战大象', '蚂蚁大战大象', now());
insert into reply values (null, 1, 1,'gagayu',  '大象被打趴下了', '大象被打趴下了',now());
insert into reply values (null, 1, 1, 'gagayu', '蚂蚁也不好过','蚂蚁也不好过', now());
insert into reply values (null, 1, 1, 'gagayu', '瞎说', '瞎说', now());
insert into reply values (null, 1, 1, 'gagayu', '没有瞎说', '没有瞎说', now());
insert into reply values (null, 1, 1, 'gagayu', '怎么可能', '怎么可能', now());
insert into reply values (null, 1, 1, 'gagayu', '怎么没有可能', '怎么没有可能', now());
insert into reply values (null, 1, 1, 'gagayu', '可能性是很大的', '可能性是很大的', now());
insert into reply values (null, 1, 1, 'gagayu', '大象进医院了', '大象进医院了', now());
insert into reply values (null, 1, 1, 'gagayu', '护士是蚂蚁', '护士是蚂蚁', now());
