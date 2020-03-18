--DML Data Manipulation Language


--Select 
Select *From Personeller


Insert Personeller(Adi,SoyAdi) Values('HasanHuseyin','Gunes')
Insert Personeller Values(--Butun tablo verileri)

--Dikkat 
--Into komutu ile yazýlabilir
Insert Into Personeller(Adi,SoyAdi) Values('Emre','Can')
--not null olan kolonlara boþ býrakýlmayacaklarýndan dolayý mutlaka deger gonderilmedilir
Insert Personeller(Unvan,UnvanEki)Values('a','b')

--Otomatik artan (identity) kolonlara deger gonderilmez

--Tabloda seçilen yahut bütün kolonlara deger gondereceðini belirtip gönderilmezse hata verir
Insert Personeller(Adi,SoyAdi) Values('Gencay')
Insert Personeller Values('Gencay')


Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Corum'),
									      ('Hilmi','Corum'),
									      ('Hilmi','Corum')

--ýnsert komutu ile select sorgusu sonucu gelen verileri farklý tabloya keydetme
--kolon sayýsý ile insert iþlemi yapýlýcak talbounnun kolon sayýsý brirbirine eþit olasý gerekmektedir
Insert OrnekPersoneller Select Adi,SoyAdi from Personeller

--Select Sorgusu sonucu gelen verileri farklý bir tablo oluþturarak kaydetme
Select Adi,SoyAdi Ulke Into OrnekPersoneller2 from Personeller


--Update
Update OrnekPersoneller2 Set Adi='Mehmet'

--Where þartý yazma
Update OrnekPersoneller2 Set Adi='Mehmet' Where Adi='Nancy'

--Update sorgularýnda join yapýlarýný kullanarak birden fazla tablo guncelleme yapmak
Update Urunler Set UrunAdi=k.KategoriAdi from Urunler u Inner Join Kategoriler k  on u.KategoriID=k.KategoriID


--Update sorgusunda subquery ile guncelleme yapmak
Update Urunler Set UrunAdi=(Select Adi from Personeller Where PersonelID=3)



Update Top(30) Urunler Set UrunAdi='x'

Delete From Urunler

Delete From Urunler Where KategoriID<3

--Delete sorgusunda tüm verileir silmenýz identity kolonunu sýfýrlamayacaktýr. Silme iþleminde ilk eklenen veride kalýndýðý yerden id deðeri verilecektir


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


--With Rollup 
--Group by ile gruplanmýþ veri kümesinde ara toplam alýnmasýný saðlar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup


Select KategoriID,UrunID,SUM(TedarikciID)from Urunler 
Group By KategoriID,UrunID  With Rollup

--Having þartýyla beraber rollup
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup Having SUM(Miktar)>100


--With Cube
--Group By ile gruplanmýþ veri kümesinde teker teker toplam alýnmasýný saðlar


Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube


Select KategoriID,UrunID,SUM(TedarikciID) from Urunler Group By KategoriID,UrunID With Cube

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube Having SUM(Miktar)>100



--Personellerin isim ve soyisimlerinin yanýnda Unvan Eki 'Mr.' ise erkek 'Ms.' ise kadýn yazsýn
Select Adi,SoyAdi,
Case
When UnvanEki = 'Mrs.' or UnvanEki='Ms.' Then 'Kadýn'
When UnvanEki = 'Mr.'  Then 'Erkek'
Else UnvanEki
End
From Personeller


Select UrunID,
Case
When BirimFiyati Between 0 and 50 Then 'Cin Mali'
When BirimFiyati Between 50 and 100 Then 'Ucuz'
When BirimFiyati Between 100 and 200 Then 'Normal'
When BirimFiyati >200 Then 'Pahali'
Else
'Belirsiz'
End
from Urunler

