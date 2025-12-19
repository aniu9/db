select * from cj_url order by create_time desc;
select * from cj_search_url order by create_time desc;
select * from cj_search_text order by create_time desc;
select * from cms_chat where uname='ghk56f';
select * from cms_message where status=2 order by update_time desc;


-- ----------------------------

select * from cms_message where status=3 and is_pushed_es=2

select uname,count(1)cnt from cj_url where link_type=2 group by uname order by cnt desc
select url,count(1)cnt from cj_search_url group by url order by cnt desc
select uname,count(1)cnt from cj_search_url group by uname order by cnt desc
create index ix_url on cj_search_url (url);
create index ix_chat on cj_search_url (uname);