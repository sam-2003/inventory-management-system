# inventory-management-system
A simple inventory management system using MySQL
## Project Overview
This project is an inventory management system developed using MySQL. It includes tables for Suppliers, Products, and Orders, with realistic data to simulate real-world scenarios.

## Database Schema
The `inventory management system.sql` file contains all the necessary SQL commands to create and populate the database.

### Create and Use the Database
You can find the SQL script to create and populate the database in this repository:

- [inventory management system.sql](inventory management system.sql): Script to create the database and tables and insert data.

## How to Use
1. **Download the SQL script file:**
   - Clone the repository or download the `inventory management system.sql` file directly from GitHub.

2. **Execute the script in your MySQL client:**
   - Open MySQL Workbench or any other MySQL client.
   - Run the `inventory management system.sql` script to create the database, tables, and insert data.

3. **Run sample queries to see the results:**
   ```sql
   SELECT * FROM Products;
   SELECT * FROM Orders WHERE OrderDate BETWEEN '2023-07-20' AND '2023-07-24';

