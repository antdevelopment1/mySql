use ig_clone;

create table users (
    id int auto_increment primary key,
    username varchar(255) unique not null,
    created_at timestamp default now()
);

insert into users (
    username
)

values 
    ("BlueTheCat"),
    ("CharlieBrown"),
    ("ColtSteele");

-- create table comments (
--     id int auto_increment primary key,
--     comment_text varchar(255),
--     user_id int,
--     photo_id int,
--     created_at 
--     foriegn key(user_id) references users(id),
--     foriegn key(photo_id) references photos(id)
-- );

create table photos (
    id int auto_increment primary key,
    image_url varchar(255) not null,
    user_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id)
);

insert into photos (
    image_url, user_id
)
values 
("/wdkwdwkwd", 1),
("/lde2ecwwkwd", 2),
("/ekiedwkwd", 2);

-- create table likes (
--     id int auto_increment primary key,
--     user_id int,
--     photo_id int,
--     created_at,
--     foreign key(user_id) references users(id),
--     foreign key(photo_id) references photos(id)
-- );

-- create table follows (
--     id int auto_increment primary key,
--     follower_id int,
--     followee_id int,
--     created_at
-- );

-- Inner joins for tables
-- select photos.image_url, users.username from photos
-- inner join users
-- on photos.user_id = users.id;
