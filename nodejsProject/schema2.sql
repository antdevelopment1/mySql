-- Find the earliest date a user joined
select date_format(min(created_at), "%M %D %Y") as earliest_date 
from users;