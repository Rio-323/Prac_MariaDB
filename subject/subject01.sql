-- 로그인
create table user (
userId varchar(30) primary key,
userPassword varchar(30) not null,
userName varchar(10) not null,
userGender varchar(5) check (userGender in ('남', '여') ),
userBirth date,
userPhone varchar(30) not null
);

-- 팀
create table team(
teamCode varchar(30),
teamName varchar(50),
teamCoach varchar(50),
teamLoc varchar(50),
teamyear varchar(10),
primary key(teamCode)
);

create table player(
playerNo int(30) ,
teamCode varchar(30),
playerName varchar(50),
playerHeight varchar(50),
playerBirth varchar(50),
playerWeight varchar(50),
playerPosition varchar(20),
playerBackNo int(4),
playerGoal int(4),
primary key(playerNo),
foreign key(teamCode) references team(teamCode)
);



LOAD DATA INFILE '/Users/ksy/Downloads/team.csv'
INTO TABLE team
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;