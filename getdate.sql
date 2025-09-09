use kitaplar
declare @i as int = 0 
while @i < 10
begin
	insert into tarihler(tarih) 
	values (getdate())
	waitfor delay '00:00:01'
set @i += 1
end

select * from tarihler