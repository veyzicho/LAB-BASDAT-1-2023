-- USE classicmodels
-- 
-- Nomor 1
SELECT customerName, city, country
FROM customers
WHERE country = 'USA';

-- Nomor 2
SELECT DISTINCT productVendor
FROM products;

-- Nomor 3
SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE customerNumber = '124'
ORDER BY paymentDate DESC;

-- Nomor 4
-- SELECT * FROM products;
SELECT productname AS 'Nama Produk', buyprice AS 'Harga Beli', quantityinstock AS 'Jumlah dalam stok'
FROM products
WHERE quantityinstock > 1000 AND quantityinstock < 3000
ORDER BY buyprice 
LIMIT 5, 10;

-- Nomor 5
-- SELECT * FROM products
SELECT firstname AS 'Nama Depan', lastName AS 'Nama Belakang', email 
FROM employees
WHERE jobtitle = 'Sales Rep'
ORDER BY firstname 
LIMIT 3, 10;

-- Nomor 6
-- SELECT * FROM customers
SELECT customername AS 'Nama Pelanggan', phone AS 'NO telp', addressLine1 AS 'alamat utama', city 'Kota', creditLimit AS 'limit credit'
FROM customers
ORDER BY creditlimit DESC
LIMIT 2;

-- Nomor 7
-- SELECT * FROM products 
SELECT DISTINCT productVendor, productline, productscale
FROM products
WHERE productline = 'Ships'
ORDER BY productVendor DESC;


-- Nomor 8
SELECT productName AS 'nama produk', productline AS 'kategori produk', buyprice AS 'Harga Beli', MSRP AS 'Harga Jual'
FROM products
WHERE buyprice < 100 AND MSRP > 100
ORDER BY MSRP DESC
LIMIT 5;

