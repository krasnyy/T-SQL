use Northwind

Select p.PersonelID , s.MusteriID from Personeller p,Satislar s


--Hangi personel hangi satýþlarý yapmýþtýr
Select *from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID


--Hangi urun hangi kategoride
Select u.UrunAdi,k.KategoriAdi from Urunler u Inner Join Kategoriler k on u.KategoriID=k.KategoriID


--Where komutu kullanýmý

--Beverages kategorisindeki ürünler(Urunler kategori)
Select u.UrunAdi from Urunler u   Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where k.KategoriAdi='Beverages'



--Beverages kategorisindeki urunlerimin sayýsý kactýr(Urunler,Kategoriler)
Select COUNT(u.UrunAdi) from Kategoriler k Inner Join Urunler u on k.KategoriID=U.KategoriID
Where k.KategoriAdi='Beverages'



--Seafood kategorisindeki ürünlerin listesi (Urunler,kategoriler)
Select u.UrunAdi from Kategoriler k Inner Join Urunler u on k.KategoriID=u.KategoriID
Where k.KategoriAdi='Seafood'


--hangi satýþý hangi çalýþaným yapmýþtýr(Satýþlar Personel)
Select s.SatisID,p.Adi+' '+p.SoyAdi from Satislar s Inner Join Personeller p on s.PersonelID=p.PersonelID

--Faks numarasý "null" olmayan tedarikçilerinde alýnmýþ ürünler nelerdir 
Select *from Urunler u Inner Join Tedarikciler t on u.TedarikciID=t.TedarikciID Where
t.Faks <> 'Null'

Select *from Urunler u Inner Join Tedarikciler t on u.TedarikciID=t.TedarikciID Where
T.Faks is not null



--1997 yýlýndan sonra Nancy nin satýþ yaptýðý firmalarýn isimleri: (1997 dahil)
--(Musteriler,Satislar,Personeller)
Select *from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID Inner Join 
Musteriler m on s.MusteriID=m.MusteriID Where p.Adi='Nancy'and YEAR(s.SatisTarihi)>1997


--Limited olan teadrikçilerin alýnmýþ seafood kategorisindeki ürünlerimin 
--toplam satýþ tutarý
---(Urunler,Kategoriler,Tedarikçiler

Select SUM(u.HedefStokDuzeyi* u.BirimFiyati) from Urunler u Inner Join Tedarikciler t on 
u.TedarikciID=t.TedarikciID  Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where t.SirketAdi Like '%Ltd.%' and k.KategoriAdi='Seafood'


--Ayný tabloyu iliþikisel birleþtirme

--Personellerimizin baðlý olarak çalýþtýðý kiþileri listele
Select p1.Adi,p2.Adi from Personeller p1 Inner Join Personeller p2 on 
p1.BagliCalistigiKisi=p2.PersonelID


--Hangi personelin (adý soyadý ile birlikte toplam kac adetlik satýs yapmýþ satýþ adeti 100 den fazla olnalar
--ve personelin adýnýn baþ harfinin M olan kayýtlar gelsin (Personeller,Satislar)
Select p.Adi+' '+p.SoyAdi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID
Where p.Adi Like 'm%' Group By p.Adi + '  '+p.SoyAdi Having COUNT(SatisID)>100

--Seafood kategorisindeki ürünlerimin sayýsý(Urunler,Kategoriler)
Select k.KategoriAdi,COUNT(u.UrunAdi) from Urunler u Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where k.KategoriAdi='Seafood' Group By k.KategoriAdi


--Hangi personelim toplam kaç adet satýþ yapmýþtýr
Select p.Adi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID Group By p.Adi


--En çok satýþ yapan personelim
Select top 1 p.Adi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID
Group By p.Adi order by  Count(s.SatisID) desc


--Adýnda "a" harfi olan personellerin satýþ id si 10500 den büyük olan satýþlarýnýn toplam tutarýný (miktar*birimfiyat) ve 
--bu satýþlarýn hangi tarihte gerçekleþtirðini listele Personeller Satislar Satis Detaylarý

Select SUM(sd.BirimFiyati*sd.Miktar),s.SatisTarihi from Personeller Inner Join Satislar s on p.PersonelID=s.PersonelID 
Inner Join [Satis Detaylari] sd on s.SatisID=sd.SatisID Where Adi Like '%a%' and s.SatisID>10500 Group By
s.SatisTarihi


