### EF Exercise Tasks:
1. Scaffold the AdventureWorksLT2022 database into the EFCore.Data project - you may use EF Core Power Tools or a tool of your choise.
2. Implement a repository pattern for accessing the database. Put your repositories in the EFCore.Repositories project. You may use the provided IRepository.cs interface or use another appropriate interface if you choose so.
3. There is a console application in the EFCore.AdventureWorksLT2022 project. Register your repositories in the container and make the following queries:
	- Load all products from the Products table;
	- Load sale order with ID 71780. Make sure you load all relevant records from the SalesOrderDetail table;
4. Run the provided scripts, creating the AccountManager and the CustomerAccountManager. These scripts create 2 new tables and defines a many-to-many relationship between the AccountManager and the Customer tables. Run the script which assigns account managers to the different customers. **Make sure that you run these scripts after you've done your initial scaffolding**.
5. Modify your DB context file (AdventureWorksContext) **by hand**, so that it includes the 2 newly created tables.
6. Write a query, which returns all account managers with the count of companies, they are responsible for, e.g returning a Dictionary<string, int>, containing the name of the account manager as the key and the number of companies as a value. Feel free to choose a different data structure.
7. Write a query, which returns all account managers with a list of company names, they are responsible for.