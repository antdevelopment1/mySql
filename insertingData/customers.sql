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
order by total_spent asc;

-- Left Join
select first_name, last_name, order_date, amount
    from customers
    left join orders
        on customers.id = orders.customer_id;

-- Left Join Using IFNULL
select first_name, last_name, IFNULL(sum(amount), 0) as total_spent
    from customers
    left join orders
        on customers.id = orders.customer_id
group by customers.id
order by total_spent;

-- Right Join
select first_name, last_name, order_date, amount
    from customers
    right join orders
        on customers.id = orders.customer_id;

-- Excercise 1
create  table students (
    id int auto_increment primary key,
    first_name varchar(100)
);

create table papers (
    id int auto_increment primary key,
    title  varchar(255),
    grade int,
    student_id int,
    foreign key (student_id) 
        references students(id)
        on delete cascade
);

insert into students (
    first_name
)
values 
    ("April"),
    ("John"),
    ("Kelly"),
    ("Joe"),
    ("Samantha"),
    ("Jason"),
    ("Kristen");


insert into papers (
    title,
    grade,
    student_id
)

values 
    ("History", 92, 1),
    ("Math", 90, 1),
    ("Science", 66, 2),
    ("History", 22, 3),
    ("Science", 0, 4),
    ("Math", 0, 5),
    ("English", 55, 2),
    ("English", 78, 3),
    ("Math", 62, 1),
    ("Science", 33, 2),
    ("History", 100, 5),
    ("English", 44, 4);

-- Inner join
select first_name, title, grade 
    from students
    inner join papers
        on students.id = papers.student_id
        order by papers.grade desc;

-- Alternative Solution
select first_name, title, grade 
    from students
    right join papers
        on students.id = papers.student_id
        order by papers.grade desc;

-- Problem 2
select first_name, title,  grade
    from students
    left join papers
        on students.id  = papers.student_id
        order by papers.grade desc;