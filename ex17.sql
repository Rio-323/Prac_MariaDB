-- 대략적으로 값이 사이에 있다면 테이블 join
-- non equi join
select* from emp e inner join salgrade s on e.sal >= s.losal and e.sal <= s.hisal;