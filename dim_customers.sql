-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT 
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Gender, 
	c.Age,
	g.Country,
	g.City
FROM 
	dbo.customers c
LEFT JOIN
	dbo.geography g
ON 
	g.GeographyID = c.GeographyID;