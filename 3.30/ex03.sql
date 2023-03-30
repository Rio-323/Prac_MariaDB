수정
    alter
     -> 컬럼 추가 / 컬럼 수정 / 컬럼 삭제

select * from sample.dept; -> 다른 데이터베이스에 있는 테이블 조회하는 방법

create table emp_alter as select empno, ename, sal, hiredate from sample.emp where 1 != 1;

alter table emp_alter add job varchar(10); -> 컬럼 추가

alter table emp_alter modify job varchar(20); -> 수정

create table emp_alter2 as select empno, ename, sal, hiredate, job from sample.emp;
alter table emp_alter modify job varchar(5); -> 데이터가 들어있으면 오류가 날 수 있음 기본적인 크기가 있기 때문에

alter table emp_alter rename column job to work; -> 컬럼명 바꾸기

alter table emp_alter drop work; -> 컬럼 삭제(데이터가 있어도 삭제)

alter table emp_alter2 rename emp_alter3; -> 테이블 이름 변경
rename table emp_alter3 to emp_alter2; -> 테이블 명을 바꾸는 다른 방법

show create table emp_alter; -> sql 구문으로 emp_alter 코드를 보여줌.
show create table emp_alter\g;

show table status;