# Restaurant Management System Database | Oracle SQL

## Project Overview

This project involves designing a relational database for a restaurant management system using Oracle SQL. The database organizes restaurant information, seating inventory, staff, customers, menu items, orders, order items, and payments.

The project demonstrates how relational database design can support restaurant operations, data integrity, and business reporting.

## Business Problem

Restaurants need to manage customer orders, menu prices, seating, staff responsibilities, and payments accurately. Poorly organized records can lead to inconsistent information and make it difficult to track sales and restaurant operations.

This project provides a structured relational database to organize these business activities and support SQL-based reporting.

## Project Objectives

- Design a relational database for restaurant operations.
- Organize information into related tables.
- Define primary keys and foreign key constraints.
- Connect customers, staff, seating, orders, menu items, and payments.
- Support operational and sales analysis through SQL queries.

## Tools and Technologies

- Oracle SQL
- Oracle SQL Developer
- Relational database design
- Entity-Relationship Diagram (ERD)

## Database Tables

The database contains eight tables:

| Table | Purpose |
|---|---|
| Restaurant | Stores restaurant identification and address information. |
| SeatTable | Stores restaurant table identifiers and numbers. |
| Re_Staff | Stores staff details, positions, gender, salary, and restaurant association. |
| Re_Customer | Stores customer names, gender, phone numbers, and email addresses. |
| Menu_Item | Stores menu items, descriptions, and prices. |
| Orders | Records customer orders, assigned tables, staff, dates, and order totals. |
| Order_items | Records the menu items and quantities included in each order. |
| Item_Payment | Records payment amounts, methods, dates, and associated orders. |

## Database Relationships

The database uses primary keys to identify records and foreign keys to connect related tables.

- Restaurant → Re_Staff
- Re_Customer → Orders
- SeatTable → Orders
- Re_Staff → Orders
- Orders → Order_items
- Menu_Item → Order_items
- Orders → Item_Payment

## Example Business Questions

The database can support SQL queries to investigate:

- What is the total sales value of restaurant orders?
- Which menu items sell the most?
- What is the quantity sold for each menu item?
- Which payment methods are used most frequently?
- How much revenue is associated with each payment method?
- Which staff members handle the most orders?
- What are the order histories of individual customers?

These analyses require appropriate records to be inserted into the database.

## Project Files

- `restaurant_database.sql` — database table definitions and sample inserts.
- `restaurant_erd.png` — visual representation of the database structure.

## Skills Demonstrated

Oracle SQL, CREATE TABLE, INSERT statements, primary keys, foreign keys, relational database design, referential integrity, and SQL-based business analysis.

## Conclusion

This project demonstrates the design of a relational database for restaurant operations using Oracle SQL. It provides a foundation for managing orders, menu items, customers, staff, seating, and payments while supporting future reporting and analysis.
