create table users (
    email varchar(255) primary key,
    created_at timestamp default now()
);

insert into users (
    email
)
values 
    ("antdevelopment1@gmail.com"),
    ("john100@gmail.com");