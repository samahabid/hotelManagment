create trigger Del_Reservation on reservation
after Delete 
as
begin 
set nocount on ;
declare @ID varchar(225) ;
select @ID=deleted.res_no
from deleted;
update room set RES_no =NULL
where  RES_no = @ID;
DELETE FROM customer WHERE RES_no=@ID;
end

DELETE FROM reservation WHERE res_no='350';
select * from room;
select * from customer;
select * from reservation;