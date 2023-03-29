-- 부서별 데이터 개수
select count(*) from emp group by deptno;
select deptno, count(*) from emp group by deptno;

-- 부서별 최대 급여
SELECT deptno, ename, max(sal)
FROM emp
group by deptno;