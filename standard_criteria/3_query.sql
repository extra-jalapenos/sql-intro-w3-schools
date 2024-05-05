SELECT SUBSTRING_INDEX(CustomerName, " ", 1) As FirstName, COUNT(*) AS Count FROM Customers GROUP BY FirstName ORDER BY Count DESC

-- yes, there are 3 duplicate first names: "Hungry", "La", "The", 88 are distinct, 91 total
