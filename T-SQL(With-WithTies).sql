--With ties komutu

Select *from [Satis Detaylari]

Select top 6 with ties* from [Satis Detaylari] order by SatisID


--With komutu

With PersonelSatis(id,adi,soyadi,satisId)
as
(
Select p.PersonelID,Adi,SoyAdi,SatisID from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID
)

Select *from PersonelSatis ps Inner Join [Satis Detaylari] sd on ps.satisId=sd.SatisID

