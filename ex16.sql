-- 직책이 clerk인 사원에 대한 사원번호, 사원이름, 급여, 부서이룸, 부서위치 출력
select e.empno, e.ename, e.sal, d.dname, d.loc from emp e inner join dept d on d.deptno = e.deptno where e.job = 'clerk';