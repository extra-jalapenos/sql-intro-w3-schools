SELECT *, DATEDIFF(CURRENT_DATE(), OrderDate) AS DaysFromOrder FROM Orders;
