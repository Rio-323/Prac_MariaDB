select e.empno, e.ename, e.sal, s.grade, d.dname, d.loc
from emp e inner join dept d inner join salgrade s 
on(e.deptno = d.deptno and e.sal between s.losal and s.hisal);