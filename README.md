# Database Architecture and Relational Querying 
## CS 327E Project 2: Sakila Database Schema Modification and JOINs
### Authors: Kaleb Luna & Madison Pascual

This project focuses on database configuration, schema modification, and data retrieval using an existing MySQL server. 
The original Sakila database was remodeled to fit updated business rules for a subscription-based service with no physical stores or inventory. 
Following these modifications, a new Entity-Relationship Diagram (ERD) was created, and multiple complex SQL queries were written to extract specific data sets.

### Files: 
* project2.sql: The main SQL script containing all database queries. This includes commands to describe the table structures and the 8 required JOIN statements.
* sakila-erd.pdf: An updated Entity-Relationship Diagram generated via Lucidchart that reflects the new schema after four obsolete tables were dropped.
* remodel.sql: The Data Definition Language (DDL) statements used to alter the original Sakila schema and safely remove foreign key constraints.
* results2.pdf: A collection of screenshots verifying the MySQL Workbench setup, the structure of five modified tables, and the successful execution outputs of all SQL queries.

## Breakdown
In project2.sql: 
* Table Descriptions: Commands to describe five specific tables within the modified Sakila schema.
* INNER JOINS (3): Queries filtering data across multiple tables, such as locating Texas customers by joining the ADDRESS and CUSTOMER tables, and matching cities to countries.
* OUTER JOINS (3): Queries using LEFT and RIGHT JOINs to retrieve records like actors whose last names start with 'P' alongside their films, and customers with payments exceeding 11.
* SELF JOINS (2): Queries comparing a table to itself, used here to identify pairs of addresses located in the same city and different movies that share the exact same runtime.
