create database test1;
show databases;
create database if not exists test1;
create database if not exists test2;
drop database test2;
drop database if exists test2;

문자형
    char - 고정
    varchar - 가변
    tinytext / text / mediumtext / longtext

숫자형
    정수 - int
    실수 - decimal / double

날짜형
    datetime

이진데이터

테이블명 tbl1
    col1 - varchar(2)

create table tbl1 (col1 varchar(2));

create table dept2 ( 
	deptno      int(2) primary key,
	dname       varchar(14),
	loc         varchar(13)
);

create table if not exists tbl1(col1 varchar(2));

