SELECT *, DATEDIFF(CURRENT_DATE(), OrderDate) / 365 AS YearsFromOrder FROM Orders;
