-- 2. Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

select * 
from employee
where employee_name like 'H%' or 'T%' or 'K%';

-- 3. Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.

select *
from customer
where (YEAR(CURDATE()) - YEAR(customer_birthday)) >=18 and (YEAR(CURDATE()) - YEAR(customer_birthday)) <= 50 and customer_address like '%Đà Nẵng' or customer_address like '%Quảng Trị';

-- 4. Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.

select ctm.customer_id , customer_name, count(ctm.customer_id) as booking_numbers
from contract ct
join customer ctm on ct.customer_id = ctm.customer_id
join customer_type ctmt on ctm.customer_type_id = ctmt.customer_type_id
where customer_type_name = 'Diamond'
group by ctm.customer_id , customer_name
order by booking_numbers asc;

-- 5

select customer_id, customer_name, customer_type_name, contract_id, service_name, contract_start_date, contract_end_date ;

-- 6. Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select service_id, service_name, service_area, service_cost , service_type_name
from service sv
join service_type svt on sv.service_type_id = svt.service_type_id
where sv.service_id not in 
(select ct.service_id
from service sv
join contract ct on ct.service_id = sv.service_id
where 
contract_start_date between '2021-01-01' and '2021-03-31'); 


-- 7
select sv.service_id, service_name, service_area, service_max_people, service_cost, service_type_name 
from service sv
join service_type svt on sv.service_type_id = svt.service_type_id
where sv.service_id in 
(select sv.service_id
from service sv
join contract ct on sv.service_id = ct.service_id
where contract_start_date between '2020-01-01' and '2020-12-31') ;

-- 8

select distinct(customer_name)
from customer;

select customer_name
from customer
group by customer_name;

select customer_name
from customer
union select customer_name
from customer;

-- 9
select month(contract_start_date) as 'month' , count(customer_id) as quantity
from contract 
where year(contract_start_date) = '2021'
group by month(contract_start_date)
order by month(contract_start_date) asc;

-- 10
select ct.contract_id, contract_start_date, contract_end_date, contract_deposit, sum(ifnull(ctdt.quantity,0)) as quantity
from contract ct
left join contract_detail ctdt on ct.contract_id = ctdt.contract_id
group by ct.contract_id,contract_start_date, contract_end_date, contract_deposit;
-- 11

select atsv.attach_service_id, attach_service_name
from attach_service atsv
join contract_detail ctdt on atsv.attach_service_id = ctdt.attach_service_id
join contract ct on ctdt.contract_id = ct.contract_id
join customer ctm on ct.customer_id = ctm.customer_id
join customer_type ctmt on ctm.customer_type_id = ctmt.customer_type_id
where customer_type_name = 'Diamond' and customer_address like '%Vinh%' or customer_address like '%Quãng Ngãi%';

-- 12 chưa xong
select ct.contract_id , employee_name, customer_name, customer_phone, service_name, sum(ctdt.quantity) as quantity, contract_deposit
from contract ct
join employee epl on ct.employee_id = epl.employee_id
join contract_detail ctdt on ct.contract_id = ctdt.contract_id
join customer ctm on ct.customer_id = ctm.customer_id 
join service sv on ct.service_id = sv.service_id
where (contract_start_date between '2020-10-01' and '2020-12-31') and (contract_start_date not between '2021-01-01' and '2021-06-30')
group by ct.contract_id , employee_name, customer_name, customer_phone, service_name, contract_deposit;


-- 13 

select attach_service_id, attach_service_name, count(attach_service_id) as 'attach_service_number', sum(ctdt.quantity) as 'quantity'
from contract_detail ctdt
left join attach_service atsv using (attach_service_id)
group by attach_service_id
having quantity >= All(select quantity from contract_detail group by contract_detail.contract_detail_id);


-- 14
select contract_id, service_type_name, attach_service_name , count(attach_service_id) as 'use_number'
from attach_service atsv
join contract_detail ctdt using (attach_service_id)
join contract ct using (contract_id)
join service sv using (service_id)
join service_type svt using (service_type_id)
group by ct.contract_id, service_type_name, attach_service_name
having count(attach_service_id) = 1;


-- 15

-- 16

-- 17

-- 18

-- 19

-- 20








