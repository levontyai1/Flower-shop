drop table ��������
drop table �����
drop table �������
drop table ������
drop table ������
drop table ���������
drop table ����
create table ��������
(
id�������� int not null primary key,
���������_������ money not null,
���_��_������ int not null,
����_������ date not null,
������_��������� varchar(100),

)
create table �����
(
id����� int not null primary key,
�������� varchar(100) not null,
id������ int not null,
id������ int not null,
id��������� int not null,
id���� int not null,
�������� varchar(500) not null,

)
create table �������
(
id������� int not null primary key,
����_������� date not null,
���_��_������� int not null,
���������� varchar(100) not null,
���������_������ money null,
id�������� int not null,

)
create table �����_�����
(
id�������� int not null,
id����� int not null,

)
create table ������
(
id������ int not null primary key,
������������ varchar(50) not null,

)
create table ������
(
id������ int not null primary key,
������������ varchar(50),

)
create table ���������
(
id��������� int not null primary key,
������������ varchar(50),

)
create table ����
(
id���� int not null primary key,
������������ varchar(50),

)
alter table �������
add constraint FK_1 foreign key(id��������) references ��������(id��������)
alter table �����_�����
add constraint FK_2 foreign key(id�����) references �����(id�����)
alter table �����_�����
add constraint FK_3 foreign key(id��������) references ��������(id��������)
alter table �����
add constraint FK_4 foreign key(id������) references ������(id������)
alter table �����
add constraint FK_5 foreign key(id������) references ������(id������)
alter table �����
add constraint FK_6 foreign key(id���������) references ���������(id���������)
alter table �����
add constraint FK_7 foreign key(id����) references ����(id����)
go
insert into �������� values
(1,1000,25000,'23.07.2021','������'),
(2,4000,20000,'28.06.2021','�������'),
(3,3000,30000,'15.04.2020','�����'),
(4,2000,27234,'07.05.2018','������')
go
insert into ������� values
(1,'07.05.2022',15,'������',null,1),
(2,'23.07.2022',9,'������',null,2),
(3,'28.06.2022',101,'�����',null,3),
(4,'15.04.2022',10,'���������',null,4)
go
insert into ������ values
(1,'�����������'),
(2,'����������')
go
UPDATE �������
   SET ���_��_������� = 11
WHERE id������� = 3
go
DELETE FROM �������
WHERE ���������� = '���������'
go
select ���������_������ * ���_��_������� as ���������_������, ���_��_�������, ����������
from ��������, �������
where ���_��_������� < ���_��_������ and ��������.id�������� = �������.id��������
go