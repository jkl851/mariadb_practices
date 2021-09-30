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

-- update death
update pet
	set death = null
    where death = 0000-00-00;

-- 조회연습 1 : where

-- 1990년 미국에 태어난 아이들은?
select name, species, birth
	from pet
	where birth > '1990-12-31';

-- Gwen과 함께 사는 아이들은?
select name, species, owner
	from pet
    where owner = 'Gwen';
    
-- null 다루기 1 : 살아있는 아이들은?
select name 
from pet 
where death is null;

-- null 다루기 1 : 죽은 아이들은?
select name 
from pet 
where death is not null;

-- like 검색(패턴매칭) : 이름이 b로 시작하는 아이들은?
select name from pet where name like 'b%';

-- like 검색(패턴매칭) : 이름이 b로 시작하는 아이들중에 이름이 6자인 아이는?
select name from pet where name like 'b_____';

-- 집계(통계) 함수
select count(*) from pet; -- 동물들의 수

-- 죽은 동물 조회 주의점
select count(death) from pet; -- null이 있는 컬럼은 이런식으로 쓰면 오류(not null이 death로 잡힌다)
select count(*) from pet where death is not null; -- 위를 풀어쓰면 이것과 같다