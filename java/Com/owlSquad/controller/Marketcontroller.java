package Com.owlSquad.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Com.owlSquad.DAO.MarketDAO;
import Com.owlSquad.Model.MarketList;

/**
 * Servlet implementation class ControllerServlet
 */
@MultipartConfig
@WebServlet( urlPatterns = {"/market_new","/market_insert","/market_delete","/market_edit","/market_update","/market_list"})
public class Marketcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MarketDAO marketDAO;
	
	public void init() {
       marketDAO = new MarketDAO();
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	doGet(request, response);
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		try {
			 switch (action) {
	            case "/market_new":
	                showNewForm(request, response);
	                break;
	            case "/market_insert":
	                insertMarket(request, response);
	                break;
	            case "/market_delete":
	                deleteMarket(request, response);
	                break;
	            case "/market_edit":
	                showEditForm(request, response);
	                break;
	            case "/market_update":
	                updateMarket(request, response);
	                break;
	            default:
	            	listMarket(request, response);
	            	break;
			}
			
		} catch (SQLException ex) {
			// TODO: handle exception
			  throw new ServletException(ex);
		}
		
		
	}
	
	private void listMarket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		// TODO Auto-generated method stub
		 List<MarketList> listMarket = marketDAO.selectAllMarket();
		 request.setAttribute("listMarket", listMarket);
		RequestDispatcher dispatcher = request.getRequestDispatcher("MarketList.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		        RequestDispatcher dispatcher = request.getRequestDispatcher("MarketForm.jsp");
		        dispatcher.forward(request, response);
		    }
	
	private  void showEditForm(HttpServletRequest request, HttpServletResponse response)
		    throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        MarketList existingMarket = marketDAO.selectMarket(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("MarketForm.jsp");
        request.setAttribute("market", existingMarket);
        dispatcher.forward(request, response);

	}
	
	private void insertMarket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		String name = request.getParameter("name");
		name = new String(name.getBytes("8859_1"), "UTF-8");
//		String image = request.getParameter("image");
		
		Part file = request.getPart("image");
		String image = file.getSubmittedFileName();
		String uploadPath = "/Applications/Eclipse_2021-12.app/Contents/workspace/team-work/example/src/main/webapp/uploadImages/" + image;
		FileOutputStream fos = new FileOutputStream(uploadPath);
		System.out.println("Upload Path : "+uploadPath);

		InputStream is  = file.getInputStream();
		try {
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}
		
		
		String title = request.getParameter("title");
		title = new String(title.getBytes("8859_1"), "UTF-8");
		String description = request.getParameter("description");
		description = new String(description.getBytes("8859_1"), "UTF-8");
		String address = request.getParameter("address");
		address = new String(address.getBytes("8859_1"), "UTF-8");
		MarketList newMarket = new MarketList(name, image, title, description, address);
		marketDAO.insertMarket(newMarket);
        response.sendRedirect("market_list");
	}
	
	private void updateMarket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
		name = new String(name.getBytes("8859_1"), "UTF-8");
//        String image = request.getParameter("image");
        Part file = request.getPart("image");
		String image = file.getSubmittedFileName();
		String uploadPath = "/Applications/Eclipse_2021-12.app/Contents/workspace/team-work/example/src/main/webapp/uploadImages/" + image;
		FileOutputStream fos = new FileOutputStream(uploadPath);
		System.out.println("Upload Path : "+uploadPath);

		InputStream is  = file.getInputStream();
		try {
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();

		}
        String title = request.getParameter("title");
		title = new String(title.getBytes("8859_1"), "UTF-8");
        String description = request.getParameter("description");
		description = new String(description.getBytes("8859_1"), "UTF-8");
        String address = request.getParameter("address");
		address = new String(address.getBytes("8859_1"), "UTF-8");

        
        MarketList market = new MarketList(id,name, image, title, description, address);
        marketDAO.updateMarket(market);
        response.sendRedirect("market_list");
	}
	
	 private void deleteMarket(HttpServletRequest request, HttpServletResponse response)
			    throws SQLException, IOException{
		 int id = Integer.parseInt(request.getParameter("id"));
	        marketDAO.deleteMarket(id);
	        response.sendRedirect("market_list");
	 }
}
