use ProductSales
go

create trigger trg_delete
on Sales
after Delete as

Declare @pId int
Declare @sTotal int

Select @pId=salesProduct, @sTotal=salesTotal from deleted
Update Products set productTotal=productTotal+@sTotal
where productId=@pId
