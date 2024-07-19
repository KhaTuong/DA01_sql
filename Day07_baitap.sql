---Bài tập 1
SELECT NAME 
FROM STUDENTS 
WHERE MARKS > 75 
ORDER BY RIGHT(NAME,3), ID ASC
---Bài tập 2
SELECT user_id, 
CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT(name,LENGTH(name)-1))) AS name 
FROM Users 
ORDER BY user_id
---Bài tập 3
SELECT manufacturer,
CONCAT('$', ROUND(SUM(total_sales)/1000000),' million') as sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC;
---Bài tập 4
SELECT 
EXTRACT(month FROM submit_date) as mth,
product_id as Product,
ROUND(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY EXTRACT(month FROM submit_date), Product
ORDER BY mth, Product;
---Bài tập 5
SELECT sender_id, 
COUNT(message_id) 
FROM messages
WHERE date_part('year', CAST(sent_date AS date))=2022 
AND date_part('month', CAST(sent_date AS date))= 8
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2;
---Bài tập 6
select tweet_id
from Tweets
where length(content) > 15;
---Bài tập 7
SELECT 
activity_date AS day,
COUNT(DISTINCT user_id) AS active_users
FROM activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
---Bài tập 8
SELECT 
COUNT(employee_id) AS num_employee
FROM employees
WHERE EXTRACT(MONTH FROM joining_date) between 1 and 7
AND EXTRACT(YEAR FROM joining_date)=2022
---Bài tập 9
SELECT
POSITION('a' in first_name) AS position
FROM worker
WHERE first_name= 'Amitah'
---Bài tập 10
SELECT SUBSTRING(title,LENGTH(winery)+2,4) 
FROM winemag_p2
WHERE country='Macedonia'
