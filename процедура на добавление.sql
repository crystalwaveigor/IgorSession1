create proc Dobavlenie
    @id int,
    @��� nvarchar(50),
    @����� int
AS
    INSERT INTO �������� (id_��������, �����, ���)
    VALUES (@id,@���, @�����)
  
    SELECT SCOPE_IDENTITY()
GO