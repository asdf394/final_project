drop table car_info;
drop table rent_member;
drop table rent_member cascade constraint;
drop table rent_car cascade constraint;
drop sequence rent_id_seq;

create table rent_member(
company_id number, -- 시퀀스 사용
email varchar2(150),
pw varchar2(50) not null,
name varchar2(30),
companyName varchar2(100) not null, 
companyImg varchar2(200),
location varchar2(300),
phone varchar2(100),
constraint rent_mem_id_pk primary key(company_id),
constraint rent_mem_co_name_uk unique(companyName)
);

create table car_info(
car_num varchar2(150),
name varchar2(150),
car_type varchar2(100),
fuel varchar2(50),
car_year varchar2(200),
img varchar2(500),
rent number default 0, -- 1 : 대여중, 0 : 대여가능
company_id number,

constraint car_num_pk primary key(car_num),
constraint car_rent_mem_co_id_fk foreign key(company_id) references rent_member(company_id),
constraint car_rent_ck check(rent in(0, 1))

); 

create table rent_car(
car_num varchar2(150),
request_company_id number,
response_company_id number,
first_day varchar2(50),
last_day varchar2(50),
comments varchar2(200),

constraint rent_car_pk primary key(car_num, request_company_id),
constraint rent_car_mem_com_id_fk1 foreign key(request_company_id) references rent_member(company_id),
constraint rent_car_info_num_fk2 foreign key(car_num) references car_info(car_num)
);


insert into rent_member(id, pw, name, companyName, phone) values (rent_id_seq.nextval, 

rent_seq.nextval, rent_seq.nextval, '실험', '0')
select * from rent_member
select * from CAR_INFO;
select * from CAR_INFO where company_id = 1;
-- 시퀀스 생성
CREATE SEQUENCE rent_id_seq
START WITH 1
INCREMENT BY 1;


select * from car_info where  rent=0 and company_id = (select company_id from rent_member where email like '2')

select * from rent_member;