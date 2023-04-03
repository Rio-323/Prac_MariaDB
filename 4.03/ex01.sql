사용자 생성
create user tester1@localhost identified by '비밀번호';

외부 아이피에서도 접근 가능 권한 부여
create user tester1@'%' identified by '비밀번호';

select host, user, password from user;

사용자 삭제
drop user tester1@'%';
drop user 'test1'@'localhost';