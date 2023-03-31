table - 데이터 조회
        table - 가상 윈도우(view - 데이터를 가지지 않고 실제 테이블에 접근하는 방법을 저장 -> select 저장) - 데이터 조회

use sample;
show tables;

create view emp_vu1 as select * from emp;
desc emp_vu1; -> 가상 테이블

select * from emp_vu1;

select * from emp_vu1 where deptno = 10;

show full tables;

show full tables where table_type = 'view';
= select table_name, table_type from information_schema.tables where table_schema = 'sample';


select table_name , view_definition from information_schema.views where table_schema = 'sample';

create view emp_vu10 as select empno, ename, mgr, job from emp where deptno = 10;

create view emp_vu20 as select empno no, ename name, mgr mgr, job job from emp where deptno = 20;

create view emp_sal as select empno no, ename name, sal, sal * 12 + ifnull(comm, 0) annsal from emp;


사원번호 사원이름 부서번호 부서이름 부서위치의 정보를 조회할 수 있는 emp_dept이라는 view 생성

select e.empno, e.ename, e.deptno, d.dname, d.loc from emp e inner join dept d on e.deptno = e.deptno;

create view emp_dept as select e.empno, e.ename, e.deptno, d.dname, d.loc from emp e inner join dept d on e.deptno = e.deptno;

사원번호 사원이름 관리자 이름에 대한 정보를 조회할 수 있는 emp_mgr 이라는 view 생성 (관리자 이름이 없으면 관리자 없음이라고 표시)

create view emp_mgr as select e.empno, e.ename, ifnull(m.ename, '관리자 없음') mgrname from emp e left outer join emp m on e.mgr = m.empno;

select e.empno, e.ename, m.ename mgrname from emp e left outer join emp m on e.mgr = m.empno;

select * from (select * from emp where deptno = 10) e;

