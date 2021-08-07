-- 9.	Write a SQL query which produces a table containing unique countries and their average news_guard_score.
select country, format(sum(news_guard_score)/count(news_guard_score), 3) AS avg_news_score from country_table, news
where news.country_id = country_table.country_id
group by country
order by sum(news_guard_score)/count(news_guard_score) desc, country desc;
