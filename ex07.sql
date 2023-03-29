-- 잊지 않기 위한 메모
-- 연봉이 제일 높은 사람을 출력하기 위한 코드
-- select ename, sal from emp where max(sal); -> 무결성에 오류가 발생할 수 있음

-- 정답
-- ->
SELECT ename, sal
FROM emp
WHERE sal = (SELECT MAX(sal) FROM emp);
