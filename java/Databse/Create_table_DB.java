package Databse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Create_table_DB {
	static final String URL = "jdbc:mysql://localhost/owl-squad";
    static final String USERNAME = "root";
    static final String PASSWORD = "";
 
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		Statement stmt = null;
		
		try{
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			stmt = conn.createStatement();
		          String sql = "CREATE TABLE users " +
		                   "(id INTEGER not NULL PRIMARY KEY AUTO_INCREMENT, " +
		                   " UserName VARCHAR(50), " + 
		                   " UserEmail VARCHAR(50), " + 
		                   " Password VARCHAR(50), " + 
		                   " post VARCHAR(50), " + 
		                   " Prefecture VARCHAR(50), " + 
		                   " City VARCHAR(50), " + 
		                   " street VARCHAR(50), " + 
		                   " room_number VARCHAR(50))"; 
 
		         stmt.executeUpdate(sql);
		         System.out.println("Created table in given database");   	  
		      } catch (SQLException e) {
		         e.printStackTrace();
		      } 

	}

}
