Create Trigger trg_Ps

on Sales
After Insert As
begin
Declare @pId int
Declare @sTotal int
Select @pId=salesProduct, @sTotal=salesTotal from inserted 
Update Products set productTotal=productTotal-@sTotal
where productId=@pId
end