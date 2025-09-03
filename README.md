# SQL Veri Taban Programlama
# Tablolar
## Kitap 1 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap1%20tablosu.PNG">
---
## Kitap 2 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap2%20tablosu.PNG">
---
## Kitap 3 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap%203%20tablosu.PNG">
## Syntax

| Komut | Ne için kullanılıyor  |
|-------- | ------- |
| Select | veritabanından veri çekmek |
| Update | veritabanında veri güncellemek | 
| Delete | veritabanınndan veri silmek |
| Insert into | veritabanına yeni veri eklemek |
| Create database | yeni bir veritabanı oluşturmak |
| Alter database | veritabanını modifiye etmek |
| Create table | yeni bir tablo oluşturmak |
| Alter table | tabloyu modifiye etmek |
| Drop table | Tablo silmek |
| Create index | index oluşturmak |
| Drop index | index silmek | 

1. Select syntax
```
select column1, column2,...
from table_name
```
- kitap1 tablosunu gösterdi.
```
select * from kitap1
```

---

2. Select Distinct syntax
```
select distinct column1, column2,...
from table_name
```

---

3.Where syntax
```
select column1, column2,...
from table_name
where condition;
```
- kitap1 tablosundaki Nutuk kitabını gösterdi
```
select * from kitap1
where kitapAd = 'Nutuk';
```

---

4. Order by syntax
- Kitap renklerini alfabetik sıraya göre sıraladı.
```
select * from kitap2
order by kitapRenk
```
- asc : a'dan Z'ye alfabetik sıraya göre sıraladı.
```
select * from kitap3
order by kitapDerece asc
```
- desc: z'den a'ya ters alfabetik şekilde sıraladık.
```
select * from kitap3
order by kitapDerece desc
```
- order by birden fazla sütun
```
select * from kitap2
order by KitapRenk, KitapPuan
```
- hem asc hem de desc kullanımı
```
select * from kitap2
order by KitapRenk asc, KitapOzet desc
```

---

5. AND & OR & NOT
- kitap 2 tablosundaki kitap türü roman ve kitap puanı 10 olan kitabı listeledi.
```
select * from kitap2
where KitapTur = 'Roman' AND KitapPuan = 10 
```

```
select column1, column2,....
from table_name
where not condition;
```
- kitap 2 tablosundaki kitap türü roman olmayan kitapları listeledi.
```
select * from kitap2
where not KitapTur = 'Roman'
```

- kitap 1 tablosundaki kitap sayfası 10'dan 100E kadar olmayan kitapları liseteledi.
```
select * from kitap1
where KitapSayfa not between 10 and 100
```

- kitap 1 tablosundaki kitap adı 'A' harfi ile başlamayan kitapları listeledi.
```
select * from kitap1
where KitapAdi not like 'A%'
```

---

6. Insert into
- kitap 3 tablosuna kitap rengi mor olan, kitap baskı 52 olan, kitap derecesi i olan kitabı ekledik.
```
insert into kitap3 (KitapRengi, KitapBaski, KitapDerece)
values('Mor', 52, 'i')
```

---

7. NULL Values
```is null
select column_name
from table_name
where column_name is null;
```

```is not null
select column_names
from table_name
where column_name is not null;
```

- kitap 2 tablosunda kitap özetlerin hiçbiri null olmadığı için çıktıda herhangi bir kitap gösterilmedi
```
select KitapAd, KitapTur, KitapOzet
from kitap2
where KitapOzet is null
```

8. Update syntax
```
update table_name
set column1 = value1, column2 = value2,....
where condition;
```

- kitap 2 tablosundaki kitap puanı 5 olan kitabın kitap adını siyah lale, kitap türünü roman olarak düzenledik.
```
update kitap2
set KitapAd = 'Siyah Lale', KitapTur = 'Roman'
where KitapPuan = 5
```

9. Delete syntax
```
delete from table_name where conditions
```

- kitap puanı 5 olan kitabı tablodan sildik
```
delete from kitap2 where kitapPuan = 5
```

- bütün kitap 3 tablosunu sildik
```
delete from kitap3
```

10. Select Top syntax

- kitap 1 tbalosundaki ilk 5 satırı gösterdi.
```
select top 5 * from kitap1
```

11. SQL Toplam Fonskiyonları
| Fonksiyonlar | Ne işe yarıyor |
| ------------ | -------------- |
| MIN() | seçilen sütundaki en küçük değeri döndürür |
| MAX() | seçilen sütundaki en büyük değeri döndürür |
| COUNT() | seçilen satırdaki verilerin toplam sayısını döndürür |
| SUM() | seçilen sütundaki sayısal değerlerin toplamını döndürür |
| AVG() | seçilen sütundaki sayısal değerlerin ortalamasını döndürür |

12. MIN & MAX syntax

```
select MIN(column_name)
from table_nmae
where condition
```

```
select MAX(column_name)
from table_nmae
where condition
```

- kitap 1 tablosundaj-ki kitap fiyatı en az olan kitabı listeledik.
```
select min(kitapFiyat) as SmallestPrice
from kitap1
```

