create database pizzahut;
use pizzahut;
create table orders1(
order_id int not null,
order_date date not null,
order_time time not null,
primary key(order_id));

create table order_details1(
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key(order_details_id));


