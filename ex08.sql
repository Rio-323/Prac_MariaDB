-- 부서별 데이터 개수
select count(*) from emp group by deptno;
select deptno, count(*) from emp group by deptno;