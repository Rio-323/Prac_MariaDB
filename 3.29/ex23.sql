self join
 -> 한 테이블 내부 조인
    -> inner join
    -> outer join

'king'이 존재하지 않음
select e.empno, e.ename '사원', e.mgr, m.ename '관리자' 
from emp e inner join emp m
on(e.mgr = m.empno);