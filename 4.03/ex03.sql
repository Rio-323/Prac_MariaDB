데이터베이스에 대한 백업 / 복원
mysqldump - 복원용 스크립트 생성.
csv

mysqldump -u root -p > dump_all.sql
mysqldump -u root -p sample > dump_all.sql

특정 테이블만 백업(부분 백업)
mysqldump -u root -p sample emp > dump_emp.sql

 mysql -u root -p sample < dump_emp.sql

 drop database sample;


 select concat(ename, '님의 연봉은', (sal * 12) + ifnull(comm,0) , '입니다.') '연봉' from emp where deptno = 10;

----------------------------------------
자바 프로그램과 연결하는 방법
JDBC