USE classicmodels

-- No1
SELECT customerName, city, country 
FROM customers 
WHERE country = "USA";

-- No2
SELECT DISTINCT productVendor 
FROM products;

-- No3
SELECT customerNumber, checkNumber, paymentDate, amount 
FROM payments 
WHERE customerNumber = 124
ORDER BY paymentDate DESC;

-- No4
SELECT productName AS "Nama produk", buyPrice AS "Harga beli", quantityInStock AS "Jumlah dalam stok" 
FROM products 
WHERE quantityInStock >= 1000 and quantityInStock <= 3000 
ORDER BY buyPrice
LIMIT 5, 10;

-- Soal Tambahan
-- No2
SELECT customerName AS "Nama Pelanggan", phone AS "NO telp", addressLine1 AS "alamat utama", city AS "kota", creditLimit AS "limit credit"
FROM customers
WHERE city = "Madrid"
ORDER BY creditLimit DESC
LIMIT 2

-- No4
SELECT productName AS "nama produk", productCode AS "kategori produk", buyPrice AS "Harga beli", MSRP AS "harga jual"
FROM products
WHERE buyPrice < 100 AND MSRP < 100
ORDER BY MSRP desc
LIMIT 5;