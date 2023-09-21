USE classicmodels;

-- 1 

SELECT customerName, city, country
FROM customers
WHERE country = 'usa';

-- 2

SELECT DISTINCT productVendor
FROM products;

-- 3

SELECT customerNumber, checkNumber, paymentDate, amount
FROM payments
WHERE customerNumber = '124'
ORDER BY paymentDate DESC;

-- 4

SELECT
		productname AS 'nama produk',
		buyprice AS 'harga beli',
		quantityinstock AS 'jumlah dalam stok'
FROM products
WHERE quantityinstock >= 1000 AND quantityinstock <= 3000
LIMIT 5, 10;

-- 5

SELECT
		firstName AS 'nama depan',
		lastName AS 'nama belakang',
		email
FROM employees
WHERE jobTitle = 'sales rep'
ORDER BY firstName ASC
LIMIT 3, 10;

-- 6

SELECT * FROM customers;

SELECT
		customerName AS 'nama pelanggan',
		phone AS 'nomor telepon',
		addressLine1 AS 'alamat utama',
		city AS 'kota',
		creditLimit AS 'kredit limit'
FROM customers
WHERE city = 'madrid'
ORDER BY creditLimit DESC
LIMIT 2;

-- 7

SELECT * FROM products;

SELECT DISTINCT productVendor, productLine, productScale
FROM products
WHERE productLine = 'ships'
ORDER BY productVendor DESC;

-- 8 

SELECT
		productName AS 'nama produk',
		productLine AS 'kategori produk',
		buyPrice AS 'harga beli',
		MSRP AS 'harga jual'
FROM products
WHERE
		productLine = 'vintage cars'
		AND buyPrice < 100
		AND MSRP > 100
ORDER BY MSRP DESC
LIMIT 5;