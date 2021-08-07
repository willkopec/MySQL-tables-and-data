-- 10.	Write a SQL query linking each author to their probable political bias, based on the articles they’ve written.  
-- The table should contain three columns, the author name, the political bias, and the count of how many articles that author has published with that bias.  
-- Order the results alphabetically by author name, from greatest number of articles to least, and alphabetically by bias in the case of a tie.
select author, political_bias, count(political_bias) as numArticles from news_authors
left join news on news.news_id = news_authors.news_id
join author_table on author_table.author_id = news_authors.author_id
join political_bias_table on news.political_bias_id = political_bias_table.political_bias_id
group by author, political_bias
order by author, political_bias asc, count(political_bias);

