
Delete from PersonellerX Where SoyAdi='Gencay'
Select @@ROWCOUNT
--kac tane eleman etkilenmiþtir onu gonderir

Select* from Personeller
Select @@ROWCOUNT

Insert PersonellerX(Adi,SoyAdi) Values('Gencay','Yýldýz'),
								('Ahmet','Uslu'),
								('Aslý','Gungor'),
Select @@ROWCOUNT