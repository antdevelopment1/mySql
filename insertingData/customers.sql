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
    ('Kevin', 'Dank', 'kevindank@gmail.com'),
    ('Sam', 'William', 'samwilliam@gmail.com'),
    ('Joe', 'Dustin', 'joedustin@mgial.com'),
    ('Drew', 'Andes', 'drewandes@gmail.com');

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
),
(
    '2018/12/17', 99.44, 1
),
(
    '2012/11/15', 966.34, 1
),
(
    '2011/02/02', 242.34, 2
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

-- Implicit Inner Join In this case select all orders that belong to the customer id
select * from customers c, orders where c.id = customer_id;

select first_name, last_name, order_date, amount
    from customers, orders
        where customers.id = orders.customer_id;

-- Emplicit Inner Join
select first_name, last_name, order_date, amount
    from customers
    join orders
        on customers.id = orders.customer_id;

-- Arbitrary Join
select * from customers
    join orders on customers.id = orders.id;

-- Example before Left Join
select first_name, last_name, sum(amount) as total_spent
    from customers
    join orders 
        on customers.id = orders.customer_id
group by orders.customer_id
order by total_spent;