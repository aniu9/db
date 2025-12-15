select * from cj_url order by create_time desc;
select * from cj_search_url order by create_time desc;
select * from cj_search_text order by create_time desc;


select * from cj_url where status=3 order by update_time desc;

select * from cms_chat where uname='ghk56f'
select * from cms_message where status=2 order by update_time desc

update cms_message set status=2 where id in(1,2,3,4,5)

SELECT * FROM `cms_content_view` WHERE status = 2 AND is_pushed_es != 1 ORDER BY update_time LIMIT 100
