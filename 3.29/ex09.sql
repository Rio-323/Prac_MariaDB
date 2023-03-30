-- 최고 급여를 받는 사원 정보 출력
    -- 1. 최고급여
    -- select max(sal) from emp;
    -- 2. 그 급여를 받는 사원
    -- select deptno, ename, sal from emp where sal = 최고급여;
select deptno, ename, sal from emp where sal = (select max(sal) from emp);