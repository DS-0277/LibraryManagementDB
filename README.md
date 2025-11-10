# LibraryManagementDB

# Project Overview / Purpose
This is the library management database designed to help librarians organize and track information about books.

# Technologies Used
- MySQL (Database Creation)
- MySQL Workbench (ERD Diagram)
- GitHub (Project Hosting)

# Instructions on How to Run SQL Scripts

Step 1: Create and Connect the Database 
1.	Open MySQL Workbench
2.	Connect to your MySQL Server
3.	Create a new schema (database) by running:
CREATE DATABASE library_management_db;
USE library_management_db;

Step 2: Create Table
CREATE TABLE table_name (
column1 datatype constraints,
column2 datatype constraints,
…
);

Step 3: Insert Sample Data
		INSERT INTO table_name (column1, column2, …)
		VALUES (value1, value2, …);

Step 4: Test and Query the Database
1.	Open the file named ‘sample_queries.sql’:
/sql/sample_queries.sql
2.	Execute the queries to test the database design (e.g. List all borrowed books)

# Screenshot/Link to the ERD

<img width="982" height="752" alt="erd_diagram" src="https://github.com/user-attachments/assets/c77b10e8-60fb-43d8-8817-7cbc76df6aab" />
