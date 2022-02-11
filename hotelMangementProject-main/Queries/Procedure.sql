create proc find_customer_reservation 
@fname nvarchar(225) ,@lname nvarchar(225) 
as
select * from customer
where C_Fname=@fname and C_Lname=@lname


EXEC find_customer_reservation 'Price' , 'Polly';