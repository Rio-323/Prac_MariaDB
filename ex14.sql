-- select * from emp cross join dept; -> 무작위 결합 -> 무결성 오류
-- select * from emp inner join dept; -> 무작위 결합 -> 무결성 오류 -> 조건을 주어야 함.
-- equi join
select * from emp inner join dept where emp.deptno = dept.deptno order by dept.deptno;

select * from emp inner join dept where emp.deptno = dept.deptno and emp.deptno = 10;

select * from emp e inner join dept d where e.deptno = d.deptno and e.deptno = 10;

select e.empno, e.ename, d.dname, d.loc, e.deptno from emp e inner join dept d where e.deptno = d.deptno and e.deptno = 10;