-- Active: 1737821677505@@127.0.0.1@5432@Travel_Agency
CREATE TABLE invoices (
    invoice_no INTEGER PRIMARY KEY,
    customer_name VARCHAR(50),
    amount_aed DECIMAL(10, 2),
    vat_5_percent DECIMAL(10, 2),
    total_amount_aed DECIMAL(10, 2),
    payment_status VARCHAR(20),
    payment_status2 VARCHAR(20),
    due_date DATE,
    cost_price_aed DECIMAL(10, 2),
    profit_aed DECIMAL(10, 2),
    profit_percent DECIMAL(5, 2)
);
INSERT INTO invoices (invoice_no, customer_name, amount_aed, vat_5_percent, total_amount_aed, payment_status, payment_status2, due_date, cost_price_aed, profit_aed, profit_percent) VALUES 
(101, 'Ali Traders', 2000, 100, 2100, 'Paid', 'Cleared', '2025-01-10', 1500, NULL, NULL),
(102, 'Noor LLC', 3500, 175, 3675, 'Unpaid', 'Pending', '2025-01-12', 2500, NULL, NULL),
(103, 'Star Solutions', 1200, 60, 1260, 'Paid', 'Cleared', '2025-01-15', 800, NULL, NULL),
(104, 'Bright Tech', 5000, 250, 5250, 'Unpaid', 'Pending', '2025-01-20', 3500, NULL, NULL),
(105, 'Blue Mart', 800, 40, 840, 'Paid', 'Cleared', '2025-01-22', 600, NULL, NULL),
(106, 'Fresh Foods', 4200, 210, 4410, 'Unpaid', 'Pending', '2025-01-25', 3200, NULL, NULL),
(107, 'Gulf Traders', 7000, 350, 7350, 'Paid', 'Cleared', '2025-01-28', 5000, NULL, NULL),
(108, 'Emirates LLC', 2500, 125, 2625, 'Unpaid', 'Pending', '2025-01-30', 1800, NULL, NULL),
(109, 'Rapid Exports', 1800, 90, 1890, 'Paid', 'Cleared', '2025-02-02', 1300, NULL, NULL),
(110, 'Smart Systems', 6000, 300, 6300, 'Unpaid', 'Pending', '2025-02-05', 4500, NULL, NULL);

SELECT * FROM invoices;

UPDATE invoices
SET profit_aed = total_amount_aed - cost_price_aed,
    profit_percent = (profit_aed / cost_price_aed) * 100;

-- Q1: Select all invoices where the payment status is 'Paid'.
SELECT * FROM invoices WHERE payment_status = 'Paid';

-- Q2: Select all invoices due after 15-Jan-2025.
SELECT * FROM invoices WHERE due_date > '2025-01-15';

-- Q3: Calculate the total amount of 'Paid' invoices.
SELECT SUM(total_amount_aed) AS Paid_Amount FROM invoices WHERE payment_status = 'Paid';

-- Q4: Find the invoice with the highest profit.
SELECT * FROM invoices ORDER BY profit_aed DESC LIMIT 1;

-- Q5: Update the payment status to 'Paid' for invoice no 108.
UPDATE invoices SET payment_status = 'Paid' WHERE invoice_no = 108;

-- Q6: Count the number of 'Unpaid' invoices.
SELECT COUNT(*) FROM invoices WHERE payment_status = 'Unpaid';

-- Q7: Calculate the average profit percentage.
SELECT AVG(profit_percent) FROM invoices;

-- Q8: Select invoices where profit percentage is greater than 30%.
SELECT * FROM invoices WHERE profit_percent > 30;

-- Q9: Calculate the total VAT amount.
SELECT SUM(vat_5_percent) FROM invoices;

-- Q10: Select all invoices where the customer name contains 'LLC'.
SELECT * FROM invoices WHERE customer_name LIKE '%LLC%';

-- Q11: Update the cost price for invoice no 105 to 700.
UPDATE invoices SET cost_price_aed = 700 WHERE invoice_no = 105;

-- Q12: Select all invoices sorted by due date.
SELECT * FROM invoices ORDER BY due_date;

SELECT * FROM invoices 
WHERE payment_status2 = 'Pending'
ORDER BY due_date;

-- Q13: Calculate the total profit for 'Unpaid' invoices.
SELECT SUM(profit_aed) FROM invoices WHERE payment_status = 'Unpaid';

-- Q14: Find the invoice with the lowest amount.
SELECT * FROM invoices ORDER BY amount_aed ASC LIMIT 1;

-- Q15: Select invoices where the due date is in January 2025.
SELECT * FROM invoices WHERE due_date BETWEEN '2025-01-01' AND '2025-01-31';

-- Q16: Calculate the total cost price for all invoices.
SELECT SUM(cost_price_aed) FROM invoices;

-- Q17: Select invoices with a profit greater than 2000 AED.
SELECT * FROM invoices WHERE profit_aed > 2000;

-- Q18: Update the VAT for invoice no 109 to 95.
UPDATE invoices SET vat_5_percent = 95 WHERE invoice_no = 109;

-- Q19: Select all invoices where payment status2 is 'Pending'.
SELECT * FROM invoices WHERE payment_status2 = 'Pending';

-- Q20: Calculate the average total amount for 'Cleared' invoices.
SELECT AVG(total_amount_aed) FROM invoices WHERE payment_status2 = 'Cleared';

-- Q21: Select the top 3 invoices with the highest total amount.
SELECT * FROM invoices ORDER BY total_amount_aed DESC LIMIT 3;

-- Q22: Update the customer name for invoice no 104 to 'Bright Technologies'.
UPDATE invoices SET customer_name = 'Bright Technologies' WHERE invoice_no = 104;

-- Q23: Select all invoices where the cost price is less than 3000 AED.
SELECT * FROM invoices WHERE cost_price_aed < 3000;

-- Q24: Calculate the total amount due for 'Pending' invoices.
SELECT SUM(total_amount_aed) FROM invoices WHERE payment_status2 = 'Pending';

-- Q25: Select invoices where the customer name starts with 'A'.
SELECT * FROM invoices WHERE customer_name LIKE 'A%';

-- Q26: Update the total amount for invoice no 107 to 7400.
UPDATE invoices SET total_amount_aed = 7400 WHERE invoice_no = 107;

-- Q27: Select all invoices where the amount is between 1000 and 5000 AED.
SELECT * FROM invoices WHERE amount_aed BETWEEN 1000 AND 5000;

-- Q28: Calculate the total VAT for 'Cleared' invoices.
SELECT SUM(vat_5_percent) FROM invoices WHERE payment_status2 = 'Cleared';

-- Q29: Select the invoice with the latest due date.
SELECT * FROM invoices ORDER BY due_date DESC LIMIT 1;

-- Q30: Update the payment status2 to 'Cleared' for all 'Paid' invoices.
UPDATE invoices SET payment_status2 = 'Cleared' WHERE payment_status = 'Paid';
	
