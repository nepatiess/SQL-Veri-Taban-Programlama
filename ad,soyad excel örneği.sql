declare @i as int = 0
declare @isim as varchar(100)
declare @cinsiyet as varchar(1)
declare @soyisim as varchar(100)
declare @doðumtarihi as date
declare @yaþ as int
declare @yasgrubu as varchar(50)

while @i<10 --10 tane veri ekledi

	begin

	select @isim=isimler ,@cinsiyet=cinsiyet from isimler where id = round(rand()*611,0)
	select @soyisim = soyisim from soyisimler where id = round(rand()*1000,0)
	set @doðumtarihi = dateadd(day,round(rand()*18250,0), '1950-01-01')
	set @yaþ = datediff(year, @doðumtarihi, getdate())

	if @yaþ between 10 and 20
	set @yasgrubu = '20 yaþ altý'

	if @yaþ between 21 and 30
	set @yasgrubu = '21-30 arasý'

	if @yaþ between 31 and 40
	set @yasgrubu = '31-40 arasý'

	if @yaþ between 41 and 50
	set @yasgrubu = '41-50 arasý'

	if @yaþ between 51 and 60
	set @yasgrubu = '51-60 arasý'

	if @yaþ > 60
	set @yasgrubu = '60tan büyük'

	-- select @isim,@soyisim,@cinsiyet, @doðumtarihi, @yaþ, @yasgrubu

	insert into Veri (Ad, Soyad, Cinsiyet,DoðumTarihi,YaþGrubu,yaþ)
	values (@isim,@soyisim,@cinsiyet,@doðumtarihi,@yasgrubu,@yaþ)
	set @i = @i + 1
	end

select * from Veri