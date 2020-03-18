--Union
--Birden fazla select sorgusu sonucunu tek seferde alt alta göstermenizi saðlar

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler


--Joinler yanyana Unionlar alt alta tablolarý birleþtirir 

--Dikkat edilmesi gereken koþullar
--Union sorgusu sonucu oluþan kolon isimleri üstteki sorugunun kolon isimlerinden oluþur
--Üst sorgudan kaç kolon çkilmisse alttaki sorgudanda o kadar çekilmek zorunda
--Union tekrarlý kayýtlarý getirmez
--Üstteki sorgudan çekilen kolonlarýn tipleriyle alttaki sorgudan çekilen kolonlarýn tipleri ayný olmalý


Select Adi,SoyAdi ,'Personel' from Personeller
Union
Select MusteriAdi,MusteriUnvani, 'Müþteri' from Musteriler





--Union All
--Tekrarlý kayýtlarý getirmek için union all kullanýlýr
Select Adi,SoyAdi from Personeller
Union All
Select Adi,SoyAdi from Personeller