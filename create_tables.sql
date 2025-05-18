CREATE DATABASE IF NOT EXISTS cafeteria;
USE cafeteria;

CREATE TABLE Users (
    user_id int primary key auto_increment,
    first_name nvarchar(50),
    last_name nvarchar(50),
    email nvarchar(100) ,
    user_type nvarchar(20));

CREATE TABLE Students (
    student_id int primary key auto_increment,
    user_id int,
    major nvarchar(100),
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Professors (
    professor_id int primary key auto_increment,
    user_id int,
    department nvarchar(100),
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Meals (
    meal_id int primary key auto_increment,
    name nvarchar(100),
    day_of_week nvarchar(20),
    price decimal(6,2)
);

CREATE TABLE Orders (
    order_id int primary key auto_increment,
    user_id int,
    order_date date,
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Order_Items (
    order_item_id int primary key auto_increment,
    order_id int,
    meal_id int,
    quantity int,
    foreign key (order_id) references Orders(order_id),
    foreign key (meal_id) references Meals(meal_id)
);

