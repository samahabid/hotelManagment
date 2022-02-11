/* How many hotels are there? */
 
       SELECT COUNT(*) as number_of_room FROM hotel;

/* What is the average price of a room? */
       SELECT AVG(R_price) as avg_of_room_price FROM room ;

/* What is the total revenue per night from all double rooms  ? */
       SELECT SUM(R_price) as sum_of_double FROM room WHERE R_category  
       LIKE'%Double%';

-- How many guests have made reservation for August? 
   SELECT sum( no_of_guests ) as numberOFGuests
   FROM Reservation
   WHERE (date_in >= '8/1/2020' AND date_in <='8/31/2020');
 
 
   --How many guests have made reservation for May
   SELECT sum( no_of_guests) as numberOFGuests
   FROM Reservation
   WHERE (date_in >='5/1/2020' AND date_in  <='5/31/2020');
 
/* List the number of rooms in each hotel */
  SELECT  h.H_name as hotel_name , COUNT(r.R_number) AS count 
  FROM room r , hotel h
  where r.H_ID = h.H_ID
  GROUP BY h.H_name ;
  
 
-- List the number of rooms in each hotel in  Udaipur
  select h.H_name as hotel_name , COUNT(r.R_number) AS count
  FROM hotel h , room r
  where r.H_ID = h.H_ID AND h.H_zone LIKE '%Udaipur%'  GROUP BY h.H_name ;

