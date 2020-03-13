Select 3 

Select 'Hasan'

Select 3,5,7

Select 'Hasan','Huseyin','GUNES',20

Select *from Kategoriler

Select Adi,SoyAdi from Personeller

Select 3 as Deger

--Bosluk karakteri olan alias atama
Select 1923 [Cumhuriyet Bayrami]

--Bosluk karakteri olan tabloyu sorgulama
Select *from [Satis Detaylari]

--Kolonlarý birleþtirme
Select Adi + ' ' +SoyAdi [Personel Bilgileri] from Personeller
 

 --Farklý tipde kolonlarý birleþtirme
 Select Adi + ' ' + Convert(nvarchar,IseBaslamaTarihi) from Personeller

 Select Adi+ ' ' +CAST(IseBaslamaTarihi as nvarchar) from Personeller