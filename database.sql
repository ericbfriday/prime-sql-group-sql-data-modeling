CREATE TABLE department (user_id SERIAL PRIMARY KEY, name varchar(200) NOT NULL UNIQUE);

CREATE TABLE staff (staff_id SERIAL PRIMARY KEY, name varchar(200) NOT NULL UNIQUE);

CREATE TABLE lectures (lecture_id SERIAL PRIMARY KEY, name varchar(200) NOT NULL UNIQUE, staff_id integer FOREIGN KEY);

CREATE TABLE department_staff (user_id FOREIGN KEY, staff_id FOREIGN KEY);

-- select all 
SELECT * FROM lectures;

-- select all with staff_id 6
SELECT * FROM department_staff WHERE staff_id='6';

SELECT * FROM department_staff WHERE staff_id='2';

--Display all joins and links
SELECT * FROM staff CROSS JOIN department;

--Display one instructor by name
SELECT * FROM staff CROSS JOIN department WHERE staff.name='Ethan';

