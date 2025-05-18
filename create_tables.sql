CREATE DATABASE IF NOT EXISTS cafeteria;
USE cafeteria;

CREATE TABLE Users (
    user_id int primary key auto_increment,
    first_name nvarchar(50)not null ,
    last_name nvarchar(50) not null ,
    email nvarchar(100) not null ,
    user_type ENUM('student', 'professor') NOT NULL
);

CREATE TABLE Students (
    student_id int primary key auto_increment,
    user_id int not null ,
    major nvarchar(100)not null ,
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Professors (
    professor_id int primary key auto_increment,
    user_id int not null ,
    department nvarchar(100) not null ,
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Meals (
    meal_id int primary key auto_increment,
    name nvarchar(100) not null ,
    day_of_week nvarchar(20)not null ,
    price decimal(6,2) not null
);

CREATE TABLE Orders (
    order_id int primary key auto_increment,
    user_id int not null ,
    order_date date not null ,
    foreign key (user_id) references Users(user_id)
);

CREATE TABLE Order_Items (
    order_item_id int primary key auto_increment,
    order_id int not null ,
    meal_id int not null ,
    quantity int not null ,
    foreign key (order_id) references Orders(order_id),
    foreign key (meal_id) references Meals(meal_id)
);

