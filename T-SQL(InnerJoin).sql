use Northwind

Select p.PersonelID , s.MusteriID from Personeller p,Satislar s


--Hangi personel hangi sat��lar� yapm��t�r
Select *from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID


--Hangi urun hangi kategoride
Select u.UrunAdi,k.KategoriAdi from Urunler u Inner Join Kategoriler k on u.KategoriID=k.KategoriID


--Where komutu kullan�m�

--Beverages kategorisindeki �r�nler(Urunler kategori)
Select u.UrunAdi from Urunler u   Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where k.KategoriAdi='Beverages'



--Beverages kategorisindeki urunlerimin say�s� kact�r(Urunler,Kategoriler)
Select COUNT(u.UrunAdi) from Kategoriler k Inner Join Urunler u on k.KategoriID=U.KategoriID
Where k.KategoriAdi='Beverages'



--Seafood kategorisindeki �r�nlerin listesi (Urunler,kategoriler)
Select u.UrunAdi from Kategoriler k Inner Join Urunler u on k.KategoriID=u.KategoriID
Where k.KategoriAdi='Seafood'


--hangi sat��� hangi �al��an�m yapm��t�r(Sat��lar Personel)
Select s.SatisID,p.Adi+' '+p.SoyAdi from Satislar s Inner Join Personeller p on s.PersonelID=p.PersonelID

--Faks numaras� "null" olmayan tedarik�ilerinde al�nm�� �r�nler nelerdir 
Select *from Urunler u Inner Join Tedarikciler t on u.TedarikciID=t.TedarikciID Where
t.Faks <> 'Null'

Select *from Urunler u Inner Join Tedarikciler t on u.TedarikciID=t.TedarikciID Where
T.Faks is not null



--1997 y�l�ndan sonra Nancy nin sat�� yapt��� firmalar�n isimleri: (1997 dahil)
--(Musteriler,Satislar,Personeller)
Select *from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID Inner Join 
Musteriler m on s.MusteriID=m.MusteriID Where p.Adi='Nancy'and YEAR(s.SatisTarihi)>1997


--Limited olan teadrik�ilerin al�nm�� seafood kategorisindeki �r�nlerimin 
--toplam sat�� tutar�
---(Urunler,Kategoriler,Tedarik�iler

Select SUM(u.HedefStokDuzeyi* u.BirimFiyati) from Urunler u Inner Join Tedarikciler t on 
u.TedarikciID=t.TedarikciID  Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where t.SirketAdi Like '%Ltd.%' and k.KategoriAdi='Seafood'


--Ayn� tabloyu ili�ikisel birle�tirme

--Personellerimizin ba�l� olarak �al��t��� ki�ileri listele
Select p1.Adi,p2.Adi from Personeller p1 Inner Join Personeller p2 on 
p1.BagliCalistigiKisi=p2.PersonelID


--Hangi personelin (ad� soyad� ile birlikte toplam kac adetlik sat�s yapm�� sat�� adeti 100 den fazla olnalar
--ve personelin ad�n�n ba� harfinin M olan kay�tlar gelsin (Personeller,Satislar)
Select p.Adi+' '+p.SoyAdi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID
Where p.Adi Like 'm%' Group By p.Adi + '  '+p.SoyAdi Having COUNT(SatisID)>100

--Seafood kategorisindeki �r�nlerimin say�s�(Urunler,Kategoriler)
Select k.KategoriAdi,COUNT(u.UrunAdi) from Urunler u Inner Join Kategoriler k on u.KategoriID=k.KategoriID
Where k.KategoriAdi='Seafood' Group By k.KategoriAdi


--Hangi personelim toplam ka� adet sat�� yapm��t�r
Select p.Adi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID Group By p.Adi


--En �ok sat�� yapan personelim
Select top 1 p.Adi,COUNT(s.SatisID) from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID
Group By p.Adi order by  Count(s.SatisID) desc


--Ad�nda "a" harfi olan personellerin sat�� id si 10500 den b�y�k olan sat��lar�n�n toplam tutar�n� (miktar*birimfiyat) ve 
--bu sat��lar�n hangi tarihte ger�ekle�tir�ini listele Personeller Satislar Satis Detaylar�

Select SUM(sd.BirimFiyati*sd.Miktar),s.SatisTarihi from Personeller Inner Join Satislar s on p.PersonelID=s.PersonelID 
Inner Join [Satis Detaylari] sd on s.SatisID=sd.SatisID Where Adi Like '%a%' and s.SatisID>10500 Group By
s.SatisTarihi


