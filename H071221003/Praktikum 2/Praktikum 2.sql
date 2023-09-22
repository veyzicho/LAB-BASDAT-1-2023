USE classicmodels;

-- NOMOR 1
SELECT customername, city, country
FROM customers
WHERE country = 'USA';

-- NOMOR 2
SELECT DISTINCT productvendor 
FROM products;

-- NOMOR 3
SELECT customernumber, checknumber, paymentdate, amount 
FROM payments
WHERE customernumber = 124
ORDER BY paymentdate DESC;

-- NOMOR 4
SELECT productname AS 'Nama produk', buyprice AS 'Harga beli', quantityinstock AS 'Jumlah dalam stock'
FROM products
WHERE quantityinstock > 1000 AND quantityinstock <3000
ORDER BY buyprice 
LIMIT 5,10;

-- NOMOR 5
-- soal tambahan 1
SELECT firstname AS 'nama depan',lastname AS 'nama belakang',email
FROM employees
WHERE jobtitle = 'Sales Rep'
ORDER BY  firstname
LIMIT 3,10

-- soal tambahan 3
SELECT DISTINCT productvendor, productline, productscale 
FROM products
WHERE productline = 'Ships'
ORDER BY productvendor DESC 
