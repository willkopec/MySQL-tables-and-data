-- 4.	Write a SQL query which produces a table of unique publisher names that have news articles in the data set.
select publisher from publisher_table, news
where publisher_table.publisher_id = news.publisher_id
group by publisher;