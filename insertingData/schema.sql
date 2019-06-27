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

create table cats (
	id int auto_increment not null primary key,
	name varchar(20), 
	breed varchar(20), 
	age int
);

insert into cats
	(name, breed, age) 
values 
	('Ringo', 'Tabby', 4), 
	('Cindy', 'Maine Coon', 10), 
	('Dumbledore', 'Miane Coon', 11), 
	('Egg', 'Persian', 4), 
	('Misty', 'Tabby', 13), 
	('George Micheal', 'Ragdoll', 9), 
	('Jackson', 'Sphynx', 7);


	