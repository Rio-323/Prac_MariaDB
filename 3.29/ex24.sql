select e.empno, e.ename '사원', e.mgr, ifnull(m.ename, '관리자') '관리자' 
from emp e left outer join emp m
on(e.mgr = m.empno);

-> king 존재