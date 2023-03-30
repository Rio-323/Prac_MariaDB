각 부서의 평균 급여 전체보다 적은 사원들에 대한 정보 출력
    1. 각 부서의 평균 급여
    -> select avg(sal) from emp group by deptno;
    전체보다 적은 사원들에 대한 정보 출력

-> select deptno, job, ename, sal from emp where sal < All(select avg(sal) from emp group by deptno) order by deptno;