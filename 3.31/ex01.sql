primary key - 테이블 당 1개 / auto_increment
foreign key - 외래키 / 참조키(uk, pk)

create table dept_p (
    deptno int(2),
    dname varchar(14),
    loc varchar(13)
);

create table emp_f (
    empno int(4),
    ename varchar(10),
    job varchar(9),
    deptno int(2),
    constraint foreign key(deptno) references dept_p(deptno) -> primary key가 아니기 때문에 참조키로 사용 불가능.
);

create table dept_p (
    deptno int(2) primary key,
    dname varchar(14),
    loc varchar(13)
);

create table emp_f (
    empno int(4),
    ename varchar(10),
    job varchar(9),
    deptno int(2),
    constraint foreign key(deptno) references dept_p(deptno)
);

insert into emp_f values(1000, "홍길동", "clerk", 10); -> 오류 발생(foreign key)


insert into dept_p values(10, "연구", "서울"); -> 데이터를 넣는 순서가 발생.


insert into dept_p values(20, "개발", "대전");
update emp_f set deptno = 20  where empno = 1000;

insert into emp_f values(2000, "박문수", "clerk", 10);

delete from emp_f where empno = 1000;

delete from dept_p; -> 에러 발생 참조하는 테이블이 있기 때문에.