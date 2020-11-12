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

create table rent_car(
req_num number, --시퀀스 사용
request_company_id number,
response_company_id number,
first_day varchar2(50),
last_day varchar2(50),
carName varchar2(100),
fuel varchar2(50),
comments varchar2(200),
rent_type varchar2(50),
rent_status number, --0:요청중, 1:대여중

constraint rent_car_req_num_pk primary key(req_num),
constraint rent_car_rent_status_ck check(rent_status in(0, 1)),
constraint rent_car_rent_type_ck check(rent_type in('단기','장기','보험'))

)


insert into rent_member(id, pw, name, companyName, phone) values (rent_id_seq.nextval, 
rent_seq.nextval, rent_seq.nextval, '실험', '0')

insert into rent_car(car_num, request_company_id, response_company_id, first_day, last_day, comments) values (2,2,null,'2020-11-10','2020-11-11','경유');

select * from rent_car
select * from rent_member
select * from CAR_INFO;
select * from CAR_INFO where company_id = 1;
-- 시퀀스 생성
CREATE SEQUENCE rent_id_seq
START WITH 1
INCREMENT BY 1;


select * from car_info where  rent=0 and company_id = (select company_id from rent_member where email like '2')

select * from rent_member;

select * from rent_car;