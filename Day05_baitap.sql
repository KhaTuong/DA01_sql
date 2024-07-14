---Bài tập 1
select distinct CITY from STATION
where ID%2=0
---Bài tập 2
select count(CITY)-count(distinct CITY) from STATION
---Bài tập 3
select ceil(avg(salary)-avg(replace(salary,0,''))) 
from EMPLOYEES;
---Bài tập 4
select 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal),1) as mean
from items_per_order;
---Bài tập 5
select candidate_id
from candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
group by candidate_id
having count(skill)=3;
---Bài tập 6
select user_id,
date(max(post_date))-date(min(post_date)) as days_between
from posts
where post_date>='2021-01-01' and post_date<='2022-01-01'
group by user_id
having count(post_id)>=2;
---Bài tập 7
select card_name,
max(issued_amount)-min(issued_amount) as difference
from monthly_cards_issued
group by card_name
order by difference desc;
---Bài tập 8
select manufacturer,
count(drug) as drug_count,
abs(sum(cogs-total_sales)) as total_loss
from pharmacy_sales
where total_sales<cogs
group by manufacturer
order by total_loss desc;
---Bài tập 9
select * from cinema
where id%2!=0 and description!="boring"
order by rating desc;
---Bài tập 10
select teacher_id, count(distinct subject_id) as cnt
from Teacher
group by teacher_id
order by null;
---Bài tập 11
select user_id, 
count(follower_id) as followers_count
from followers
group by user_id
order by user_id
---Bài tập 12
select class
from courses
group by class
having count(student)>=5
