

IF EXISTS (SELECT * FROM Employees WHERE Name = 'Jane Doe')
   BEGIN
         PRINT 'Employee Is exists in the Employees table ......';
    END

ELSE
   BEGIN    
         PRINT 'Employee IS does not exist in the Employees table.';
    END 



IF NOT EXISTS (SELECT * FROM Employees WHERE Name = 'Sander Bos')
   BEGIN
         PRINT 'Employee IS does not exist in the Employees table.';
    END

ELSE
   BEGIN    
         PRINT 'Employee Is exists in the Employees table ......';
    END
