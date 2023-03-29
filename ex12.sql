직책이 manager 사원들의 급여보다 큰 사원에 대한 정보
    1. 직책이 manager 사원들의 급여
     -> select sal from emp where job = "manager";

    2. 이 급여보다 큰 사원
    -> select empno, job, ename, sal from emp where sal > All(select sal from emp where job = "manager");