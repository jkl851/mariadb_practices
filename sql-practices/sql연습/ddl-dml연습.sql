drop table member;
create table member(
no int(11) not null auto_increment,
email varchar(200) not null,
password varchar(20) not null,
name varchar(100) not null,
department varchar(100),
primary key(no)
);

desc member;
alter table member add juminbunho char(13) not null;
desc member;
alter table member drop juminbunho;
desc member;
alter table member add join_date datetime not null;
desc member;
alter table member change department department varchar(100) not null;
desc member;
alter table member add self_intro text;
desc member;

delete from member;

-- insert
insert
	into member
    values(null, 'jkl851@naver.com', password('1234'), '김민철1', '개발팀1', now(), null);
select * from member;

insert
	into member(no, email, password, name, department, join_date)
    values(null, 'jkl851@naver.com', password('1234'), '김민철2', '개발팀2', now());
    
insert
	into member(no, email, password, name, department, join_date)
    values(null, 'jkl851@naver.com', password('1234'), '김민철3', '개발팀3', now());
-- update
update member
	set email='jkl851@naver.com', password = password('5678')
    where no =3;
select * from member; 
    
-- delete
delete
	from member
    where no = 4;
select * from member; 

-- transaction
select @@AUTOCOMMT;
set autocommit=1; -- 1은 autocommit on, 0은 off

insert
	into member(no, email, password, name, department, join_date)
    values(null, 'jkl851@naver.com', password('1234'), '김민철5', '개발팀5', now());
    
commit;

select * from member; 