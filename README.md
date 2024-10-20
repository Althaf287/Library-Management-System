# Library-Management-System
sql Project Overview The Library Management System (LMS) is a comprehensive solution designed to manage library operations efficiently. It keeps track of books, their availability, customer registrations, and employee details, ensuring smooth management of library resources.
## Features
Branch Management: Track library branches, their addresses, and contact information.
Employee Management: Manage employee details including roles and salaries.
Book Management: Maintain a catalog of books, including their status and rental prices.
Customer Management: Handle customer registrations and track their borrowing history.
Issue and Return Tracking: Record the issuance and return of books, along with related dates.
Database Structure
The database named library contains the following tables:

## Branch

branch_no (Primary Key)
manager_id
branch_address
contact_no

## Employee

emp_id (Primary Key)
emp_name
position
salary
branch_no (Foreign Key)

## Books

ISBN (Primary Key)
book_title
category
rental_price
status (Available/Not Available)
author
publisher

## Customer

customer_id (Primary Key)
customer_name
customer_address
reg_date

## IssueStatus

issue_id (Primary Key)
issued_cust (Foreign Key)
issued_book_name
issue_date
isbn_book (Foreign Key)

## ReturnStatus

return_id (Primary Key) #
return_cust (Foreign Key)
return_book_name
return_date
isbn_book2 (Foreign Key)
## SQL Queries
### This project includes a set of SQL queries to retrieve and manipulate data:

1.Retrieve the book title, category, and rental price of all available books.
2.List employee names and their respective salaries in descending order.
3.Retrieve book titles and corresponding customers who have issued those books.
4.Display the total count of books in each category.
5.Retrieve employee names and positions for those with salaries above Rs. 50,000.
6.List customer names registered before 2022-01-01 who have not issued any books.
7.Display branch numbers and total count of employees in each branch.
8.Display names of customers who issued books in June 2023.
9.Retrieve book titles containing 'history'.
10.Retrieve branch numbers with more than 5 employees.
11.Retrieve names of branch managers and their respective addresses.
12.Display names of customers who have issued books with a rental price higher than Rs. 25. 
