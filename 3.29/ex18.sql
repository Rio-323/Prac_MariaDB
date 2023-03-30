-- 입사년도가 2011년인 사원에 대한 사원번호, 사원이름, 급여 급여 등급을 출력
select e.empno, e.ename, e.sal, s.grade, e.hiredate from emp e 
inner join salgrade s on e.sal between s.losal and s.hisal 
where e.hiredate like "2011%" 
order by s.grade;