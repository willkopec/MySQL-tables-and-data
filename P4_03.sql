-- 3.	Write a SQL query which produces a table containing the title and month of each article. 
select title, date_format(str_to_date(publish_date, "%m/%d/%y"), "%M") AS Month from news
order by date(str_to_date(publish_date, "%m/%d/%y")) ASC;