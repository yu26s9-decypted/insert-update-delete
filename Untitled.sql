use northwind;

-- 1. Add a new supplier.
INSERT INTO suppliers
(companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, homepage)
VALUES
(
    'Andy Logistic',
    'Andy',
    'CEO',
    '123 Saint Street',
    'New York City',
    'NY',
    '11213',
    'USA',
    '123-456-7890',
    '123-456-7891',
    'https://www.andylogistic.com'
);
-- 2. Add a new product provided by that supplier
INSERT INTO products
(ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder)
VALUES
(
    'AndyBook Pro 15',
    30,
    8,
    '1 laptop',
    1299.99,
    25,
    5
);
-- 3. List all products and their suppliers.


SELECT last_insert_id();

SELECT * FROM suppliers
INNER JOIN products ON suppliers.supplierid = products.supplierid;
-- 4. Raise the price of your new product by 15%.
UPDATE products
SET unitprice = unitprice * 1.15
WHERE productname = "AndyBook Pro 15";

-- 5. List the products and prices of all products from that supplier.
SELECT * FROM products
INNER JOIN suppliers ON suppliers.supplierid = products.supplierid
WHERE products.supplierid = 30;
-- 6. Delete the new product.
DELETE FROM products
WHERE productname = "AndyBook Pro 15";
-- 7. Delete the new supplier.
DELETE FROM suppliers
WHERE companyname = "Andy Logistic";
-- 8. List all products.
SELECT * FROM products;
-- 9. List all suppliers.
SELECT * FROM suppliers;
