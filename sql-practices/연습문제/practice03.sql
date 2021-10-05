-- practice03
-- 문제 1. 
-- 현재 급여가 많은 직원부터 직원의 사번, 이름, 그리고 연봉을 출력 하시오.
select E.emp_no, E.first_name, S.salary
	from employees E left join salaries S on E.emp_no = S.emp_no left join titles T on E.emp_no = T.emp_no
    where T.to_date = '9999-01-01'
    and S.to_date = '9999-01-01'
    group by E.emp_no
    order by S.salary desc;

-- 문제2.
-- 전체 사원의 사번, 이름, 현재 직책을 이름 순서로 출력하세요.
select E.emp_no, E.first_name, T.title
	from employees E left join titles T on E.emp_no = T.emp_no 
    where T.to_date = '9999-01-01'
    order by E.first_name asc;

-- 문제3.
-- 전체 사원의 사번, 이름, 현재 부서를 이름 순서로 출력하세요..
select E.emp_no, E.first_name, DP.dept_name
	from employees E left join dept_emp DE on E.emp_no = DE.emp_no join departments DP on DE.dept_no = DP.dept_no 
	where DE.to_date = '9999-01-01'
    group by E.first_name
	order by E.first_name;


-- 문제4.
-- 전체 사원의 사번, 이름, 연봉, 직책, 부서를 모두 이름 순서로 출력합니다.
select E.emp_no, E.first_name, SR.salary, TT.title, DP.dept_name
	from employees E left join dept_emp DE on E.emp_no = DE.emp_no 
		join departments DP on DE.dept_no = DP.dept_no 
        join titles TT on E.emp_no = TT.emp_no
        join salaries SR on E.emp_no = SR.emp_no
    group by E.first_name
	order by E.first_name;
	

-- 문제5.
-- ‘Technique Leader’의 직책으로 과거에 근무한 적이 있는 모든 사원의 사번과 이름을 출력하세요. 
-- (현재 ‘Technique Leader’의 직책(으로 근무하는 사원은 고려하지 않습니다.) 
-- 이름은 first_name과 last_name을 합쳐 출력 합니다.
select E.emp_no, concat(E.first_name, ' ', E.last_name) as full_name, TT.title
	from employees E left join dept_emp DE on E.emp_no = DE.emp_no 
        join titles TT on E.emp_no = TT.emp_no
	where TT.title = 'Technique Leader'
    and TT.to_date != '9999-01-01'
    and DE.to_date != '9999-01-01'
    order by full_name;

-- 문제6.
-- 직원 이름(last_name) 중에서 S(대문자)로 시작하는 직원들의 이름, 부서명, 직책을 조회하세요.
select concat(E.first_name, ' ', E.last_name) as full_name, DP.dept_name, TT.title
	from employees E left join dept_emp DE on E.emp_no = DE.emp_no 
        join titles TT on E.emp_no = TT.emp_no
        join departments DP on DE.dept_no = DP.dept_no
	where substring(E.last_name, 1, 1) = upper('s')
    order by full_name;


-- 문제7.
-- 현재, 직책이 Engineer인 사원 중에서 현재 급여가 40000 이상인 사원을 급여가 큰 순서대로 출력하세요.
select *
	from employees E left join titles TT on E.emp_no = TT.emp_no
        join salaries SR on E.emp_no = SR.emp_no
	where TT.title = 'Engineer'
    and SR.salary >= 40000
    and SR.to_date = '9999-01-01'
    and TT.to_date = '9999-01-01'
	order by SR.salary desc;


-- 문제8.
-- 현재 급여가 50000이 넘는 직원을 직책, 급여로 급여가 큰 순서대로 출력하시오
select E.emp_no, TT.title, SR.salary
	from employees E left join titles TT on E.emp_no = TT.emp_no
        join salaries SR on E.emp_no = SR.emp_no
	where SR.salary > 50000
    and SR.to_date = '9999-01-01'
    and TT.to_date = '9999-01-01'
	order by SR.salary desc;

-- 문제9.
-- 현재, 부서별 평균 연봉을 연봉이 큰 부서 순서대로 출력하세요.
select DP.dept_name, avg(SR.salary) as avg_salary
	from employees E left join dept_emp DE on E.emp_no = DE.emp_no 
		join departments DP on DE.dept_no = DP.dept_no 
        join salaries SR on E.emp_no = SR.emp_no
	where SR.to_date = '9999-01-01'
    and DE.to_date = '9999-01-01'
    group by DP.dept_name
	order by avg_salary desc;


-- 문제10.
-- 현재, 직책별 평균 연봉을 연봉이 큰 직책 순서대로 출력하세요.
select TT.title, avg(SR.salary) as avg_salary
	from employees E left join titles TT on E.emp_no = TT.emp_no
        join salaries SR on E.emp_no = SR.emp_no
	where SR.to_date = '9999-01-01'
    and TT.to_date = '9999-01-01'
	group by TT.title
	order by avg_salary desc;
 