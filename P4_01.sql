-- 1.	Write a SQL query which, given a news id stored in the variable @nid, generates a table containing the title of the article with that id.
select title, news_id from news
where news_id = @nid;