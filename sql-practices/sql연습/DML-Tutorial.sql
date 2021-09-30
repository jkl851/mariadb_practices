-- Basic Qurey

-- 테이블 삭제
drop table pet;


-- 테이블 생성
create table pet(
	name VARCHAR(20), 
    owner VARCHAR(20),
    species VARCHAR(20),
    gender CHAR(1),
    birth DATE,
    death DATE 
);

-- schema 확인
desc pet;

-- 조회
select name, owner, species, gender, birth, death from pet;

-- 데이터 생성(create)
insert 
  into pet
  value ('성탄이', '안대혁', 'dog', 'm', '2018-12-25', null); 
  
  
-- 데이터 삭제(delete)
delete
	from pet
    where name = '성탄이';

-- load data local infile
load data local infile 'c:/pet.txt' into table pet;


