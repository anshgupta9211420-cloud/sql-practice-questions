--Q1: Who is the senior most employee based on the job titile?


SELECT * FROM employee
order BY levels DESC
LIMIT 1

--which countries have the most invoiced?

SELECT billing_country as b , COUNT(*) as c
FROM INVOICE
group by b
ORDER BY c DESC

-- Top 3 Values of invoice

SELECT total FROM invoice
ORDER BY total DESC
limiT 3

--which city has the best customer ?Return both the city name and sum of all invoice totals 


SELECT billing_city ,SUM(total) as invoice_total
FROM invoice
group by billing_city
ORDER BY invoice_total DESC
LIMIT 1

-- who is the best customer ? The person who has spent the most money delared as the best customer.
--Write a Query that returns the person who has sent the most money .



SELECT customer.customer_id , customer.first_name , customer.last_name ,SUM(invoice.total) as total
FROM customer
JOIN invoice 
ON  customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
limit 1