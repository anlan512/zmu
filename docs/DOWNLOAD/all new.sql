use master
go
create database zmc
on
(name=zmc_db,
  filename ='e:\SQL-db\zmc_db.mdf',
/*ȷ�����ļ��б������*/
  size=10mb,
  maxsize=50mb,
  filegrowth=5mb)
log on
(name=zmc_lg,
  filename ='e:\SQL-db\zmc_lg.ldf',
  size=5mb,
  maxsize=25mb,
  filegrowth=5mb)
go

use zmc
go
create table  course
(cno char(5) primary key,
 cname char(40),
 cpno char(5),
 ccredit smallint,
 foreign key (cpno) references course(cno)
)
go

use zmc
go
create table  student
(sno char(9) primary key,
 sname char(8) unique,
 ssex  char(2),
 sage smallint,
 sdept char(20)
)
go

use zmc
go
create table  sc
(sno char(9),
 cno char(5),
 grade smallint,
 primary key (sno,cno),
 foreign key (sno) references student(sno),
 foreign key (cno) references course(cno)
)
go

use zmc
go
insert 
into student
values ('st2008101','������','��',20,'�����')
go
insert 
into student
values ('st2008103','��Сƽ','Ů',21,'��Ϣ')
go
insert 
into student
values ('st2010104','������','��',18,'��ѧ')
go
insert 
into student
values ('st2011101','��˾','��',20,'�����')
go
insert 
into student
values ('st2011103','����','��',21,'��Ϣ')
go
insert 
into student
values ('st2012131','����ͯ','Ů',19,'�����')
go
insert 
into student
values ('st2013101','������','Ů',19,'��Ϣ')
go
insert 
into student
values ('st2014101','����','Ů',20,'��ѧ')
go
insert 
into student
values ('st2014121','��ѽƼ','Ů',23,'��Ϣ')
go

use zmc
go
insert 
into course
values ('kc004','��ɢ��ѧ',NULL,6)
go
insert 
into course
values ('kc001','���ݽṹ',NULL,4)
go
insert 
into  course
values ('kc011','���ݿ�','kc001',6)
go
insert 
into  course
values ('kc007','���ԭ��',NULL,4)
go
insert 
into  course
values ('kc019','����ԭ��','kc007',4)
go
insert 
into  course
values ('kc021','רҵӢ��',NULL,4)
go

use zmc
go
insert 
into sc
values ('st2008101','kc004',89)
go
insert 
into sc
values ('st2008101','kc011',90)
go
insert 
into sc
values ('st2008101','kc001',90)
go
insert 
into sc
values ('st2008101','kc007',89)
go
insert 
into sc
values ('st2008103','kc011',95)
go
insert 
into sc
values ('st2008103','kc021',55)
go
insert 
into sc
values ('st2008103','kc004',90)
go
insert 
into sc
values ('st2008103','kc019',80)
go
insert 
into sc
values ('st2008103','kc001',80)
go
insert 
into sc
values ('st2008103','kc007',80)
go
insert 
into sc
values ('st2010104','kc007',85)
go
insert 
into sc
values ('st2010104','kc019',55)
go
insert 
into sc
values ('st2010104','kc021',59)
go
insert 
into sc
values ('st2010104','kc011',60)
go
insert 
into sc
values ('st2010104','kc001',90)
go
insert 
into sc
values ('st2011101','kc001',95)
go
insert 
into sc
values ('st2011101','kc004',90)
go
insert 
into sc
values ('st2011101','kc019',70)
go
insert 
into sc
values ('st2011101','kc021',70)
go
insert 
into sc
values ('st2011103','kc011',95)
go
insert 
into sc
values ('st2011103','kc021',55)
go
insert 
into sc
values ('st2011103','kc004',90)
go
insert 
into sc
values ('st2011103','kc019',80)
go
insert 
into sc
values ('st2013101','kc001',80)
go
insert 
into sc
values ('st2013101','kc007',80)
go
insert 
into sc
values ('st2013101','kc011',95)
go
insert 
into sc
values ('st2013101','kc021',55)
go
insert 
into sc
values ('st2013101','kc004',90)
go
insert 
into sc
values ('st2014101','kc019',80)
go
insert 
into sc
values ('st2014101','kc001',80)
go
insert 
into sc
values ('st2014101','kc007',80)
go