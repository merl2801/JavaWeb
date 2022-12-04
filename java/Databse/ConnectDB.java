package Databse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	static final String URL = "jdbc:mysql://localhost/test";
    static final String USERNAME = "root";
    static final String PASSWORD = "";
 
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection conn ;
//		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "");
//		
//			System.out.println("Database connected");	
//		try( Connection conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
//				){
//			System.out.println("Database Connected");
//			
//		} catch (SQLException e) {
//			e.printStackTrace();;
//		}
		
		Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		System.out.println("Database Connected");
		
		conn.close();
	}

}
