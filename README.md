# EmployeeList
This is project made in .NetCore and angular 6.0

This Project has 2 folders:
1) EmployeeCrud : This is the client side i.e. UI part
2) EmployeeCRUDAPI: This is for the Server side coding. This generates a MVC Controller API which is been used by the client.

There is one Employee.sql file which has the database schema and the stored procedure script for performing the CRUD operations.

The main architecture of the Back hand code is following the 3 tier architecture i.e. DAL, Presentation Layer and Business Logic Layer.
This is achieved by using the Dependency Injection. 
In the project i have used Dapper as an ORM for mapping an object-oriented domain model to a traditional relational database.

For the client code is in the EmployeeCrud folder.
I am using Angular6 basic for the Crud operation
The UI code is written in EmployeeCrud\src\app
