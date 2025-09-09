------------DATETIME FONKSIYONLARI----------------
-- DATEADD
declare @tarih as datetime
set @tarih = '2019-01-01 16:21:37'
declare @tarih2 as datetime
set @tarih2 = dateadd(month, 6 ,@tarih)
select @tarih, @tarih2

-- DATEDIFF
declare @tarih as datetime
set @tarih = '2019-01-01 16:21:37'
declare @tarih2 as datetime
set @tarih2 = '2025-12-17 16:21:37'

select datediff(year, @tarih, @tarih2)

-- DATEFROMPARTS
declare @tarih as datetime
set @tarih = datefromparts(2020, 8, 21)
select @tarih

-- DATEPART
declare @tarih as datetime
set @tarih = '2019-01-01 16:21:37'
select datepart(month, @tarih)

-- GETDATE
select getdate()
-- 2025-09-09 09:53:19.413