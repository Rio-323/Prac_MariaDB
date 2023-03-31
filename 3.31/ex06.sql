select e.empno, e.ename, e.deptno, d.dname, d.loc from (select * from emp where deptno in (10, 20)) e inner join dept d on e.deptno = d.deptno;

create view emp_vu10 as select empno, ename, mgr, job from emp where deptno = 10;

alter view emp_vu10 as select empno, ename, mgr, job from emp where deptno = 20;

show full tables where table_type = 'view';