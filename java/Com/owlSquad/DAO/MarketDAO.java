package Com.owlSquad.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Com.owlSquad.Model.MarketList;

public class MarketDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/owl-squad?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    
    public MarketDAO() {
    	
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
    
    public void insertMarket(MarketList marketList) throws SQLException {
    	String sql = "INSERT INTO ListMarket (name, image, title, description, address, created_at, updated_at) VALUES (?, ?, ?, ?, ?, now(), now())";
		
    	try (Connection connection = getConnection(); 
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
			preparedStatement.setString(1, marketList.getName());
			preparedStatement.setString(2, marketList.getImage());
			preparedStatement.setString(3, marketList.getTitle());
			preparedStatement.setString(4, marketList.getDescription());
			preparedStatement.setString(5, marketList.getAddress());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			printSQLException(e);
		}
    }
    
    public MarketList selectMarket(int id) {
    	MarketList market = null;
    	String sql = "SELECT * FROM ListMarket WHERE id = ?";
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
				preparedStatement.setInt(1, id);
				ResultSet rs = preparedStatement.executeQuery();
				
				while (rs.next()) {
					String name = rs.getString("name");
					String image = rs.getString("image");
					String title = rs.getString("title");
					String description = rs.getString("description");
					String address = rs.getString("address");
					
					market = new MarketList(id, name, image, title ,description, address);
				}
		} catch (SQLException e) {
            printSQLException(e);
		}
    	
		return market;
    	
    }
    
    public List <MarketList> selectAllMarket(){
    	List< MarketList> marketList = new ArrayList<>();
    	String sql = "SELECT * FROM ListMarket";
    	
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		
    		ResultSet rs = preparedStatement.executeQuery();
    		while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String image = rs.getString("image");
				String title = rs.getString("title");
				String description = rs.getString("description");
				String address = rs.getString("address");
				
				marketList.add(new MarketList(id, name, image, title, description, address));
			}
			
		} catch (SQLException e) {
            printSQLException(e);
		}
		return marketList;
    }
    
    
    public boolean deleteMarket(int id) throws SQLException {
    	boolean rowDeleted;
    	String sql = "DELETE FROM ListMarket where id = ?";
    	try (Connection connection = getConnection();
    			PreparedStatement statement = connection.prepareStatement(sql);){
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		} 
		return rowDeleted;
    	
    }
    
    public boolean updateMarket(MarketList marketList) throws SQLException {
		boolean rowUpdate;
		String sql = "UPDATE ListMarket SET name = ?, image = ?, title = ?, description = ?, address = ?, updated_at = now()  where id = ?";
		try(Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(sql);){
			statement.setString(1, marketList.getName());
	    	statement.setString(2, marketList.getImage());
	    	statement.setString(3, marketList.getTitle());
	    	statement.setString(4, marketList.getDescription());
	    	statement.setString(5, marketList.getAddress());
	    	statement.setInt(6, marketList.getId());
	    	
	    	rowUpdate = statement.executeUpdate() > 0;
		}
    	return rowUpdate;
    	
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
