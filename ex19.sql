select e.empno, e.ename, e.sal, s.grade, d.dname, d.loc
from emp e inner join dept d
on e.deptno = d.deptno
inner join salgrade s
on e.sal between s.losal and s.hisal
order by s.grade;
