--List full details of all hotels.
SELECT * FROM hotel;

--List full details of all hotels which description includes nestled in the city of lakes.
SELECT * FROM hotel
WHERE H_description LIKE '%nestled in the city of lakes%' ;

--List C_Fname and C_Lname of all customers in PRT, alphabetically ordered by C_Fname.
SELECT C_Fname , C_Lname
FROM Customer
Where C_country LIKE 'PRT'
ORDER BY C_Fname ;

--List Deluex Room with price below 120$ in ascending order of price
SELECT * FROM room WHERE R_price < 120 AND R_description LIKE '%Deluxe Room%'
 ORDER BY R_price;

--List the Reservation for which no_of_rooms more than one.
SELECT * FROM Reservation WHERE no_of_rooms >1
 ORDER BY no_of_rooms ;


-- List E_Fname and E_Lname of all employees whose salary more than 50.000, alphabetically ordered by E_Fname.
SELECT E_Fname , E_Lname
FROM employee
Where E_Salary>70000
ORDER BY E_Fname ;

--select supervisor of employee
select s.* from employee e , employee s 
where e.E_Fname+' '+e.E_Lname=' Angela Hull' and e.SUP_SSN = s.E_SSN

--Update the price of all rooms by 3%.
UPDATE room SET R_price = R_price + R_price*0.03;
select * from room
