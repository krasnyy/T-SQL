--T-SQL ile Veritabanýndaki tablolarý listeleme


Select *from sys.tables
--ya da
Select *from sysobjects Where xtype='U'

