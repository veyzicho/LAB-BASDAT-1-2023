-- Nomor 1
SELECT customerName, city, country
FROM customers
WHERE country = 'usa';

-- Nomor 2
SELECT  productVendor
FROM products;

-- Nomor 3
SELECT * FROM payments 
WHERE customerNumber = 124
ORDER BY paymentDate DESC;
 
-- Nomor 4
SELECT productname AS "Nama produk", buyprice AS "Harga beli", 
quantityinstock AS "Jumlah dalam stok"
FROM products
WHERE quantityinstock > 1000 AND quantityinstock < 3000
ORDER BY buyprice
LIMIT 5, 10;

-- Tambahan Soal (Soal 1)
SELECT lastName AS "Nama depan", firstName AS "Nama Belakang", 
email FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY firstName 
LIMIT 3, 10;



