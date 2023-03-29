select empno, ename, deptno, 
case deptno 
    when 10 then '회계' 
    when 20 then '조사' 
    when 30 then '영업'  
    else '총무' 
end '부서명' 
from emp
order by deptno;