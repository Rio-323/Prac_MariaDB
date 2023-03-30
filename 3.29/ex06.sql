select empno, ename, deptno, sal, 
case deptno 
    when 10 then truncate(sal * 1.1, 0) 
    when 20 then truncate(sal * 1.2, 0)  
    when 30 then truncate(sal * 1.3, 0) 
    else '인상 없음' 
end '인상 급여' 
from emp
order by deptno;