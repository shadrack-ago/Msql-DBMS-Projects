use amazon;
Select *
FROM  department;
INSERT INTO department(id,Name)
VALUES (1,'Sales'),
       (2,'Marketing'),
       (3,'legal');


SELECT *
FROM staff;

INSERT INTO staff(firstName,departmentId,salary)
VALUES('Jeff',1,12000),
     ('John',3,13000),
     ('Jerry',2,12000);
     
ALTER TABLE staff
MODIFY COLUMN address INT;


UPDATE staff
SET email='betty@gmai.com', address='4'
WHERE departmentId=1;


UPDATE staff
SET email = 'jeff@gmail.com', address = 234
WHERE id= 4;

DELETE FROM staff
WHERE departmentId= null;

SELECT t1.firstName, t1.salary, t2.Name AS DeptName
FROM staff AS t1
INNER JOIN department as t2 ON t2.id = t1.departmentId;



SELECT staff.*, department.Name
FROM staff
LEFT JOIN department ON staff.departmentId=department.id


SELECT column_name, COUNT(*) AS total_count 
FROM your_table 
GROUP BY column_name;

SELECT salary,firstName, COUNT(*) AS total_count 
FROM staff
GROUP BY salary,firstName
ORDER BY salary DESC;