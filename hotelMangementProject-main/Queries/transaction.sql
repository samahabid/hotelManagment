-- update salary transaction 
BEGIN TRY
	BEGIN TRANSACTION UPDATE_SALARY
	update employee set E_Salary = E_Salary * 1.1
	where E_SSN in (select e.E_SSN from employee e , dependant d where e.E_SSN = d.E_SSN AND (d.relation='daughter'or d.relation='son') )
	select * from employee e , dependant d where e.E_SSN = d.E_SSN AND (d.relation='daughter'or d.relation='son')
	COMMIT TRANSACTION UPDATE_SALARY
	PRINT 'updated the table Successfully'
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION UPDATE_SALARY
	PRINT 'Sorry! There is something wrong '
END CATCH
--
