-- create table animal_types(
--     id int,
--     description varchar(20),
--     legs smallint,
--     primary key (id)
-- )
-- create table animals(
--     id bigint,
--     name varchar(20),
--     age smallint(6),
--     animal_type_id int,
--     primary key (id),
--     foreign key (animal_type_id) references animal_types(id)
-- )
-- insert into animal_types
-- values(1, "Dog", 4)

-- insert into animals
-- values(1, "Dolly", 2, 1)

-- create table Department(
--     id int,
--     name varchar(20),
--     description varchar(50),
--     primary key (id)
-- )

-- insert into Department
-- values(2, "Sales", "Sales")
-- insert into Department
-- values(3, "Digital Marketing Course","Digital Marketing Course")
-- insert into Department
-- values(1, "Coding Bootcamp", "Full Stack application bootcamp")

-- create table Job(
--     id int,
--     title varchar(20),
--     description varchar(50),
--     salary int,
--     primary key (id)
-- )
-- insert into Job
-- values(1, "Teacher", "Teaching", "1000000")
-- insert into Job
-- values(2, "Manager", "Managing", 1000000)
-- insert into Job
-- values(3, "Sales", "Getting Students", 1000000)
-- create table Employee(
--     id int,
--     name varchar(20),
--     job_id int,
--     department_id int,
--     primary key (id),
--     foreign key (job_id) references Job(id),
--     foreign key (department_id) references Department (id)
-- )

-- drop table Job
-- insert into Employee
-- values(1,"Hadas", 1, 1)
-- insert into Employee
-- values(2,"Adi",2,1),(3,"Gilly",3,2),(4,"Hila",1,3);
-- SELECT * FROM Employee, Job, Department 
-- where Employee.job_id=Job.id and
-- Employee.department_id=Department.id
-- alter table Employee change name employee_name varchar(20)
-- select * from Employee
-- right join Job on Job.id = Employee.job_id
-- right join Department on Department.id = Employee.department_id 
-- insert into Employee

-- values(5, "Bob",3,null)
-- create table Student(
--     id int,
--     name varchar(20),
--     is_brilliant boolean,
--     primary key (id)
-- )
-- create table Teacher(
--     id int,
--     name varchar(20),
--     is_tenured boolean,
--     primary key (id)
-- )
-- create table Student_Teacher(
--     student_id int,
--     teacher_id int,
--     foreign key (student_id) references Student(id),
--     foreign  key (teacher_id) references Teacher(id)
-- )
-- INSERT INTO Student VALUES (1, 'Ryan', 1);
-- INSERT INTO Student VALUES (2, 'Leo', 1);
-- INSERT INTO Student VALUES (3, 'Ernie', 0);

-- INSERT INTO Teacher VALUES (1, 'Levine', 1);
-- INSERT INTO Teacher VALUES (2, 'Foster', 0);
-- INSERT INTO Teacher VALUES (3, 'Schwimmer', 0);
-- insert into Student_Teacher values(1,1),(1,2),(2,1),(2,2),(2,3),(3,1);

-- select * from Student, Teacher, Student_Teacher
-- where Student.id=Student_Teacher.student_id and
-- Teacher.id=Student_Teacher.teacher_id and Teacher.name="foster"

-- select * from Student, Teacher, Student_Teacher
-- where Student.id=Student_Teacher.student_id and
-- Teacher.id=Student_Teacher.teacher_id and
-- Student.student_name="Ryan"

-- select * from Student, Teacher, Student_Teacher
-- where Student.id=Student_Teacher.student_id and
-- Teacher.id=Student_Teacher.teacher_id and Student.student_name ="leo" 
-- and Teacher.is_tenured

select * from Student, Teacher, Student_Teacher
where Student.id=Student_Teacher.student_id and
Teacher.id=Student_Teacher.teacher_id
and Teacher.name="levine"
and Student.is_brilliant 