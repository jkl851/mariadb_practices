-- practice04 서브쿼리 혼합
-- 문제1.
-- 현재 평균 연봉보다 많은 월급을 받는 직원은 몇 명이나 있습니까?
select count(E.emp_no)
	from employees E left join salaries SR on E.emp_no = SR.emp_no
	where SR.to_date = '9999-01-01'
	and SR.salary > (select avg(salary) from salaries where to_date = '9999-01-01');
    
-- 문제2. 
-- 현재, 각 부서별로 최고의 급여를 받는 사원의 사번, 이름, 부서 연봉을 조회하세요. 
-- 단 조회결과는 연봉의 내림차순으로 정렬되어 나타나야 합니다. 
select E.emp_no, E.first_name, DP.dept_name, SR.salary
	from employees E join salaries SR on E.emp_no = SR.emp_no
		join dept_emp DE on E.emp_no = DE.emp_no 
		join departments DP on DE.dept_no = DP.dept_no 
        join (select DE.dept_no, max(salary) as max_salary from salaries SR 
									join dept_emp DE on SR.emp_no = DE.emp_no 
									where SR.to_date = '9999-01-01' 
                                    and DE.to_date = '9999-01-01' 
                                    group by DE.dept_no) d on DE.dept_no = d.dept_no 
	where SR.to_date = '9999-01-01'
	and DE.to_date = '9999-01-01'
	and SR.salary = d.max_salary
    order by SR.salary desc;


-- 문제3.
-- 현재, 자신의 부서 평균 급여보다 연봉(salary)이 많은 사원의 사번, 이름과 연봉을 조회하세요 
select a.emp_no, a.first_name, b.salary
	from employees a, salaries b, dept_emp c, (select a.dept_no, avg(salary) as avg_salary
									from dept_emp a, salaries b, departments c
									where a.emp_no = b.emp_no
									and a.dept_no = c.dept_no
									and b.to_date = '9999-01-01'
									and a.to_date = '9999-01-01'
									group by c.dept_name) d
    where a.emp_no = b.emp_no
    and a.emp_no = c.emp_no
    and c.dept_no = d.dept_no
    and b.to_date = '9999-01-01'
	and c.to_date = '9999-01-01'
    and b.salary > d.avg_salary;


-- 문제4.
-- 현재, 사원들의 사번, 이름, 매니저 이름, 부서 이름으로 출력해 보세요.


-- 문제5.
-- 현재, 평균연봉이 가장 높은 부서의 사원들의 사번, 이름, 직책, 연봉을 조회하고 연봉 순으로 출력하세요.


-- 문제6.
-- 평균 연봉이 가장 높은 부서는? 


-- 문제7.
-- 평균 연봉이 가장 높은 직책?


-- 문제8.
-- 현재 자신의 매니저보다 높은 연봉을 받고 있는 직원은?
-- 부서이름, 사원이름, 연봉, 매니저 이름, 메니저 연봉 순으로 출력합니다.