Create database Store
Use Store Go

Create table Products ( Id int Primary key, Name nvarchar(50) NOT NULL )
Create table Category ( Id int Primary key, Name nvarchar(50) NOT NULL )

Create table Products_Category (
	Products_Id INT NOT NULL,  
    Category_Id INT NOT NULL, 	
    FOREIGN KEY (Products_Id) REFERENCES Products(Id) ON UPDATE CASCADE,  
    FOREIGN KEY (Category_Id) REFERENCES Category(Id) ON UPDATE CASCADE
)

Insert into Products Values (1, 'T Shirt')
Insert into Products Values (2, 'Sandals')
Insert into Products Values (3, 'Boots')
Insert into Products Values (4, 'Tuxedo')

Insert into Category Values (1, 'Light clothes')
Insert into Category Values (2, 'Shoes')

Insert into Products_Category Values (1, 1)
Insert into Products_Category Values (2, 1)
Insert into Products_Category Values (2, 2)
Insert into Products_Category Values (3, 2)

Select Products.Name, Category.Name from Products Left Join Products_Category
On Products.Id = Products_Category.Products_Id
Left Join Category
On Products_Category.Category_Id = Category.Id