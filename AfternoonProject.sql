CREATE TABLE Person ( 
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name string,
    Age integer,
    Height integer,
    City string,
    FavoriteColor string,
);

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor)
VALUES ("First Last", 21, 182, "City", "Color");

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor )
VALUES ("Daenerys Targaryen", 22, 158.496, "Dragonstone","Red and Black");

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor )
VALUES ("Jon Snow", 22, 155.448, "Winterfell ","White and Black");

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor )
VALUES ("Drogo", 28, 156.448, "Lhazar","Brown");

INSERT INTO Person ( Name, Age, Height, City, FavoriteColor )
VALUES ("Tyrion Lannister", 38, 128.016, "Casterly Rock","Gold");

SELECT * FROM Person ORDER BY Height ASC;

SELECT * FROM Person ORDER BY Age DESC;

SELECT * FROM Person WHERE Age > 20;

SELECT * FROM Personn WHERE Age = 18;

SELECT * FROM Person WHERE Age < 20 OR Age > 30;

SELECT * FROM Person WHERE Age !=27;

SELECT * FROM Person WHERE FavoriteColor != "red";

SELECT * FROM Person WHERE FavoriteColor != "red" AND FavoriteColor != "blue";

SELECT * FROM Person WHERE FavoriteColor = "orange" OR FavoriteColor = "green";

SELECT * FROM Person WHERE FavoriteColor IN ("orange","green","blue");

SELECT * FROM Person WHERE FavoriteColor IN ("yellow", "purple");

CREATE TABLE Orders ( PersonID integer, ProductName string, ProductPrice float, Quantity integer );

INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity )
Values (0, "Product", 12.50, 2);

INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity )
Values (1, "Echo Dot (2nd Generation) - Smart speaker with Alexa - Black", 19.99, 100);

INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity )
Values (2, "Samsung UN55NU8000FXZA Flat 55 4K UHD 8 Series Smart LED TV (2018)", 847.99, 65);

INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity )
Values (3, "AKASO EK7000 4K WiFi Sports Action Camera Ultra HD Waterproof DV Camcorder 12MP 170 Degree Wide Angle", 59.99, 25);

INSERT INTO Orders ( PersonID, ProductName, ProductPrice, Quantity )
Values (4, "PlayStation 4 Slim 1TB Console - Call of Duty: Black Ops 4 Bundle", 299.99, 200);

SELECT * FROM Orders;

SELECT SUM(Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders;

SELECT SUM(ProductPrice * Quantity) FROM Orders WHERE PersonID =0;

INSERT INTO Artist ( Name ) VALUES ( 'Eminem' );

INSERT INTO Artist ( Name ) VALUES ( 'Drake' );

INSERT INTO Artist ( Name ) VALUES ( 'Prince' );

SELECT * FROM Artist ORDER BY Name Desc LIMIT 10;

SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;

SELECT * FROM Artist WHERE Name LIKE 'Black%';

SELECT * FROM Artist WHERE Name LIKE '%Black%';

SELECT FirstName, LastName FROM EMployee WHERE City = "Calgary";

SELECT FirstName, LastName, Max(BirthDate) FROM Employee;

SELECT FirstName, LastName, Min(BirthDate) FROM Employee;

SELECT * FROM Employee WHERE ReportsTo = 2;

SELECT COUNT(*) FROM Employee WHERE City = "Lethbridge";

SELECT Count(*) FROM Invoice WHERE BillingCountry = 'USA';

SELECT Max(total) FROM Invoice;

SELECT Min(total) FROM Invoice;

SELECT * FROM Invoice WHERE Total > 5;

SELECT * FROM Invoice WHERE Total < 5;

SELECT Count(*) FROM Invoice WHERE Billingstate in ('CA','TX','AZ');

SELECT AVG(Total) FROM Invoice;

SELECT SUM(Total) FROM Invoice;



