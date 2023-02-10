create database QuanLyBanHang;
use QuanLyBanHang;
create table customer
(
	cID int not null primary key,
    cName varchar(45),
    cAge int ,
    check (cAge>=18)
);

create table `order`
(
	oID int not null primary key,
	cID int ,
    oDate date,
    oTotalPrice float,
    foreign key(cID) references customer(cID)
);

create table order_detail
(
	oID int,
    pID int,
    odQTY int ,
    foreign key(oID) references `order`(oID),
    foreign key(pID) references product(pID)
);

create table product
(
	pID int not null primary key,
    pName varchar(45),
    pPrice float
);

