DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
                               `id` bigint(20) PRIMARY KEY COMMENT '用户id',
                               `email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户邮箱',
                               `user_name` varchar(100) NOT NULL COMMENT '用户名称',
                               `create_time` datetime COMMENT '创建时间',
                               `update_time` datetime COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

drop table admin_orders;
create table orders
(
    id         bigint                      not null
        primary key auto_increment,
    code       varchar(50)                 not null,
    status     tinyint        default 0    null,
    amount     decimal(12, 2) default 0.00 null,
    created_at datetime                    null,
    updated_at datetime                    null,
    constraint idx_code
        unique (code)
);
select * from orders

create database demo

SET PASSWORD FOR 'root'@'localhost' = '1234';