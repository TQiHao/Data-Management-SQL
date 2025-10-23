# Data-Management-SQL
# Data Management & Security

SQL database implementation and query design, focusing on database creation, modification, and complex query operations.

## Assignment Details
- **Focus**: SQL Database Implementation & Query Design
- **Tasks**: Table Creation, ALTER Statements, and Complex SQL Queries

## Project Description
This assignment involves comprehensive SQL database operations:
- **Task 1**: Database schema creation and modification for special interest group
- **Task 2**: Complex query design and data manipulation for training institute

## Tasks Completed

### Task 1: Special Interest Group Database
- SQL CREATE TABLE statements with constraints
- ALTER TABLE statements for schema evolution
- Foreign key constraints and referential integrity
- Check constraints for data validation
- Sample data insertion and testing

### Task 2: Training Institute Database System
- Complex SELECT queries with subqueries and JOINs
- Data filtering with NOT IN and GROUP BY operations
- Multi-table data retrieval
- INSERT operations for new trainer records
- UPDATE operations for course modifications

## Files
- `CSIT115_Assn2 - 2025S2.pdf` - Assignment specification and requirements
- `A2dbcreate.sql` - Database table creation script with constraints
- `A2dbload.sql` - Database data loading script (to be added)
- `T03_8931914_TohQiHao task1.sql` - Task 1 solutions (table creation and modification)
- `T03_8931914_TohQiHao task2.sql` - Task 2 solutions (complex queries and data manipulation)

## Database Schemas

### Special Interest Group Database
- **project** - Project information with category constraints
- **member** - Member details with gender validation
- **work** - Project-member assignments with hours tracking
- **specialty** - Member expertise areas

### Training Institute Database
- **Trainer** - Instructor information and experience
- **Qualification** - Trainer certifications and credentials
- **Trainee** - Student information and work background
- **Course** - Course catalog and categories
- **OfferedCourse** - Course scheduling and instructor assignments
- **Enrolment** - Student registrations and grades

## SQL Solutions Highlights

### Task 1 Features:
- Complete table creation with PRIMARY KEY, FOREIGN KEY, and CHECK constraints
- ALTER TABLE with ON UPDATE CASCADE for coordinator updates
- Sample data insertion for testing

### Task 2 Queries:
- **Query A**: Find unoffered IT courses using NOT IN subquery
- **Query B**: Identify experienced trainers with GROUP BY and HAVING
- **Query C**: Retrieve April/May courses using MONTH() function and JOIN
- **Query D**: Insert new trainer with multiple qualifications
- **Query E**: Update dessert course levels

## Technologies Used
- SQL (Structured Query Language)
- Database Table Creation (DDL)
- ALTER TABLE Operations with CASCADE constraints
- Complex SELECT Queries with Subqueries and JOINs
- Data Manipulation Language (INSERT, UPDATE)
- Check Constraints and Data Validation
- Foreign Key Constraints and Referential Integrity
- GROUP BY and HAVING Clauses
- Date Functions (MONTH())
- Multi-table Operations

## Author
Toh Qi Hao - Data Management and Security
