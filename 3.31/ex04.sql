create table products (
    pno varchar(5),
    pname varchar(20),
    cost int(8),
    stock int(5)
);

create table orders (
    orderno varchar(10),
    orderdate varchar(8),
    address varchar(50),
    phone varchar(20),
    status varchar(5),
    cno varchar(5)
);

create table customers (
    cno varchar(5),
    cname varchar(10),
    address varchar(50),
    email varchar(20),
    phone varchar(20)
);

create table orderdetail (
    orderno varchar(10),
    pno varchar(5),
    qty int(5),
    cost int(8)
);

primary key
alter table customers add constraint primary key (cno);
alter table orders add constraint primary key (orderno);
alter table products add constraint primary key (pno);
alter table orderdetail add constraint primary key (orderno, pno);

foreign key
alter table orders add constraint foreign key(cno) references customers(cno);
alter table orderdetail add constraint foreign key(orderno) references orders(orderno);
alter table orderdetail add constraint foreign key(pno) references products(pno);