-- Write the query to return the email,first-name, last_name & Genre of all rockmusic listners . Return your
-- list ordered alphabetically by email starting with a

SELECT DISTINCT email,first_name , last_name
FROM customer
JOIN invoice ON customer.customer_id =invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line .invoice_id
WHERE track_id IN (
	SELECT track_id FROM track 
	JOIN genre ON track.genre_id = genre.genre_id
	WHERE genre.name = 'Rock'
)
ORDER BY email ASC;


--LET'S Invite the artists who have written the most rock music in our dataset.
--Write a query that returns the arists name and total track count of the top 10 rock bands



SELECT artist.name  , artist.artist_id , count(artist.artist_id) AS number_of_songs
FROM TRACK
JOIN album ON album.album_id = track.album_id
JOIN artist ON artist.artist_id = album.artist_id
JOIN genre ON genre.genre_id = track.genre_id
WHERE genre.name = 'Rock'
GROUP BY artist.artist_id
ORDER BY number_of_songs DESC
LIMIT 10

 
 --Return all the track names that have a song length longer than the average song length.
 -- Return the name and milliseconds for each track . ordeer by the song length with the longest songs listed first 



 SELECT AVG(milliseconds)
 FROM track

 
SELECT name , milliseconds 
FROM track
WHERE milliseconds >  393599.212103910933
 ORDER BY milliseconds DESC;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 