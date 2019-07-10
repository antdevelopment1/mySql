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

-- Challenge 4 Count the number of users with yahoo emails
select count(*) from users where email like "%@yahoo.com%";

-- Challenge 5 Calculate the total number of users for each email host
select
    case
        when email like "%@yahoo.com" then "yahoo"
        when email like "%@gmail.com" then "gmail"
        when email like "%@hotmail.com" then "hotmail"
        else 'other'
    end as provider,
    count(*) as total_users
from users
group by provider
order by total_users desc;