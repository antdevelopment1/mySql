-- Challenge 1 sFind the earliest date a user joined
select date_format(min(created_at), "%M %D %Y") as earliest_date 
from users;

-- Challenge 2 Find the email of the first user
select email, min(created_at) from users
    group by email
    order by created_at limit 1;

-- Challenge 2 Cleaner Solution
select * from users where created_at = (select min(created_at) from users);

-- Challenge 3 Users according to month joined and count of users
select monthname(created_at) as month_joined, count(*) as count from users
    group by month_joined
    order by count desc;

