--T-SQL ile Veritabanındaki tabloları listeleme


Select *from sys.tables
--ya da
Select *from sysobjects Where xtype='U'

