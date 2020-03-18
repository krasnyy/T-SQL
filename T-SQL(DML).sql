--DML Data Manipulation Language


--Select 
Select *From Personeller


Insert Personeller(Adi,SoyAdi) Values('HasanHuseyin','Gunes')
Insert Personeller Values(--Butun tablo verileri)

--Dikkat 
--Into komutu ile yaz�labilir
Insert Into Personeller(Adi,SoyAdi) Values('Emre','Can')
--not null olan kolonlara bo� b�rak�lmayacaklar�ndan dolay� mutlaka deger gonderilmedilir
Insert Personeller(Unvan,UnvanEki)Values('a','b')

--Otomatik artan (identity) kolonlara deger gonderilmez

--Tabloda se�ilen yahut b�t�n kolonlara deger gonderece�ini belirtip g�nderilmezse hata verir
Insert Personeller(Adi,SoyAdi) Values('Gencay')
Insert Personeller Values('Gencay')


Insert Musteriler(MusteriAdi,Adres) Values('Hilmi','Corum'),
									      ('Hilmi','Corum'),
									      ('Hilmi','Corum')

--�nsert komutu ile select sorgusu sonucu gelen verileri farkl� tabloya keydetme
--kolon say�s� ile insert i�lemi yap�l�cak talbounnun kolon say�s� brirbirine e�it olas� gerekmektedir
Insert OrnekPersoneller Select Adi,SoyAdi from Personeller

--Select Sorgusu sonucu gelen verileri farkl� bir tablo olu�turarak kaydetme
Select Adi,SoyAdi Ulke Into OrnekPersoneller2 from Personeller


--Update
Update OrnekPersoneller2 Set Adi='Mehmet'

--Where �art� yazma
Update OrnekPersoneller2 Set Adi='Mehmet' Where Adi='Nancy'

--Update sorgular�nda join yap�lar�n� kullanarak birden fazla tablo guncelleme yapmak
Update Urunler Set UrunAdi=k.KategoriAdi from Urunler u Inner Join Kategoriler k  on u.KategoriID=k.KategoriID


--Update sorgusunda subquery ile guncelleme yapmak
Update Urunler Set UrunAdi=(Select Adi from Personeller Where PersonelID=3)



Update Top(30) Urunler Set UrunAdi='x'

Delete From Urunler

Delete From Urunler Where KategoriID<3

--Delete sorgusunda t�m verileir silmen�z identity kolonunu s�f�rlamayacakt�r. Silme i�leminde ilk eklenen veride kal�nd��� yerden id de�eri verilecektir


--Union
--Birden fazla select sorgusu sonucunu tek seferde alt alta g�stermenizi sa�lar

Select Adi,SoyAdi from Personeller
Union
Select MusteriAdi,MusteriUnvani from Musteriler


--Joinler yanyana Unionlar alt alta tablolar� birle�tirir 

--Dikkat edilmesi gereken ko�ullar
--Union sorgusu sonucu olu�an kolon isimleri �stteki sorugunun kolon isimlerinden olu�ur
--�st sorgudan ka� kolon �kilmisse alttaki sorgudanda o kadar �ekilmek zorunda
--Union tekrarl� kay�tlar� getirmez
--�stteki sorgudan �ekilen kolonlar�n tipleriyle alttaki sorgudan �ekilen kolonlar�n tipleri ayn� olmal�


Select Adi,SoyAdi ,'Personel' from Personeller
Union
Select MusteriAdi,MusteriUnvani, 'M��teri' from Musteriler





--Union All
--Tekrarl� kay�tlar� getirmek i�in union all kullan�l�r
Select Adi,SoyAdi from Personeller
Union All
Select Adi,SoyAdi from Personeller


--With Rollup 
--Group by ile gruplanm�� veri k�mesinde ara toplam al�nmas�n� sa�lar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup


Select KategoriID,UrunID,SUM(TedarikciID)from Urunler 
Group By KategoriID,UrunID  With Rollup

--Having �art�yla beraber rollup
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup Having SUM(Miktar)>100


--With Cube
--Group By ile gruplanm�� veri k�mesinde teker teker toplam al�nmas�n� sa�lar


Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube


Select KategoriID,UrunID,SUM(TedarikciID) from Urunler Group By KategoriID,UrunID With Cube

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID With Cube Having SUM(Miktar)>100



--Personellerin isim ve soyisimlerinin yan�nda Unvan Eki 'Mr.' ise erkek 'Ms.' ise kad�n yazs�n
Select Adi,SoyAdi,
Case
When UnvanEki = 'Mrs.' or UnvanEki='Ms.' Then 'Kad�n'
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

