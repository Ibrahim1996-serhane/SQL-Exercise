Q1:Basic Queries
1- select name from students;
2-select name,age from students where age >30;
3-select * from students where age =30 and age ="F";
4-select points from students where name ="Alex";
5-insert into students (
id,name,age,gender,points)
values(8,"bob",24,"M",350);
6-update students set points=points+250 where name="basma"; 
7-update students set points=points-100 where name="Alex"; 
Q2:Creating Table
----------------
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID")
);
1-INSERT INTO graduates (ID,Name,Age,Gender,Points) 
  SELECT ID,Name , Age , Gender ,Points FROM students 
  WHERE Name = "Layal";
2-UPDATE graduates
 SET Graduation="08/09/2018"
 WHERE name = "Layal";
3-DELETE FROM students WHERE name = "Layal";

Q3:Joins
--------
1-SELECT employees.Name, companies.name, companies.Date
  FROM employees
  JOIN companies on companies.name = employees.Company;
2-SELECT employees.Name FROM employees
  JOIN companies ON companies.Name = employees.Company
  WHERE companies.Date<2000
3-SELECT companies.Name  FROM companies
  JOIN employees on companies.Name=employees.Company
  WHERE employees.Role ="Graphic Designer"

Q4:Count & Filter
-----------------
1-SELECT name FROM students
  WHERE points=(SELECT max(points) FROM students);
2-SELECT avg(points)FROM students;
3-select count(points) FROM students WHERE points = 500;
4- SELECT name FROM students WHERE name like '%s%';
5-SELECT name, points FROM students ORDER BY points DESC;

--------------------------------------------------------
