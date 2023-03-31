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