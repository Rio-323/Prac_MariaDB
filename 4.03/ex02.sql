create table tester1db.emp as select * from sample.emp;

select * from tester1db.emp limit 0, 2;

grant select on tester1db.emp to tester1@localhost;

create database tester2db;

grant all privileges on tester2db. * to tester2@localhost identified by '1234';

select host, user from user;

select host, user, db from db;