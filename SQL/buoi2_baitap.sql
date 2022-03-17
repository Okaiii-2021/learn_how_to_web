create database info_client

use info_client


drop table client

create table client(
ma int identity,
ho_ten nvarchar(30),
sdt char(12),
dia_chi char(30),
gioi_tinh bit,
ngay_sinh date,
primary key (ma)
)

insert into client (ho_ten, sdt, dia_chi, gioi_tinh, ngay_sinh)
values( N'Vạn', '111111', 'Kon Tum', 1, '2000-09-19'),
( N'Okai', '22222', 'HCM', 1, '2002-08-22'),
( N'Long', '333333', 'binh dinh', 1, '1999-05-18'),
( N'Bao', '444444', 'Gia Lai', 1, '2001-02-28'),
( N'Kha', '55555', 'Thanh Hoa', 1, '2002-03-25')


select * from client 
where CHARINDEX('V', ho_ten) >= 1
--where ( year(getdate()) - year(ngay_sinh) > 22)



delete from client
where ma>3 and gioi_tinh=1





