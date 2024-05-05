SELECT AVG(DATEDIFF(CURRENT_DATE(), OrderDate) / 365) AS AvgYearsFromOrder FROM Orders;
-- 26.75796666 years
