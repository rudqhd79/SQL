-----------students----------------

drop table class_student;
drop table student;

create table student(
 id number primary key,
 username varchar2(20),
 univ varchar2(40),
 birth date,
 email varchar2(40)
);

create sequence id_seq
       increment by 1
       start with 1
       minvalue 1
       maxvalue 9999
       nocycle
       nocache
       noorder;
       

insert into student values(id_seq.nextval, '��浿', 'AA���б�', '1999-10-21', 'kim@aa.com');      
insert into student values(id_seq.nextval, '�ڻ��', 'BB���б�', '2000-01-21', 'park@bb.com'); 
insert into student values(id_seq.nextval, '���ְ�', 'CC���б�', '1998-07-11', 'na@cc.com'); 
insert into student values(id_seq.nextval, '��浿', 'BB���б�', '1999-03-10', 'kim@bb.com'); 
insert into student values(id_seq.nextval, 'ȫ�浿', 'AA���б�', '1999-12-10', 'hong@aa.com');

commit;

SELECT * FROM student;


-----------news----------------


drop table news;

create table news (
	aid number primary key,
	title varchar2(100) not null,
	img varchar2(100) not null,
	news_date date,
	content varchar2(255) not null
);

create sequence aid_seq
       increment by 1
       start with 1
       minvalue 1
       maxvalue 9999
       nocycle
       nocache
       noorder;
       
    
       