------------------------CONTINUE--------------------------------
print '---------------------------------'
print '1le 10 aras�ndaki say�lardan 7 hari� karesini alan'
-- 1le 10 aras�ndaki say�lardan 7 hari� karesini als�n
declare @num int
set @num = 1
while(@num<=10)
begin
if (@num = 7)
begin
set @num += 1
continue
end
print cast(@num as varchar(10)) + ' Karesi: ' + cast(@num * @num as varchar(3))
set @num += 1
end 