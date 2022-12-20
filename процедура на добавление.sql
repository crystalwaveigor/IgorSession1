create proc Dobavlenie
    @id int,
    @ФИО nvarchar(50),
    @ГОРОД int
AS
    INSERT INTO Абоненты (id_Абонента, Адрес, ФИО)
    VALUES (@id,@ФИО, @ГОРОД)
  
    SELECT SCOPE_IDENTITY()
GO