인덱스
    B-tree
    색인(목차)
    구성 / 재구성

자동 - primary key / unique / foreign key
수동 - 나머지

show index from emp;

create table dept_i (
    deptno int(2),
    dname varchar(14),
    loc varchar(13)
);

show index from dept_i; -> index 없음


alter table dept_i add constraint primary key (deptno);

alter table dept_i drop deptno;

인덱스 수동으로 거는 방법
alter table dept_i add index dept_i_idx (dname);