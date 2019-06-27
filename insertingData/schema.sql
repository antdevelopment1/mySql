create table shirts (
	shirt_id int auto_increment not null primary key,
	article varchar(20),
	color varchar(20),
	shirt_size varchar(20),
	last_worn int
);

insert into shirts (
	article,
	color,
	shirt_size,
	last_worn
)

values
	("t-shirt", "white", "S", 10),
	("tshirt", "green", "S", 200),
	("polo shirt", "black", "M", 10),
	("tank top", "blue", "S", 50),
	("tshirt", "pink", "S", 0),
	("polo shirt", "red", "M", 5),
	("tank top", "white", "S", 200),
	("tank top", "blue", "M", 15);

insert into shirts (
	article,
	color,
	shirt_size,
	last_worn
)

values 
	("polo shirt", "purple", "M", 50);