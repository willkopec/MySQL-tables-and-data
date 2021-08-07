-- 5.	Write a SQL query which which produces a table containing the 
-- name of each country and the count of how many articles are in the dataset from each country. left join and joining using country id
select country, count(news_id) as articleCount from country_table
left join news
on country_table.country_id = news.country_id
group by country
order by count(news_id) DESC;
