-- 함수 : 날짜 함수
-- CURDATE(), DURRENT_DATE
select curdate(), current_date;

-- CURTIME(), CURRENT_TIME
select curtime(), current_time;

-- now() vs sysdate()
select now(), sysdate();
select now(), sleep(2), now(); -- now() 쿼리실행당시의 시간
select sysdate(), sleep(2),sysdate(); -- sysdate() 함수호출당시의 시간

-- date_format(date, format)
select date_format(now(), '%Y년 %m월 %d일 %h시 %i 분 %s초');
select date_format(now(), '%Y년 %c월 %d일 %h시 %i 분 %s초');

-- period_diff(a, b)
-- YYMM이나 YYYYMM으로 표기되는 a과 b의 차이 개월을 반환 한다
-- 예제 : 근무 개월 수를 출력
select first_name,
	period_diff(date_format(curdate(), '%Y%m'), date_format(hire_date, '%Y%m')) as month
	from employees
    order by month desc;
    
-- date_add (= adddate), date_sub(= subdate)
-- 날짜를 date에 type(day, month, year) 형식의 표현식을 더하거나 뺀다.
-- 예제 : 각 사원들의 근무 년수가 5년이 되는 날은 언제인가?
select first_name,
		hire_date,
        date_add(hire_date, interval 5 year)
	from employees;
    
-- cast
select '12345' + 10, cast('12345' as int) + 10;
select date_format(cast('2021-10-01' as date), '%Y-%m-%d');
select cast(1-2 as unsigned); -- 음수가 될수없는
select cast(cast(1-2 as unsigned) as signed);

-- mysql type
-- varchar, char, text, CLOB(Character Large OBject)
-- signed(unsigned), int(integer), medium int, big int, int(11) /11=11자리, int defalt임
-- float, double
-- time, date, datetime
-- LOB : CLOB, BLOB

