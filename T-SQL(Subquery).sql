--SubQuery(Ýçe içe sorgular)

Select s.SatisID, s.SatisTarihi from Personeller p Inner Join Satislar s on p.PersonelID=s.PersonelID Where Adi='Nancy'


Select SatisID,SatisTarihi from Satislar Where PersonelID=(Select *from Personeller Where Adi='Nancy')

Select Adi from Personeller Where Adi= (Select Adi from Personeller Where UnvanEki='Dr')


