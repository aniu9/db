

select count(1)cnt from cj_search_text group by search_text  order by cnt desc
select count(1) from cj_url where url='https://t.me/smnvwangtj/1733'
select * from cj_url where is_msg=1 and status=2 order by msg_time

truncate table cj_search_text;
truncate table cj_search_url
select * from cj_search_text order by msg_id desc
select * from cj_search_url
select count(1) from cj_url where status=2 and is_msg=2

delete from cj_url where is_msg=1

alter table cj_url add column remark  varchar(500)    comment '备注'

select count(1)  from cms_content where link_type=2 and user_num>200000
select * from cms_content where link_type=2 and user_num>200000

update users set name=a8m1 where id=1

select * from tmp_category_kw

中文包 最多  汉化 9
吃瓜 第二
台球厅



少妇
精神小妹
探花
强奸
高中生
乱伦
萝莉
反差
麻豆
欧美
调教
绿帽
换脸
母狗
换妻
自慰
人兽
麻豆传媒
熟女
福利姬
母子
巨乳
人妻
足交
喷水
白虎
波多野结衣
肛交
破处
黑丝
偷情
淫语
淫叫
处女
约炮
学生妹
裸聊
情侣自拍
露脸
口交
后入
内射
艳母
厕所偷拍
日本女优
双飞
淫妻
骚伪娘
ai脱衣
三级伦理
A片
苍进空
黑逼
抠逼
老婆被内射
母子乱伦
伪娘
流出
顶臀
打桩
兔娘
富婆
男娘
露出
白菜妹妹
轻熟女
美乳
齐鲁屌王
乳交
裤袜
少妇白洁
中原炮王
捆绑调教


select count(1) from  cms_content_view where status=2 and is_pushed_es=0
update cms_message set is_pushed_es=0 where status=2
update cms_chat set is_pushed_es=0 where status=2

select count(1) from cj_url where status=1

CREATE INDEX idx_status_pushed_update ON cms_chat (status,is_pushed_es,update_time);
CREATE INDEX idx_status_pushed_update ON cms_message (status,is_pushed_es,update_time);

SELECT count(*) FROM `cms_content_view` WHERE status = 1 AND is_pushed_es != 1
SELECT * FROM `cms_message` WHERE status = 1 AND is_pushed_es != 1 ORDER BY update_time LIMIT 20

select a.es_id as id, a.id as tbid, a.uname,a.tgid
     ,a.title, a.description,a.link_type,a.status,a.is_pushed_es, a.source, a.create_time, a.update_time
     ,concat('https://t.me/',a.uname,'/',a.tgid) as url
     ,b.user_num, b.is_ios
     ,2 as content_type
     ,a.duration, a.file_size, a.file_name,a.publish_time,a.read_num
from cms_message a
         left join cms_chat b on a.uname=b.uname

WHERE a.status = 1 AND a.is_pushed_es != 1 ORDER BY a.update_time LIMIT 20

drop view if exists cms_chat_view;
create view cms_chat_view as
select es_id as id, id as tbid, uname
     ,title, description, link_type, status, is_pushed_es, source
     ,concat('https://t.me/',uname) as url
     ,user_num, is_ios,1 as content_type
     ,tgid, create_time, update_time
from cms_chat;

drop view if exists cms_message_view;
create view cms_message_view as
select a.es_id as id, a.id as tbid, a.uname,a.tgid
     ,a.title, a.description,a.link_type,a.status,a.is_pushed_es, a.source
     ,concat('https://t.me/',a.uname,'/',a.tgid) as url
     ,b.user_num, b.is_ios,2 as content_type
     ,a.publish_time,a.read_num,a.duration, a.file_size, a.file_name
     ,a.create_time, a.update_time
from cms_message a
left join cms_chat b on a.uname=b.uname;

select count(1) from cms_content_view where status=1 and is_pushed_es=2
select * from cms_message where link_type=3
select count(1)  from cj_url where status=1 and is_msg=2 order by update_time

select * from cj_url where status=1 and is_msg=2 order by update_time

update cms_message set is_pushed_es=2 where is_pushed_es=0

CREATE INDEX idx_status_ismsg_update ON cj_url (status,is_msg,update_time);