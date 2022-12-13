package Com.owlSquad.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Com.owlSquad.Model.Store;

public class StoreDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/owl-squad?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";
    
    
    public StoreDAO() {
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
    
    public Store selectStore(String email ) {
    	Store store = null;
    	String sql = "SELECT Market_Detail.id ,Market_Detail.name, Market_Detail.address, Market_Detail.phone, Market_Detail.business_hours, Market_Detail.Products_handled, Market_Detail.image FROM Market_Detail JOIN users ON users.id = Market_Detail.id WHERE users.email = ?";
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
			preparedStatement.setString(1, email);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String business_hours  = rs.getString("business_hours");
				String products_handled = rs.getString("products_handled");
				String image = rs.getString("image");
				
				store = new Store(email,id,name,address,phone,business_hours,products_handled,image);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
    	return store;
    }
    
    public Store selectStorebyId(int id) {
    	Store Editstore = null;
    	String sql = "SELECT * FROM market_detail WHERE id = ?";
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		preparedStatement.setInt(1, id);
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				String name = rs.getString("name");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String business_hours  = rs.getString("business_hours");
				String products_handled = rs.getString("products_handled");
				String image = rs.getString("image");
				Editstore = new Store(name, address, phone, business_hours, products_handled,image);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			printSQLException(e);
		}
    	return Editstore;
    }
    
    public List<Store> selectAllStores(){
    	List<Store> storeList = new ArrayList<Store>();
    	String sql = "SELECT * FROM Market_Detail";
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql);){
    		
    		ResultSet rs = preparedStatement.executeQuery();
    		while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String address = rs.getString("address");
				int phone = rs.getInt("phone");
				String business_hours  = rs.getString("business_hours");
				String products_handled = rs.getString("products_handled");
				String image = rs.getString("image");
				
				storeList.add(new Store(id,name,address,phone,business_hours,products_handled,image));
			}
    	} catch (SQLException e) {
            printSQLException(e);
		}
    	return storeList;
    }
    
    public void insertStore(Store store) throws SQLException{
    	String sql = "INSERT INTO Market_Detail (name, address, phone, business_hours, products_handled, image, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, now(), now())";
    	
    	try (Connection connection = getConnection();
    			PreparedStatement preparedStatement = connection.prepareStatement(sql)){
    		
    		preparedStatement.setString(1, store.getName());
    		preparedStatement.setString(2, store.getAddress());
    		preparedStatement.setInt(3, store.getPhone());
    		preparedStatement.setString(4, store.getBusiness_hours());
    		preparedStatement.setString(5, store.getProducts_handled());
    		preparedStatement.setString(6, store.getImage());
    		
    		int rowCount = preparedStatement.executeUpdate();
    		
			
		} catch (SQLException e) {
			// TODO: handle exception
			printSQLException(e);
		}
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
