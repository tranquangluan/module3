ALTER TABLE customer
DROP CHECK customer_chk_1;

insert into Customer values
(1,'Minh Quan', 10);

insert into Customer values
(2, 'Ngoc Oanh', 20);

insert into Customer values
(3, 'Hong Ha', 50);

insert into `order` values
(1,1, '2006-03-21',Null);

insert into `order` values
(1,1, '2006-03-21',Null);

insert into `order` values
(2,2, '2006-03-23',Null);

insert into `order` values
(3,1, '2006-03-16',Null);

insert into product values
(1,'May Giat',3);

insert into product values
(2,'Tu Lanh',5);

insert into product values
(3, 'Dieu Hoa', 7);

insert into product values
(4, 'Quat', 1);

insert into product values
(5, 'Bep Dien', 2);

insert into Order_Detail values
(1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oId, oDate, oTotalPrice
from `order`;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select cname , pname 
from customer c, `order` o, order_detail od,product p
where c.cid = o.cid and o.oID = od.oID and od.pid = p.pid;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select cname 
from customer left join `order`on customer.cID = `order`.cID
where `order`.cid is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select order_detail.oid , `order`.odate , odQTY*pPrice as price_each_order
from `order` ,  product, order_detail
where order_detail.oID=`order`.oID and order_detail.pID = product.pid







