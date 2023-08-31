CREATE DATABASE QLSINHVIEN_ASM_SOF203;
GO
USE QLSINHVIEN_ASM_SOF203
GO
CREATE TABLE USERS
(username nvarchar(30),
password nvarchar(30) not null,
role nvarchar(20) not null,
PRIMARY KEY(username)
);
GO
CREATE TABLE STUDENTS
(MaSV nvarchar(5),
HoTen nvarchar(30) not null,
Email nvarchar(30) not null,
SDT varchar(10) not null,
GioiTinh bit not null,
DiaChi nvarchar(30) not null,
Hinh nvarchar(100),
PRIMARY KEY(MaSV)
);
GO
CREATE TABLE GRADE
(ID int identity,
MaSV nvarchar(5),
TiengAnh float,
TinHoc float,
GDTC float,
PRIMARY KEY(ID)
);
GO
ALTER TABLE GRADE ADD CONSTRAINT FK_MASV FOREIGN KEY (MaSV) REFERENCES STUDENTS(MaSV)
GO
ALTER TABLE GRADE ADD CONSTRAINT CHK_DIEM_TA CHECK(TiengAnh between 0 and 10)
GO
ALTER TABLE GRADE ADD CONSTRAINT CHK_DIEM_TH CHECK(TinHoc between 0 and 10)
GO
ALTER TABLE GRADE ADD CONSTRAINT CHK_DIEM_GDTC CHECK(GDTC between 0 and 10)
GO
INSERT INTO USERS VALUES
(N'nhan1', '123', N'Giảng viên'),
(N'nhan2', '123', N'Cán bộ đào tạo'),
(N'nhan3', '123', N'Giảng viên')
GO
DELETE FROM USERS
INSERT INTO STUDENTS VALUES
('SV001', N'Trần Thanh Hà', 'ha@gmail.com', '0933660275', 0, N'Quận 1', null),
('SV002', N'Trần Trung Nghĩa', 'nghia@gmail.com', '0973660374', 1, N'Quận Bình Thạnh', null),
('SV003', N'Lê Duy Mạnh', 'manh@gmail.com', '0934260671', 1, N'Quận Tân Phú', null)
GO
INSERT INTO GRADE VALUES
('SV001', 8, 9, 7),
('SV002', 7, 9, 6),
('SV003', 8, 7, 8)
GO

