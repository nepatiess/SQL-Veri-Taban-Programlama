------------------------CONTINUE--------------------------------
print '---------------------------------'
print '1le 10 arasındaki sayılardan 7 hariç karesini alan'
-- 1le 10 arasındaki sayılardan 7 hariç karesini alsın
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