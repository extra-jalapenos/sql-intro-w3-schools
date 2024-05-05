SELECT DATEDIFF(MAX(OrderDate), MIN(OrderDate)) / 365 AS Difference_Oldest_Newest FROM Orders;
-- 1.8384 years
