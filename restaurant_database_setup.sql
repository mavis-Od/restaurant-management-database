-- ==========================================
-- RESTAURANT MANAGEMENT SYSTEM DATABASE SCHEMA
-- Database: Oracle SQL
-- ==========================================

-- 1. RESTAURANT TABLE
CREATE TABLE Restaurant(
    Restaurant_id VARCHAR2(20) PRIMARY KEY,
    restaurant_name VARCHAR2(30),
    Restaurant_address VARCHAR2(50)
);

INSERT INTO Restaurant VALUES(
    'R001', 'Mavis Delight Restaurant', 'no25, Adokplo Street Ugbowo Benin-City, Edo-State'
);


-- 2. SEAT TABLE (Table Inventory)
CREATE TABLE SeatTable(
    table_id VARCHAR2(10) PRIMARY KEY,
    table_number NUMBER
);

INSERT INTO SeatTable VALUES('T001', 1);


-- 3. STAFF TABLE
CREATE TABLE Re_Staff(
    Staff_id VARCHAR2(10) PRIMARY KEY,
    restaurant_id VARCHAR2(20),
    Staff_name VARCHAR2(30),
    Staff_Position VARCHAR2(30),
    Gender VARCHAR2(10),
    Salary NUMBER,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);


-- 4. CUSTOMER TABLE
CREATE TABLE Re_Customer(
    Customer_id VARCHAR2(10) PRIMARY KEY,
    customer_name VARCHAR2(30),
    Gender VARCHAR2(10),
    phone_number NUMBER,
    Email_Address VARCHAR2(50)
);


-- 5. MENU ITEM TABLE
CREATE TABLE Menu_Item(
    menu_item_id VARCHAR2(10) PRIMARY KEY,
    item_name VARCHAR2(30),
    item_description VARCHAR2(50),
    item_price NUMBER
);


-- 6. ORDERS TABLE (Linked to Customer, Table, and Staff)
CREATE TABLE Orders(
    Order_id VARCHAR2(10) PRIMARY KEY,
    Customer_id VARCHAR2(10),
    table_id VARCHAR2(10),
    staff_id VARCHAR2(10),
    order_date TIMESTAMP,
    total_amount NUMBER,
    FOREIGN KEY (Customer_id) REFERENCES Re_Customer(Customer_id),
    FOREIGN KEY (table_id) REFERENCES SeatTable(table_id),
    FOREIGN KEY (staff_id) REFERENCES Re_Staff(Staff_id)
);


-- 7. ORDER ITEMS TABLE (Line items per order)
CREATE TABLE Order_items(
    order_item_id VARCHAR2(10) PRIMARY KEY,
    order_id VARCHAR2(10),
    menu_item_id VARCHAR2(10),
    item_Quantity NUMBER,
    item_price NUMBER,
    FOREIGN KEY (order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (menu_item_id) REFERENCES Menu_Item(menu_item_id)
);


-- 8. PAYMENT TABLE
CREATE TABLE Item_Payment(
    payment_id VARCHAR2(10) PRIMARY KEY,
    order_id VARCHAR2(10),
    order_amount NUMBER,
    payment_method VARCHAR2(20),
    payment_date TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(Order_id)
);