select empno, ename, 
case job 
    when 'CLERK' then '사원' 
    when 'ANALYST' then '분석' 
    when 'MANAGER' then '관리' 
    when 'PRESIDENT' then '대표' 
    else '영업' 
end 'job' 
from emp;