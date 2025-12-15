
select * from users
select * from cars
select * from `groups`
select * from group_users
select * from profiles
select * from admin_users

ALTER TABLE cars DROP FOREIGN KEY cars_admin_users_cars;
drop table admin_users;
delete from cars where model='Tesla2'

ALTER TABLE cars drop column admin_user_cars

create table if not exists cj_search_url (
                                             id           bigint       not null auto_increment primary key   comment '主键',
                                             url          varchar(100) not null                                  comment 'url',
                                             uname varchar(100) not null comment 'username',
                                             is_msg       tinyint                                       comment '是否是消息,1是2否',
                                             source       tinyint                                       comment '来源，1手动导入2消息采集10js',
                                             msg_time  datetime                                       comment '消息时间',
                                             msg_id  int                                       comment '消息id',
                                             chat_id  varchar(100)                                       comment 'chatid',
                                             create_time  datetime                                       comment '创建时间',
                                             update_time  datetime                                       comment '更新时间',
                                             index ix_msgid_createtime (msg_id, create_time)
) engine=innodb comment = 'url收集表';