use ProductSales
go
create trigger trg_SDelete_Ss
on Sales
after delete 
as
declare @pId int