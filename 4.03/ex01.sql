show create user;

사용자 생성
create user tester1@localhost identified by '비밀번호';

외부 아이피에서도 접근 가능 권한 부여
create user tester1@'%' identified by '비밀번호';

select host, user, password from user;

사용자 삭제
drop user tester1@'%';
drop user 'test1'@'localhost';

grant - 권한 부여
revoke - 권한 회수

show privileges;

show grants for root@localhost;

권한은 데이터 베이스 별로.
create database tester1db;

권한 부여 - root안에 있는 database 이지만 tester1에서도 접근 가능
grant create on tester1db. * to tester1@localhost;

use tester1db;
create table testtbl(col1 varchar(10));

오류 발생 -> create 권한만 가지고 있음.
select * from testtbl

alter table testtbl add col2 varchar(10);

drop table testtbl;

권한 회수
revoke create on tester1db. * from tester1@localhost;
-------------------------------------------------------

grant all privileges on tester1db. * to tester1@localhost;(-> 모든 권한을 주는 것)
drop / create / alter 다 가능 단 다른 데이터베이스에서는 권한이 없음.

revoke all on tester1db. * from tester1@localhost; -> 권한 회수