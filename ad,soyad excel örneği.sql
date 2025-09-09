declare @i as int = 0
declare @isim as varchar(100)
declare @cinsiyet as varchar(1)
declare @soyisim as varchar(100)
declare @do�umtarihi as date
declare @ya� as int
declare @yasgrubu as varchar(50)

while @i<10 --10 tane veri ekledi

	begin

	select @isim=isimler ,@cinsiyet=cinsiyet from isimler where id = round(rand()*611,0)
	select @soyisim = soyisim from soyisimler where id = round(rand()*1000,0)
	set @do�umtarihi = dateadd(day,round(rand()*18250,0), '1950-01-01')
	set @ya� = datediff(year, @do�umtarihi, getdate())

	if @ya� between 10 and 20
	set @yasgrubu = '20 ya� alt�'

	if @ya� between 21 and 30
	set @yasgrubu = '21-30 aras�'

	if @ya� between 31 and 40
	set @yasgrubu = '31-40 aras�'

	if @ya� between 41 and 50
	set @yasgrubu = '41-50 aras�'

	if @ya� between 51 and 60
	set @yasgrubu = '51-60 aras�'

	if @ya� > 60
	set @yasgrubu = '60tan b�y�k'

	-- select @isim,@soyisim,@cinsiyet, @do�umtarihi, @ya�, @yasgrubu

	insert into Veri (Ad, Soyad, Cinsiyet,Do�umTarihi,Ya�Grubu,ya�)
	values (@isim,@soyisim,@cinsiyet,@do�umtarihi,@yasgrubu,@ya�)
	set @i = @i + 1
	end

select * from Veri