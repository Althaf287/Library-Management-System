drop database library;
create database Library;
use library;
create table Branch 
(branch_no int primary key,
manager_id int,
branch_address varchar(30),
contact_no varchar(15)
);

select * from branch;
 
 
create table Employee (
Emp_id int primary key,
Emp_name varchar(30),
position varchar(50),
SALARY decimal(10,2),
Branch_no int,
 foreign key (branch_no) references branch(branch_no));
 
select * from employee; 

 create table Books ( ISBN varchar(20) primary key ,
 Book_tittle Varchar(100),
 category varchar(50),
 Rental_price DECIMAL(10,2),
 Status ENUM('YES','NO'),
 Author Varchar(100),
 publisher varchar(100) 
);

select * from  books;

create table Customer (customer_id int primary key,
customer_name varchar(100),
customer_address varchar(255),
reg_date date);

select * from customer;

create table issuestatus (issue_id int primary key,
issued_cust int,
issued_book_name varchar(100),
issue_date date,
isbn_book varchar(20),
foreign key (issued_cust) References customer(customer_id),
foreign key(isbn_book) references books(isbn)
);

select * from issuestatus;

create table Returnstatus(
Return_id int primary key,
Return_cust int,
return_book_name varchar (100),
Return_date Date,
isbn_book2 varchar(20),
foreign key(return_cust) references customer(customer_id),
foreign key(isbn_book2) references Books(isbn));

select * from returnstatus;

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES  
(1, 101, '123 Elm St, City A', '123-456-7890'),  
(2, 102, '456 Oak St, City B', '234-567-8901'),  
(3, 103, '789 Pine St, City C', '345-678-9012'),  
(4, 104, '159 Maple St, City D', '456-789-0123'),  
(5, 105, '753 Cedar St, City E', '567-890-1234'),  
(6, 106, '852 Birch St, City F', '678-901-2345'),  
(7, 107, '369 Walnut St, City G', '789-012-3456'),  
(8, 108, '147 Cherry St, City H', '890-123-4567'),  
(9, 109, '258 Spruce St, City I', '901-234-5678'),  
(10, 110, '369 Ash St, City J', '012-345-6789');  

INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES  
(1, 'Alice Smith', 'Manager', 60000.00, 1),  
(2, 'Bob Johnson', 'Assistant', 40000.00, 2),  
(3, 'Charlie Brown', 'Clerk', 35000.00, 3),  
(4, 'David Wilson', 'Librarian', 45000.00, 4),  
(5, 'Eva Adams', 'Technician', 30000.00, 5),  
(6, 'Frank Moore', 'Manager', 62000.00, 6),  
(7, 'Grace Lee', 'Assistant', 38000.00, 7),  
(8, 'Henry Taylor', 'Clerk', 36000.00, 8),  
(9, 'Isabel Clark', 'Librarian', 47000.00, 9),  
(10, 'Jack Martinez', 'Technician', 31000.00, 10);  

INSERT INTO Books (ISBN, Book_tittle, Category, Rental_Price,  Status, Author, Publisher) VALUES  
('978-3-16-148410-0', 'Book A', 'Fiction', 5.00, 'yes', 'Author A', 'Publisher A'),  
('978-3-16-148411-7', 'Book B', 'Non-Fiction', 6.00, 'yes', 'Author B', 'Publisher B'),  
('978-3-16-148412-4', 'Book C', 'Fiction', 7.00, 'no', 'Author C', 'Publisher C'),  
('978-3-16-148413-1', 'Book D', 'Science', 8.00, 'yes', 'Author D', 'Publisher D'),  
('978-3-16-148414-8', 'Book E', 'History', 9.00, 'no', 'Author E', 'Publisher E'),  
('978-3-16-148415-5', 'Book F', 'Biography', 10.00, 'yes', 'Author F', 'Publisher F'),  
('978-3-16-148416-2', 'Book G', 'Children', 4.00, 'yes', 'Author G', 'Publisher G'),  
('978-3-16-148417-9', 'Book H', 'Fiction', 5.50, 'no', 'Author H', 'Publisher H'),  
('978-3-16-148418-6', 'Book I', 'Mystery', 6.50, 'yes', 'Author I', 'Publisher I'),  
('978-3-16-148419-3', 'Book J', 'Horror', 7.50, 'no', 'Author J', 'Publisher J');  

INSERT INTO Customer (customer_id, customer_name, customer_address, reg_date) VALUES   
(1, 'John Doe', '101 Main St, City A', '2023-01-01'),  
(2, 'Jane Smith', '102 Main St, City B', '2023-01-02'),  
(3, 'Alice Johnson', '103 Main St, City C', '2023-01-03'),  
(4, 'Bob Brown', '104 Main St, City D', '2023-01-04'),  
(5, 'Charlie Black', '105 Main St, City E', '2023-01-05'),  
(6, 'Diana Green', '106 Main St, City F', '2023-01-06'),  
(7, 'Eva White', '107 Main St, City G', '2023-01-07'),  
(8, 'Frank Blue', '108 Main St, City H', '2023-01-08'),  
(9, 'Grace Violet', '109 Main St, City I', '2023-01-09'),  
(10, 'Henry Grey', '110 Main St, City J', '2023-01-10');  

INSERT INTO issuestatus (issue_id, issued_cust, issued_book_name, issue_date, isbn_book) VALUES   
(1, 1, 'Book A', '2023-01-02', '978-3-16-148410-0'),  
(2, 2, 'Book B', '2023-01-03', '978-3-16-148411-7'),  
(3, 3, 'Book C', '2023-01-04', '978-3-16-148412-4'),  
(4, 4, 'Book D', '2023-01-05', '978-3-16-148413-1'),  
(5, 5, 'Book E', '2023-01-06', '978-3-16-148414-8'),  
(6, 6, 'Book F', '2023-01-07', '978-3-16-148415-5'),  
(7, 7, 'Book G', '2023-01-08', '978-3-16-148416-2'),  
(8, 8, 'Book H', '2023-01-09', '978-3-16-148417-9'),  
(9, 9, 'Book I', '2023-01-10', '978-3-16-148418-6'),  
(10, 10, 'Book J', '2023-01-11', '978-3-16-148419-3');  


INSERT INTO Returnstatus (Return_id, Return_cust, return_book_name, Return_date, isbn_book2)   
VALUES   
(1, 1, 'Book A', '2023-01-10', '978-3-16-148410-0'),   
(2, 2, 'Book B', '2023-01-11', '978-3-16-148411-7'),   
(3, 3, 'Book C', '2023-01-12', '978-3-16-148412-4'),   
(4, 4, 'Book D', '2023-01-13', '978-3-16-148413-1'),   
(5, 5, 'Book E', '2023-01-14', '978-3-16-148414-8'),   
(6, 6, 'Book F', '2023-01-15', '978-3-16-148415-5'),   
(7, 7, 'Book G', '2023-01-16', '978-3-16-148416-2'),   
(8, 8, 'Book H', '2023-01-17', '978-3-16-148417-9'),  
(9, 9, 'Book I', '2023-01-18', '978-3-16-148418-6'),   
(10, 10, 'Book J', '2023-01-19', '978-3-16-148419-3'); 

##1 Retrieve the book title, category, and rental price of all available books.

SELECT Book_tittle, Category, Rental_Price FROM Books WHERE Status = 'yes';

##2 List the employee names and their respective salaries in descending order of salary

SELECT EMP_NAME,SALARY FROM EMPLOYEE order by SALARY desc;

##3 Retrieve the book titles and the corresponding customers who have issued those books.

select B.BOOK_TITTLE , C.CUSTOMER_name 
from books B
join ISSUESTATUS I on b.isbn=i.isbn_book
join customer c on I.issued_cust = c.customer_id;

##4 Display the total count of books in each category.

select category , count(*) as total_books 
from books group by category;

##5 Retrieve the employee names and their positions for the employees whose salaries are above Rs. 50,000.

select emp_name , position from employee where salary > 5+0000;

##6 List the customer names who registered before 2022-01-01 and have not issued any books yet.

select customer_name from customer where reg_date <'2022-01-01'
and customer_id not in (select distinct issued_cust from issuestatus);

##7 Display the branch numbers and the total count of employees in each branch.

select branch_no , count(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE 
GROUP BY BRANCH_NO;

##8 Display the names of customers who have issued books in the month of June 2023.


select distinct customer_name
from customer join issuestatus on customer_id = ISSUED_CUST
where month(issue_date)=06 and year(issue_date)=2023;

select distinct customer_name
from customer join issuestatus on customer_id = ISSUED_CUST
where month(issue_date)=01 and year(issue_date)=2023;

##9 Retrieve book_title from book table containing 'history'.

select book_tittle FROM Books WHERE category = 'history';

##10 Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.

SELECT BRANCH_no, COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEE  GROUP BY branch_no
having count(*)>5;

  
SELECT BRANCH_no, COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEE  GROUP BY branch_no
having count(*)>0;

## 11 Retrieve the names of employees who manage branches and their respective branch addresses.


select E.emp_name AS MANAGER_NAME,B.branch_ADDRESS
from employee E
join branch B on E.BRANCH_NO = B.Branch_NO
where E.position='manager';

## 12 Display the names of customers who have issued books with a rental price higher than Rs. 25.

SELECT customer_name from customer 
join issuestatus on customer_id =issued_cust
join books  on isbn_book =isbn
where rental_price> 25;

SELECT customer_name from customer 
join issuestatus on customer_id =issued_cust
join books  on isbn_book =isbn
where rental_price> 7;