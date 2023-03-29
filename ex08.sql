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

-- 합계가 2000 이상.
-- select deptno, job, sum(sal) from emp where sum(sal) >= 2000 group by deptno, job; -> 에러 발생 where 다음에는 group 함수를 사용할 수 없음.
select deptno, job, sum(sal) from emp group by deptno, job having sum(sal) >= 2000;

--부서별 인원수 6명 이상인 부서번호, 인원 수 출력
select deptno, count(ename) from emp group by deptno having count(ename) >= 6;