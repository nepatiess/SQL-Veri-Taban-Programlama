# SQL Veri Taban Programlama
# Tablolar
## Kitap 1 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap1%20tablosu.PNG">

## Kitap 2 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap2%20tablosu.PNG">

## Kitap 3 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap%203%20tablosu.PNG">

## Syntax 

| Komut | Ne için kullanılıyor |
| ----- | -------------------- |
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

---

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

---

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
---

10. Select Top syntax

- kitap 1 tbalosundaki ilk 5 satırı gösterdi.
```
select top 5 * from kitap1
```

---

11. SQL Toplam Fonskiyonları

| Fonksiyonlar | Ne işe yarıyor |
| ------------ | -------------- |
| MIN() | seçilen sütundaki en küçük değeri döndürür |
| MAX() | seçilen sütundaki en büyük değeri döndürür |
| COUNT() | seçilen satırdaki verilerin toplam sayısını döndürür |
| SUM() | seçilen sütundaki sayısal değerlerin toplamını döndürür |
| AVG() | seçilen sütundaki sayısal değerlerin ortalamasını döndürür |

---

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

---

13. Count syntax

```
select count(*)
from table_name
```


```
select count(*)
from table_name
where condition;
```

- Eğer yıldız yerine sütun ismi ile yazılırsa, Null değerler sayılmayacak
```
select count(KitapAd)
from kitap1
where Vergi = 8
```

```
-- Null değerler sayılır
select count(*) as 'Yıldız ile'
from kitap1

-- Null değerler sayılmadı
select count(KitapAd) 'Yıldız olmadan'
from kitap1

```

---

14. Sum syntax
```
select SUM(column_name)
from table_name
where condition;
```

- Kitap 1 tablosundaki kitapların toplam fiyatlarını gösterdi
```
select SUM(KitapFiyat) as 'Kitapların toplam fiyatları'
from kitap1
```

- Kitap 1 tablosundaki kitpların kitap numarasına göre aynı olan numaraların kitap fiyatlarını topladık
```
select kitapNo, SUM(KitapFiyat) as 'Kitapların toplam fiyatları'
from kitap1
group by kitapNo
```

15. Avg syntax

- Null değerler dikkate alınmıyor
```
select avg(Vergi)
from kitap1
```

- Where eklersek:
- Avg fonksiyonu varchar veri tipleri üzerinde çalışmadığından dolayı
```
select avg(convert(int,Vergi)) as 'Ortalama Vergi'
from kitap1
where KitapYayinEvi = 'Ay'
```

---

16. Like syntax
- kitap 2 tablosundaki s harfi ile başlayan kitapları gösterdi
````
select * from kitap2
where KitapAd like 's%'
````

- kitap 2 tablosundkai nutuk kitabının ilk ve 4. harfi ile nutuk kitabını tabloda gösterdi.
````
select * from kitap2
where KitapAd like 'N__u_'
````

- kitap 2 tablosundaki kitap adında l harfi olan kitapları liteledi
````
select * from kitap2
where KitapAd like '%l%'
````

- kitap 2 tablosundaki kitap adı si... ile başlayan kitapları listeledi
````
select * from kitap2
where KitapAd like 'Si%'
````

- kitap 2 tablosundaki kitap adı s ile başlayan ya da kitap türü r ile başlayan kitapları listeledik
````
select * from kitap2
where KitapAd like 's%' or KitapTur like 'r%'
````

- kitap 2 tablosundaki kitap adı ç ile başlayıp u ile biten kitap olan çalıkuşu kitabını listeledik
````
select * from kitap2
where KitapAd like 'ç%u'
````

- kitap 2 tablosundaki kitap adında 'le' olan kitapları listeledi
````
select * from kitap2
where KitapAd like '%le%'
````

- kitap 2 tablosundaki kitap adı de ile başlayıp 9 karakterden oluşan kitap olan deli kurt kitabını listeledi
````
select * from kitap2
where KitapAd like 'de_______%'
````

- kitap 2 tablosundaki kitap adının ikinci harfi a olan kitapları listeledi
````
select * from kitap2
where KitapAd like '_a%'
````

- kitap 1 tablosundaki kitap adları a,b veya l ile başlayan kitapları listeledi
````
select * from kitap1
where KitapAd like '[abl]%'
````

- kitap 1 listesindeki kitap adları a'dan e'ye (a,b,c,ç,d,e) ile başlayan kitapları listeledi ve kitap adlarına göre alfabetik sıraya dizdi
````
select * from kitap1
where KitapAd like '[a-e]%'
order by KitapAd
````

---

17. in operator syntax
````
select column_name(s)
from table_name
where column_name in (value1, value2, ...)
````

- kitap 1 tablosundaki kitap yayın evinin ay ve güneş olan kitapları listeledik
````
select * from kitap1 
where KitapYayinEvi in ('Ay', 'Güneş')
````

- kitap 1 tablosundaki kitap yayın evlerinin ay ve güneş olmayan kitapları listeledik
````
select * from kitap1 
where KitapYayinEvi not in ('Ay', 'Güneş')
````

---

18. between syntax
````
select column_name(s)
from table_name
where column_name between value1 and value2
````

- kitap 1 tablosundaki kitap sayfası 100 ile 200 arasında olan kitapları listeledik
````
select * from kitap1
where KitapSayfa between 100 and 200
````

- kitap 1 tablosundaki kitap puanı 2 ile 7 arasında olmayan kitapları listeledik
````
select * from kitap1
where KitapPuan not between 2 and 7
````

-  kitap 1 tablosundaki vergisi 5 ve 8 arasında olan ve kitap fiyatı 12 ve 56 olan kitapları listeledik
````
select * from kitap1
where Vergi between 5 and 8
and KitapFiyat in (12, 56)
````

- kitap 1 tablosundaki kitap tarihi 2025-02-01 ile 2025-05-01 arasındaolan kitapları listeledik
````
select * from kitap1
where KitapTarih between '2025-02-01 00:00:00' and '2025-05-01 00:00:00'
````

---

20.
