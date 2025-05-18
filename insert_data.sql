INSERT INTO Users (first_name, last_name, email, user_type)
VALUES ('Elahe', 'nejatollahi', 'elahe.nejat@gmail.com', 'student');

INSERT INTO Students (user_id, major)
VALUES (1, 'Computer Science');

INSERT INTO Meals (name, day_of_week, price)
VALUES ('pitza', 'Saturday', 1000);

INSERT INTO Orders (user_id, order_date)
VALUES (1, '2024-03-20');

INSERT INTO Order_Items (order_id, meal_id, quantity)
VALUES (1, 1, 1);

INSERT INTO Users (first_name, last_name, email, user_type)
VALUES ('hamid', 'nejatollahi', 'hamid.nejat@gmail.com', 'professor');

INSERT INTO Professors (professor_id, user_id, department)
VALUES (2, 3 ,'mecanic');

INSERT INTO Meals (name, day_of_week, price)
VALUES ('hamberger', 'Manday', 1090);

INSERT INTO Orders (user_id, order_date)
VALUES (1, '2024-06-10');

INSERT INTO Order_Items (order_id, meal_id, quantity)
VALUES (1, 1, 2);


