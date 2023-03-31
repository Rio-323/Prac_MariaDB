insert into order_c2 values(1000, 1000, now(), "order1");
insert into order_c2 values(2000, 1000, now(), "order2");
insert into order_c2 values(1000, 2000, now(), "order3");

create table dept_c (
    deptno int(2),
    dname varchar(14),
    loc varchar(13)
);

alter table dept_c modify deptno int(2) not null;

alter table dept_c modify deptno int(2) null;

alter table dept_c add constraint unique (deptno);
unique -> 중복이 없게 만들기 위함.

alter table dept_c drop constraint deptno;

alter table dept_c add constraint primary key(deptno);

alter table dept_c drop constraint primary key; -> not null은 바뀌지 않음.

create table emp_c (
    empno int(4),
    ename varchar(10),
    job varchar(9),
    deptno int(2)
);

alter table emp_c add constraint foreign key(deptno) references dept_c(deptno);

alter table emp_c drop foreign key emp_c_ibfk_1;

alter table emp_c drop index deptno;