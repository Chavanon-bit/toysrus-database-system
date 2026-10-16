-- Toys "R" Us — ITCS216 Fundamentals of Database Systems (2025)
-- Reconstructed verbatim in SQL logic from the team report, PDF pages 33–36.
-- Queries 21–25 are credited to Chavanon Opaspakkthon in the report.
-- NOT the recovered original source file. Not independently re-executed.

-- Query 21: Products starting with 'S' and price > 20
SELECT product_name, product_price
FROM product
WHERE product_name like 'S%' AND product_price > 20
ORDER BY product_price;

-- Query 22: Customer name and account age
SELECT concat(first_name, ' ', last_name) AS customer_name,
TIMESTAMPDIFF(YEAR, record_creation_date, CURDATE()) AS account_age
FROM customer;

-- Query 23: Count purchase orders for employees with more than 3 POs
SELECT e.employee_id, e.first_name, e.last_name, count(p.po_id) AS "num of PO"
FROM purchase_order p
INNER JOIN employee e ON e.employee_id = p.employee_id
GROUP BY employee_id HAVING count(po_id) > 3;

-- Query 24: Customer name and expected delivery date
SELECT concat(c.first_name, ' ', c.last_name) AS customer_name, o.expected_delivery
FROM customer c
INNER JOIN `order` o ON o.customer_id = c.customer_id;

-- Query 25: Customer ID, name, and order status
SELECT c.customer_id, concat(c.first_name, ' ', c.last_name) AS customer_name, o.order_status
FROM customer c
LEFT JOIN `order` o ON o.customer_id = c.customer_id;
