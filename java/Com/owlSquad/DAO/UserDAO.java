package Com.owlSquad.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Com.owlSquad.Model.User;

public class UserDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/owl-squad?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    
    public UserDAO() {
    	
    }
    
    protected Connection getConnection() {
    	Connection connection = null;
    	try {
    		 Class.forName("com.mysql.cj.jdbc.Driver");
             connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
    	return connection;
    }
    
    public void insertUser(User user) throws SQLException{
    	String sql = "INSERT INTO users(name,email,password,role_as,created_at,updated_at) VALUES(?,?,?,?,now(),now()) ";
    	try (Connection connection = getConnection(); 
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		preparedStatement.setString(1, user.getName());
    		preparedStatement.setString(2, user.getEmail());
    		preparedStatement.setString(3, user.getPassword());
    		preparedStatement.setInt(4, user.getRole_as());
    		
    		preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			printSQLException(e);
		}
    }
    
    public boolean loginUser(User user) throws ClassNotFoundException{
    	boolean status = false;
    	
    	String sql = "select * from users where email = ? and password = ?";
    	try(Connection connection = getConnection(); 
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		preparedStatement.setString(1, user.getEmail());
    		preparedStatement.setString(2, user.getPassword());
			
    		ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
    	} catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return status;
    	
    }
    
    
    public boolean checkRole_as(User role) {
    	boolean status = false;
    	String sql = "select * from users where email = ? and password = ? and role_as = ?";
    	try (Connection connection = getConnection(); 
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		preparedStatement.setString(1, role.getEmail());
    		preparedStatement.setString(2, role.getPassword());
    		preparedStatement.setInt(3, role.getRole_as());
    		ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
		} catch (Exception e) {
			// TODO: handle exception
		}
    	return status;
    }
    

	
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}