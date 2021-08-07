-- 7.	Write a SQL query which produces a table containing for each month, 
-- the name of the month, the number of articles released in that month, 
-- the overall number of articles released, and the percentage of the overall number of articles released in that month.
select date_format(str_to_date(publish_date, "%m/%d/%y"), "%M") AS month, count(date_format(str_to_date(publish_date, "%m/%d/%y"), "%M")) AS numArticles, (select count(news_id) from news) as overall, format(count(date_format(str_to_date(publish_date, "%m/%d/%y"), "%M"))/(select count(news_id) from news) * 100, 3) as percentage   from news
group by date_format(str_to_date(publish_date, "%m/%d/%y"), "%M")
order by month(str_to_date(publish_date, "%m/%d/%y")) ASC;