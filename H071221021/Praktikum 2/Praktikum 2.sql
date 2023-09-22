-- Nomor 1
SELECT customerName, city, country FROM customers 
where country = 'USA';

-- Nomor 2
SELECT DISTINCT productvendor FROM products;

-- Nomor 3
SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE customerNumber = '124'
ORDER BY paymentdate DESC;

-- Nomor 4
SELECT * FROM products;
SELECT productName AS 'Nama produk', buyPrice AS 'harga beli', quantityInStock AS 'Jumlah dalam stok'
FROM products
WHERE quantityInstock > 1000 AND quantityInStock < 3000
ORDER BY buyPrice
LIMIT 5,10;

-- Nomor 5
SELECT * FROM employees;
SELECT firstName AS 'Nama Depan', lastName AS 'Nama Belakang', email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY firstName DESC
LIMIT 3, 10;

-- nomor 6
SELECT * FROM products;
SELECT DISTINCT productVendor, productLine, productScale
FROM products
WHERE productLine = 'Ships'
ORDER BY productName DESC;