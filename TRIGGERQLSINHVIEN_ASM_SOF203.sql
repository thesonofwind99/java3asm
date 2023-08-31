-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
USE QLSINHVIEN_ASM_SOF203
--Thêm sinh viên vào bảng STUDENTS thì sẽ tự động thêm sinh viên vào bảng GRADE
IF OBJECT_ID(N'Them_SV') is not null
	DROP TRIGGER Them_SV
GO
CREATE TRIGGER Them_SV
ON STUDENTS
AFTER INSERT
AS
	BEGIN
		DECLARE @masv nvarchar(50)
		SET @masv = (SELECT MaSV FROM inserted)
		INSERT INTO GRADE VALUES (@masv, 0, 0, 0)
	END
GO
--Khi cán bộ đào tạo xoá sinh viên thì sẽ phải xoá sinh viên ở bên bảng GRADE trước để không bị lỗi khoá ngoại
IF OBJECT_ID(N'Xoa_SV') is not null
	DROP TRIGGER Xoa_SV
GO
CREATE TRIGGER Xoa_SV
ON STUDENTS
INSTEAD OF DELETE
AS
	BEGIN
		DECLARE @masv nvarchar(5)
		SELECT @masv = MaSV FROM deleted;
		DELETE FROM GRADE WHERE MaSV = @masv
		DELETE FROM STUDENTS WHERE MaSV = @masv
	END
GO
--Tạo một VIEW từ hai bảng STUDENTS VÀ GRADE để đổ dữ liệu vào QUẢN LÍ ĐIỂM SINH VIÊN
IF OBJECT_ID(N'View_grade') is not null
	DROP VIEW View_grade
GO
CREATE VIEW View_grade
AS
	SELECT STUDENTS.MaSV, STUDENTS.HoTen, TiengAnh, TinHoc, GDTC FROM STUDENTS JOIN GRADE ON STUDENTS.MaSV = GRADE.MaSV
GO
SELECT * FROM dbo.View_grade











