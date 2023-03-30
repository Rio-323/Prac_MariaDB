select * from emp;

테이블 복제
create table emp2 as select * from emp;

create table emp10 as select * from emp where deptno = 10;

create table emp11 as select empno, ename, job from emp where deptno = 10;
create table emp12 as select empno, ename, job, sal, sal * 12 + ifnull(comm, 0) from emp where deptno = 10;

create table emp13 as select empno, ename, job, sal, sal * 12 + ifnull(comm, 0) annsal from emp where deptno = 10;

emp_dept 테이블을 만들기
    empno, ename, deptno, dname, loc 테이블

    create table emp_dept as 

    select e.empno, e.ename, d.deptno, d.dname, d.loc from emp e inner join dept d on e.deptno = d.deptno;

테이블의 데이터를 가져오지 않고 테이블의 뼈대만 가져오는 방법
create table empty_emp as select * from emp where 1 != 1;