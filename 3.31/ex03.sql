create table products (
    pno varchar(5) primary key,
    pname varchar(20),
    cost int(8),
    stock int(5)
);

create table orders (
    orderno varchar(10) primary key,
    orderdate varchar(8),
    address varchar(50),
    phone varchar(20),
    status varchar(5),
    cno varchar(5),
    constraint foreign key(cno) references customers(cno)
);

create table customers (
    cno varchar(5) primary key,
    cname varchar(10),
    address varchar(50),
    email varchar(20),
    phone varchar(20)
);

create table orderdetail (
    orderno varchar(10),
    pno varchar(5),
    qty int(5),
    cost int(8),
    PRIMARY KEY(orderno, pno),
    constraint foreign key(pno) references products(pno),
    constraint foreign key(orderno) references orders(orderno)
);



