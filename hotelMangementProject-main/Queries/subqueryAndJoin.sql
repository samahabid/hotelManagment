--Select price and category of all rooms at the garden hotel
Select R_price , R_category
From Room as r
Where r.H_ID = ( select H_ID  from hotel where H_name = 'garden hotel');


--(2)   What is the lost income from unoccupied rooms at the Garden Hotel?
SELECT SUM( R_price )  as  lost_income , COUNT(ro.RES_no) as unoccupied_rooms  FROM  room ro 
WHERE  ro.R_number  NOT  IN
(SELECT ro.R_number FROM reservation  re , room  ro , hotel  h
WHERE (date_in <= getdate() AND
Date_out >= getdate()) AND
re.res_no = ro.RES_no  AND ro.H_ID = 'd7362b28603b1c20454c6b3ecaa91fca') AND ro.H_ID = 'd7362b28603b1c20454c6b3ecaa91fca';


