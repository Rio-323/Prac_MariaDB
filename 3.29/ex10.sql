-- 부서별 최고 급여를 받는 사원에 대한 정보 출력
--     1. 부서별 최고급여
--     2. 이 급여를 받는 사원

-- 1. - > select MAX(sal) from emp group by deptno;
-- 2. - > sal in (select MAX(sal) from emp group by deptno);

select deptno, empno, ename, sal from emp where sal in (select MAX(sal) from emp group by deptno) order by deptno;

20번 부서의 사원이 속한 지책과 같은 사원들에 대한 정보
    1. 20번 부서에 속한 사원의 직책
    - > select distinct job from emp where deptno = 20; 

    2. 직책이 같은 사원들에 대한 정보
    - > select deptno, ename job, sal from emp;

    - >
    select deptno, empno, ename job, sal from emp where job in (select distinct job from emp where deptno = 20) order by deptno;