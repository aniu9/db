
-- 插入消息所属群 url
insert into cj_url(url, is_msg, status, source)
select url,2,1,10 from(
    select distinct SUBSTRING_INDEX(url, '/', 4)url
    from cj_url where is_msg=1
)t where url not in(select url from cj_url where is_msg=2)


