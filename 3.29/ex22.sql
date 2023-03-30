사원없는 부서의 정보
select d.deptno, d.dname, e.empno, 0, e.ename, 0 from emp e
right outer join dept d 
on(e.deptno = d.deptno) where e.empno is null order by d.deptno;