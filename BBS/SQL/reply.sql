use bbs;
DROP TABLE IF EXISTS reply;
create table reply(
id int primary key auto_increment,
postId int ,
followId int,
userId int,
title varchar(235) not null,
content text not null,
pdate datetime not null,
foreign key(postId) references post(id),
foreign key(userId) references user(id)
);
insert into reply values (null, 1, 1,1, '蚂蚁大战大象', '蚂蚁大战大象', now());
insert into reply values (null, 1, 1,1,  '大象被打趴下了', '大象被打趴下了',now());
insert into reply values (null, 1, 1,1, '蚂蚁也不好过','蚂蚁也不好过', now());
insert into reply values (null, 1, 1,1, '瞎说', '瞎说', now());
insert into reply values (null, 1, 1,1, '没有瞎说', '没有瞎说', now());
insert into reply values (null, 1, 1,1, '怎么可能', '怎么可能', now());
insert into reply values (null, 1, 1,1, '怎么没有可能', '怎么没有可能', now());
insert into reply values (null, 1, 1,1, '可能性是很大的', '可能性是很大的', now());
insert into reply values (null, 1, 1,1, '大象进医院了', '大象进医院了', now());
insert into reply values (null, 1, 1,1, '护士是蚂蚁', '护士是蚂蚁', now());
