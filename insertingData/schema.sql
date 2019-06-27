create table employees (
    id int auto_increment not null primary key,
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    middle_name varchar(255),
    age int not null,
    current_status varchar(255) not null default 'employed'
);

insert into employees(first_name, last_name, age) values
("Dora", "Smith", 58);