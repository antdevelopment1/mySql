create table customers (
    id int auto_increment primary key,
    first_name varchar(200),
    last_name varchar(200),
    email varchar(200)
);

create table orders (
    id int auto_increment primary key,
    order_date date,
    amount decimal(8, 2),
    customer_id int,
    foreign key(customer_id) references customers(id)
);

insert into customers (
    first_name, last_name, email
)
values 
    ('April', 'Copes', 'antdevelopment1@gmail.com'),
    ('John', 'Smith', 'johnsmith@mgial.com'),
    ('Kevin', 'Dank', 'kevindank@gmail.com');

insert into orders (
    order_date,
    amount,
    customer_id
)
values (
    '2019/12/16', 22.44, 1
),
(
    '2014/11/11', 666.44, 2
),
(
    '2015/02/09', 342.44, 3
);

select id from customers where last_name = "Copes";

select * from orders where customer_id = 1;

-- or

select * from orders where customer_id = (
    select id from customers
    where last_name = "Copes"
);

-- Cross join
select * from customers, orders;