use [DA P#1]


bulk insert Payments
from '[FOLDER_PATH]Payments.xls'
with (firstrow=2,fieldterminator =',',rowterminator='\n')

bulk insert Customers
from '[FOLDER_PATH]\Customers.xls'
with (firstrow=2,fieldterminator =',',rowterminator='\n')

bulk insert Sales
from '[FOLDER_PATH]\Sales.xls'
with (firstrow =2, fieldterminator = ',',rowterminator='\n')

bulk insert Products
from '[FOLDER_PATH]\Products.xls'
with (Firstrow=2, fieldterminator = ',', rowterminator='\n')

select* from Customers
select * from Payments
select * from Sales
select * from Products
