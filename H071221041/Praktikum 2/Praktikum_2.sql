-- PRAKTIKUM 2
-- no 1
SELECT customerName, city, country
FROM customers
WHERE country = 'USA';

-- no 2
SELECT DISTINCT productVendor 
FROM products;

-- no 3
SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE customerNumber = 124
ORDER BY paymentDate DESC;

-- no 4
SELECT productName AS 'Nama Produk', buyPrice AS 'Harga Beli', quantityInStock AS 'Jumlah Dalam Stok'
FROM products
WHERE quantityinstock >=1000 AND quantityinstock <=3000
ORDER BY buyprice
LIMIT 5, 10;

-- no 5
SELECT firstName AS 'Nama Depan', lastName AS 'Nama Belakang', email
FROM employees
WHERE jobtitle = 'sales Rep'
ORDER BY firstName 
LIMIT 3,10;