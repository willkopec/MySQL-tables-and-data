-- 8.	Write a SQL query which produces a table containing the publisher names, 
-- and the percentage of articles for which are marked as reliable (1) among the articles published by that publisher.
select publisher, Format((sum(reliability)/count(reliability) * 100), 3) AS percentage from news
left join publisher_table
on news.publisher_id = publisher_table.publisher_id
group by publisher
order by (sum(reliability)/count(reliability) * 100) DESC, publisher ASC;