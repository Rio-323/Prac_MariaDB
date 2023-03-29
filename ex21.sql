-- select * from dept;
-- select * from emp;

-- 사원이 없는 부서 조회
-- 부서가 없는 사원
-- 주문이 없는 상품
-- 상품이 없는 주문

-- -> outer join -> 한 쪽 정보 완전히출력 나머지는 연결만 -> 자동적으로 null(연결되지 않는 정보)이 생성.
-- right outer join(오른쪽 중심(전체)의 오른쪽 연결) / left outer join(왼쪽 중심의 왼쪽 연결) / full outer join(양쪽)
-- select d.deptno, d.dname, e.empno, e.ename from emp e
-- inner join dept d 
-- on(e.deptno = d.deptno);

select d.deptno, d.dname, ifnull(e.empno, 0), ifnull(e.ename, 0) from emp e
right outer join dept d 
on(e.deptno = d.deptno) order by d.deptno;