drop table Магазины
drop table Цветы
drop table Продажи
drop table Классы
drop table Отряды
drop table Семейства
drop table Виды
create table Магазины
(
idМагазины int not null primary key,
Стоимость_Экземп money not null,
Кол_во_Экземп int not null,
Срок_Завоза date not null,
Страна_Происхожд varchar(100),

)
create table Цветы
(
idЦветы int not null primary key,
Название varchar(100) not null,
idКлассы int not null,
idОтряды int not null,
idСемейства int not null,
idВиды int not null,
Описание varchar(500) not null,

)
create table Продажи
(
idПродажи int not null primary key,
Дата_Продажи date not null,
Кол_во_ПродЭкз int not null,
Покупатель varchar(100) not null,
Стоимость_Заказа money null,
idМагазины int not null,

)
create table Магаз_Цветы
(
idМагазины int not null,
idЦветы int not null,

)
create table Классы
(
idКлассы int not null primary key,
Наименование varchar(50) not null,

)
create table Отряды
(
idОтряды int not null primary key,
Наименование varchar(50),

)
create table Семейства
(
idСемейства int not null primary key,
Наименование varchar(50),

)
create table Виды
(
idВиды int not null primary key,
Наименование varchar(50),

)
alter table Продажи
add constraint FK_1 foreign key(idМагазины) references Магазины(idМагазины)
alter table Магаз_Цветы
add constraint FK_2 foreign key(idЦветы) references Цветы(idЦветы)
alter table Магаз_Цветы
add constraint FK_3 foreign key(idМагазины) references Магазины(idМагазины)
alter table Цветы
add constraint FK_4 foreign key(idКлассы) references Классы(idКлассы)
alter table Цветы
add constraint FK_5 foreign key(idОтряды) references Отряды(idОтряды)
alter table Цветы
add constraint FK_6 foreign key(idСемейства) references Семейства(idСемейства)
alter table Цветы
add constraint FK_7 foreign key(idВиды) references Виды(idВиды)
go
insert into Магазины values
(1,1000,25000,'23.07.2021','Россия'),
(2,4000,20000,'28.06.2021','Армения'),
(3,3000,30000,'15.04.2020','Китай'),
(4,2000,27234,'07.05.2018','Япония')
go
insert into Продажи values
(1,'07.05.2022',15,'Андрей',null,1),
(2,'23.07.2022',9,'Михаил',null,2),
(3,'28.06.2022',101,'Левон',null,3),
(4,'15.04.2022',10,'Александр',null,4)
go
insert into Классы values
(1,'Однодольные'),
(2,'Двудольные')
go
UPDATE Продажи
   SET Кол_во_ПродЭкз = 11
WHERE idПродажи = 3
go
DELETE FROM Продажи
WHERE Покупатель = 'Александр'
go
select Стоимость_Экземп * Кол_во_ПродЭкз as Стоимость_Заказа, Кол_во_ПродЭкз, Покупатель
from Магазины, Продажи
where Кол_во_ПродЭкз < Кол_во_Экземп and Магазины.idМагазины = Продажи.idМагазины
go