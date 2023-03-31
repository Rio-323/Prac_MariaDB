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

