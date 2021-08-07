-- 6.	Write a SQL query which produces a table containing the average news_guard_score for the data set.
select format(sum(news_guard_score)/count(news_guard_score), 3) AS "Average Score" from news;
