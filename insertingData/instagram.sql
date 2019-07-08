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

create table comments (
    id int auto_increment primary key,
    comment_text varchar(255) not null,
    user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id)
);

insert into comments (comment_text, user_id, photo_id)
    values 
        ("Meow!", 1, 2),
        ("Amzing Shot!!", 3, 2),
        ("I <3 this", 2, 1);


create table likes (
    user_id int not null,
    photo_id int not null,
    created_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photos(id),
    primary key(user_id, photo_id)
);

insert into likes (
    user_id, photo_id
)
values 
    (1,1),
    (2,1),
    (1,3),
    (3,3);

create table follows (
    follower_id int not null,
    followee_id int not null,
    created_at timestamp default now(),
    foreign key(follower_id) references users(id),
    foreign key(followee_id) references users(id),
    primary key(follower_id, followee_id)
);

insert into follows (
    follower_id,
    followee_id
)
value 
    (1, 2),
    (1, 3),
    (3, 1),
    (2, 3);
-- Inner joins for tables
-- select photos.image_url, users.username from photos
-- inner join users
-- on photos.user_id = users.id;
