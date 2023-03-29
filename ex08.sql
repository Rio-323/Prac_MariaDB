-- 부서별 데이터 개수
select count(*) from emp group by deptno;
select deptno, count(*) from emp group by deptno;

-- 부서별 최대 급여
SELECT deptno, ename, max(sal)
FROM emp
group by deptno;

-- 직책별 평균급여
SELECT job, truncate(avg(sal), 0)
FROM emp
group by job;

select distinct deptno, job from emp order by deptno;

-- 부서, 직책별 평균, 합계,,,
select deptno, job, sum(sal) from emp group by deptno, job;