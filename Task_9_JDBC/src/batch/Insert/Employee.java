package batch.Insert;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.SQLException;

public class Employee {

    public static void main(String[] args) {
        // Establish the connection to the database
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Task_9_MySql", "root", "root0@9(")) {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Check if the connection is successful
            if (connection != null) {
                System.out.println("Connection Successful!");
            }

            // Create a statement object for batch processing
            Statement statement = connection.createStatement();
            
            // Add SQL insert statements to the batch
            statement.addBatch("INSERT INTO Employee (EmpCode, EmpName, EmpAge, ESalary) VALUES (101, 'Jenny', 25, 10000)");
            statement.addBatch("INSERT INTO Employee (EmpCode, EmpName, EmpAge, ESalary) VALUES (102, 'Jacky', 30, 20000)");
            statement.addBatch("INSERT INTO Employee (EmpCode, EmpName, EmpAge, ESalary) VALUES (103, 'Joe', 20, 40000)");
            statement.addBatch("INSERT INTO Employee (EmpCode, EmpName, EmpAge, ESalary) VALUES (104, 'John', 40, 80000)");
            statement.addBatch("INSERT INTO Employee (EmpCode, EmpName, EmpAge, ESalary) VALUES (105, 'Shameer', 25, 90000)");

            // Execute the batch of SQL statements
            int[] updateCounts = statement.executeBatch();

            // Check the result of the batch execution
            if (updateCounts.length > 0) {
                System.out.println("Batch execution completed!!");
            } else {
                System.out.println("Batch execution failed!!");
            }
        } 
        // Handle exceptions for JDBC and SQL errors
        catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
        }
        // Handle any other exceptions
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
