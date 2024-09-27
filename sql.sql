-- select * from student_info;

-- desc student_info;

-- alter table student_info add column college varchar(20);
-- update student_info set college = "EWIT" where loaction = "bengaluru";

create table Employee_Dtls_Info (E_Id int, Name varchar(20),
age int, Gen char(1), DOJ date, Department varchar(20), 
Location varchar(20), Salary int);

insert into Employee_Dtls_Info values
(1001,"Rajan",24,"M","2005-04-30","Sales","Bangalore",23000),
(1002,"Rajanith",24,"M","2006-04-30","IT","Hassan",25000),
(1003,"Shane",43,"F","1999-04-30","Marketing","Mandya",28000),
(1004,"Karuna",24,"F","2007-04-30","Sales","Tumkur",33000),
(1005,"Ram",34,"M","2005-04-30","Product","Bangalore",23000),
(1006,"Ashu",34,"F","2012-04-30","Tech","Bangalore",28000),
(1007,"Marry",34,"F","2015-04-30","Tech","Shimoga",28000),
(1008,"Robert",34,"M","2012-02-04","HR","Bangalore",30000),
(1009,"William",30,"M","2018-10-15","Tech","Tumkur",35000),
(1010,"Maya",34,"F","2014-10-20","Sales","Hassan",28000),
(1011,"Rajan",44,"M","2006-04-30","IT","Hassan",45000),
(10012,"Sara",33,"F","2000-04-30","Marketing","Mandya",28000),
(10013,"Kamal",24,"M","2020-04-30","Sales","Tumkur",33000),
(10014,"Rose",34,"F","2015-04-30","Product","Bangalore",23000),
(1015,"Anshu",34,"M","2019-04-30","Tech","Bangalore",28000),
(1016,"Madura",34,"F","2020-04-30","Tech","Shimoga",28000),
(1017,"Joseph",34,"M","2010-02-04","HR","Bangalore",40000),
(1018,"William",30,"M","2019-10-15","Tech","Tumkur",35000),
(1019,"Mayura",34,"F","2021-10-20","Sales","Hassan",28000),
(1020,"John",34,"M","2021-10-12","Tech","Shimoga",28000);
select * from Employee_Dtls_Info;
-- Having clause operates on grouped records similar to where clause but where aggregate function but having clause will do
select * from Employee_Dtls_Info;
select count(E_id),Location from Employee_Dtls_Info group by Location
having count(E_id)>2;

select Department,avg(Salary) a avg_salary from Employee_Dtls_Info group by Department having avg(Salary)>30000;
select Location, count(*) as emp_count from Employee_Dtls_Info where Location = "Bangalore" group by having count(*)>2;
select Location ,count(*) as emp_count from Employee_Dtls_Info where Location!="Bangalore" group by having count(*)>2;


-- create table Emp_salary (E_id int,Designation varchar(20),Experience int,Salary int,Department varchar(20));
-- insert into Emp_salary values
-- (001,"Developer",5,35000,"fullstack"),
-- (002,"Tester",4,33000,"testing"),
-- (003,"Admin",6,28000,"adminstration"),
-- (004,"HR",4,32000,"finance"),
-- (005,"TL",8,42000,"testing");
-- select * from Emp_salary;
-- select * from Emp_salary where Experience between 5 and 8;

-- create table stud_info(Stud_id int,Name varchar(20),Courses varchar(20),Gen varchar(2),Location varchar(20),Fees fixed);

-- insert into stud_info values
-- (101,"Megha","Data Science","F","Koppal",35000),
-- (102,"Kumar","Data Science","M","Bangalore",35000),
-- (103,"Jeshwanth","Data Science","M","Mandaya",35000),
-- (104,"Chandan","Data Science","M","Chitradurga",35000),
-- (105,"Diviya","Python","F","Bangalore",35000),
-- (106,"Anusha","Python","F","Bangalore",35000),
-- (107,"Gowda","Python","M","shivamogga",35000),
-- (108,"Manoj","Python","M","shivamogga",35000),
-- (109,"Prajwal","Data Science","M","shivamogga",35000),
-- (110,"Bharath","Python","M","Bangalore",35000);
-- select * from stud_info;
-- select * from stud_info order by Courses
-- limit 0,3;
-- select * from stud_info order by Courses
-- limit 3,3;
-- desc stud_info;
-- -- --'an'should be present in the sequence
-- select * from stud_info where name like "Chandan";
-- select * from Emp_salary order by salary
-- limit 3;
-- select * from Emp_salary order by salary
-- limit 0,3;
-- select * from Emp_salary order by salary
-- limit 3,3;
-- select * from Employee_Dtls_Info where name like "%ra%";
-- select * from Employee_Dtls_Info;
-- select * from Employee_Dtls_Info where name like "%s";
-- select * from Employee_Dtls_Info where name like "_";
-- use sql_demo;
-- select * from Employee_Dtls_Info where name like "_";
-- select count(*) from ds2stud_info;
-- select count(course) from ds2stud_info;
-- select count(distinct course) as course_names from ds2stud_info;
-- select count(distinct location) as course_names from ds2stud_info;
alter table Employee_Dtls_Info change Name Emp_Name varchar(20); 
desc Employee_Dtls_Info;
select E_Id,Name,Salary from Employee_Dtls_Info

where Department='Sales' or Location='Bangalore';

select Location,count(*) from Employee_Dtls_Info group by Location;
select Location,DOJ,count(*) from Employee_Dtls_Info group by Location,DOJ;
select Department,count(*) from Employee_Dtls_Info group by Department;
select Department,Location,count(*) from Employee_Dtls_Info group by Department; 
select Department,Location,count(*) from Employee_Dtls_Info group by Department,Location;


select min(age) from Employee_Dtls_Info;
select max(age) from Employee_Dtls_Info;
select max(age),Name,count(*) from Employee_Dtls_Info group by age;
select DOJ,max(Salary),count(*) from Employee_Dtls_Info group by DOJ;
select Department,sum(Salary) from Employee_Dtls_Info group by Department;
select Department,avg(age) from Employee_Dtls_Info group by Department;
select Department,round((age),1) as avg_age from Employee_Dtls_Info group by Department;

create table sales(prod_id int,sell_price float,quantity int,state varchar(20));
insert into sales values
(121,320.0,3,"California"),
(121,320.0,6,"Texas"),
(121,320.0,4,"Alaska"),
(123,290.0,2,"Texas"),
(123,290.00,7,"California"),
(123,290.00,4,"Washington"),
(121,320.0,7,"Ohio"),
(121,320.0,2,"Arizona"),
(123,290.00,8,"California");
desc sales;
select prod_id,sum(sell_price * quantity) as revenue from sales group by prod_id;

create table c_product (prod_id int, cost_price float);
 insert into c_product values(121,270.0),(123,250.0);
 
create table if not exists employee_Department(name varchar(20),id int not null auto_increment,primary key(id));

insert into employee_Department (name) values
('IT'),
('HR'),
('finance'),
('accounting'),
('housekeeping'),
('security'),
('support'),
('contract staff'),
('sales'),
('management');
select * from employee_Department;

CREATE TABLE IF NOT EXISTS Employee (
    name varchar(100),id int not null auto_increment,address varchar(100),
    Department_id int,PRIMARY KEY (id),FOREIGN KEY (Department_id) references
    Employee_Department(id));
    
    INSERT INTO Employee VALUES 
('Veniam','1','640 Damon Junction\nEast Mathew, NY 68818','3'),
('Molestiae','2','6658 Hollis Club\nErnamouth, TX 19743','10'),
('Officiis','3','59965 Mason Neck Apt. 985\nKareemborough, NV 85535','9'),
('Rerum','4','91067 Geovany Fort\nHanefort, WA 92863','6'),
('Et','5','7647 Reva Shores Suite 970\nNew Audrafort, OH 17846-5397','2'),
('Et','6','9419 Carmela Burg Apt. 687\nAimeebury, SD 32389-4489','8'),
('Laborum','7','6961 Weissnat Drive\nDonnellyfort, MT 53947','6'),
('Cupiditate','8','117 Nellie Summit Suite 982\nSouth Heavenfurt, CA 45675','8'),
('Eveniet','9','9086 Mariam Square Suite 698\nSouth Dulce, MT 82861-3079','2'),
('Rerum','10','783 Goodwin Burgs Apt. 429\nWillmsfort, UT 42820-1019','9'),
('Quis','11','42928 Ernesto Trail\nEast Jules, WV 87169-2851','1'),
('Esse','12','161 Kassulke Stravenue Apt. 937\nWilliamsonton, MS 62622','7'),
('Dolores','13','22811 Liliana Trail Apt. 890\nSouth Ernesto, MT 04134','10'),
('Ut','14','981 Laron Overpass Suite 361\nWest Olahaven, FL 46982-7801','10'),
('Mollitia','15','411 Louisa Mill\nSouth Maximefort, MA 04903','8'),
('Necessitatibus','16','2853 Jonathon Turnpike\nQuitzonville, KY 54776','4'),
('Fugit','17','3647 Rosalinda Corner\nMaureenstad, RI 96605','5'),
('Corporis','18','03559 Nicholas Circle Apt. 364\nWest Zettaberg, ID 58592-3447','8'),
('Neque','19','56111 Alysson Gateway Apt. 212\nLeschbury, VT 90605-2306','8'),
('Velit','20','263 O\'Keefe Avenue Apt. 884\nWest Missouri, IL 50303','6');
select * from Employee;
select Employee.name as E_name,employee_Department.name as E_Department from Employee inner join employee_Department on employee.Department_id = employee_Department.id;


create table cricket(crik_id int auto_increment,name varchar(20),primary key(crik_id));
insert into cricket(name)values
("stuart"),("Micheal"),("John"),("Hyden"),("Mike");

create table football(fb_id int auto_increment,name varchar(20),primary key(fb_id));
insert into football (name) values
("stuart"),("John"),("Hyden"),("stieve"),("Nick");

select cricket.name as c_name,crik_id,
football.name as f_name,fb_id
from cricket
inner join football
on cricket.name=football.name;

-- select name, salary,designation
create table employee_info (id int auto_increment,name varchar(20),location varchar(20),salary float,primary key(id));
insert into employee_info (name,location,salary)values
("Tom","delhi",25000),
("Harry","delhi",40000),
("Hannah","Bangalore",50000),
("sneha","Mumbai",39000),
("Arun","Kolkatha",28000),
("vanya","delhi",300000);

create table department1(id int auto_increment,name varchar(20),location varchar(20),designation varchar(20),primary key(id));
insert into department1(name,location,designation)values
("Marketing","delhi","Manager"),
("operation","delhi","TL"),
("sales","Bangakore","executive"),
("Hr","Mumbai","intern"),
("production","kolkatha","sr.Executivr"),
("admin","delhi","admin_manager");

select employee_info.id as id,employee_info.name,employee_info.location,department1.designation
from employee_info
inner join department1
on employee_info.location=department1.location;

#cartesian join
select employee_info .id,employee_info.name,
department1.name,department1.designation
from employee_info,department1;

#outer join --left join
select* from employee_info as E left join department1 as D
on E.id=D.id;

#outer join--right join
select E.id,E.name,E.location,D.name,D.designation
from employee_info as E right join department1 as D
on E.id=D.id; 

#full outer join employeee U department
select E.id,D.name,D.designation
from employee_info as E left join department1 as D
on E.id=D.id

#self join
#query to find out which employees belong to the samecity,A and B are
-- the alias for the same table
select A.location,A.name,B.name
from Employee_info A
inner join Employee_info B
on A.location =B.Location
and A.name>B.name;

select A.location,A.Name,A.salary,A.designation,B.Name,B.salary,B.designation,B.location 
from Employee_Dtls_Info A
inner join Employee_Dtls_Info B
on A.Department=B.Department
and A.name >B.name


create table cricket(crik_id int auto_increment,name varchar(20),primary key(crik_id));
insert into cricket(name)values
("stuart"),("Micheal"),("John"),("Hyden"),("Mike");

create table football(fb_id int auto_increment,name varchar(20),primary key(fb_id));
insert into football (name) values
("stuart"),("John"),("Hyden"),("stieve"),("Nick");

select cricket.name as c_name,crik_id,
football.name as f_name,fb_id
from cricket
inner join football
on cricket.name=football.name;

-- select name, salary,designation
create table employee_info (id int auto_increment,name varchar(20),location varchar(20),salary float,primary key(id));
insert into employee_info (name,location,salary)values
("Tom","delhi",25000),
("Harry","delhi",40000),
("Hannah","Bangalore",50000),
("sneha","Mumbai",39000),
("Arun","Kolkatha",28000),
("vanya","delhi",300000);

create table department1(id int auto_increment,name varchar(20),location varchar(20),designation varchar(20),primary key(id));
insert into department1(name,location,designation)values
("Marketing","delhi","Manager"),
("operation","delhi","TL"),
("sales","Bangakore","executive"),
("Hr","Mumbai","intern"),
("production","kolkatha","sr.Executivr"),
("admin","delhi","admin_manager");

select employee_info.id as id,employee_info.name,employee_info.location,department1.designation
from employee_info
inner join department1
on employee_info.location=department1.location;

#cartesian join
select employee_info .id,employee_info.name,
department1.name,department1.designation
from employee_info,department1;

#outer join --left join
select* from employee_info as E left join department1 as D
on E.id=D.id;

#outer join--right join
select E.id,E.name,E.location,D.name,D.designation
from employee_info as E right join department1 as D
on E.id=D.id; 

#full outer join employeee U department
select E.id,D.name,D.designation
from employee_info as E left join department1 as D
on E.id=D.id

#self join
#query to find out which employees belong to the samecity,A and B are
-- the alias for the same table
select A.location,A.name,B.name
from Employee_info A
inner join Employee_info B
on A.location =B.Location
and A.name>B.name;

select A.location,A.Name,A.salary,A.designation,B.Name,B.salary,B.designation,B.location 
from Employee_Dtls_Info A
inner join Employee_Dtls_Info B
on A.Department=B.Department
and A.name >B.name;

select * from Employee_Dtls_Info;
select Department,Salary from Employee_Dtls_Info where Salary=(select max(Salary) from Employee_Dtls_Info);
select * from Employee_Dtls_Info where Salary < (select avg(Salary) from Employee_Dtls_Info);
select * from Employee_Dtls_Info where DOJ between"2015-01-01"and "2020-12-30" <(select avg(Salary) from Employee_Dtls_Info);

create table Products (P_id int, P_items varchar(20), Sell_Price float,P_type varchar(30));

insert into Products values
(101,"Jwelery",1500,"Luxury"),
(102,"T-Shirts",600,"Not Luxury"),
(103,"Laptop",23000,"Luxury"),
(104,"Table",1200,"Not Luxury"),
(105,"Keyboard",800,"Luxury");

select * from Products;

#creating an order table and inserting some records from Products

create table Orders1(O_id int,prod_sold varchar(20),selleing_price float);

select * from Orders1;

#we using INSERT as subquery to add records from Products table to order table

insert into Orders1
select P_id,P_Items,Sell_Price from Products where P_id in(select P_id from  Products where Sell_Price>1000);

select *from Orders1;
#update the salary ofemployee by multiplying by 0.35 only for those whose age is >30

update Employee_Dtls_Info set Salary = Salary*0.35 where age in (select age from Employee_Dtls_Info where age is >30);

#delete only those records whose age is >27 using sub query

delete from Employee_Dtls_Info where age in(select age from Employee_Dtls_Info where age>27);

#display records from particular location using subquery

select Name,Department,Location from Employee_Dtls_Info
where E_Id = any(select E_Id from Employee_Dtls_Info where Location ="Shimoga");

create table Employee_info123 (Emp_id int,Emp_Name varchar(20),Job varchar(20),hire date,salary varchar(20),comm int,deptno int);
insert into  Employee_info123 values
(7369,"Smith","clerk",1980-12-17,800,null,20),
(7499,"Allen","salesman",1981-02-20,1600,300,30),
(7521,"Manoj","salesman",1981-02-22,1250,500,30),
(7566,"Adarsh","manager",1981-04-02,2975,null,20),
(7654,"Martin","salesman",1981-09-28,1250,1400,30),
(7698,"Chethan","manager",1981-05-01"


