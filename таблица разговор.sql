create table Разговор 
(
Номер_разговора int primary key not null,
Дата_разговора date not null,
Продолжительность numeric not null,
Код_города numeric not null,
Название_города nvarchar(50) not null,
Тариф nvarchar(50) not null






)