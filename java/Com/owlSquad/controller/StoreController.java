package Com.owlSquad.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.owlSquad.DAO.StoreDAO;
import Com.owlSquad.Model.Store;

/**
 * Servlet implementation class StoreController
 */
@WebServlet(urlPatterns = {"/store_insert","/detail"})
public class StoreController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StoreDAO storeDAO;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public void init() {
    	storeDAO = new StoreDAO();
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
			case "/store_insert":
				insertStore(request, response);
				break;

			case "/detail":
				showdetail(request, response);
				break;
			default:
				break;
			}
			
		} catch (SQLException ex) {
			// TODO: handle exception
			throw new ServletException(ex);
		}
		
		
	}
	
	public void showdetail(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		Store existingStore = storeDAO.selectStore(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("detail.jsp");
		request.setAttribute("store", existingStore);
		dispatcher.forward(request, response);

	}
	
	public void insertStore(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{	
		HttpSession session = request.getSession();
		
		String name = request.getParameter("name");
		name = new String(name.getBytes("8859_1"), "UTF-8");
		String address = request.getParameter("address");
		address = new String(address.getBytes("8859_1"), "UTF-8");
		int phone = Integer.parseInt(request.getParameter("phone"));
		String business_hours = request.getParameter("business_hours");
		String products_handled	 = request.getParameter("products_handled");
		products_handled = new String(products_handled.getBytes("8859_1"), "UTF-8");
		String image = request.getParameter("image"); 
		
		Store newStore = new Store(name, address, phone, business_hours, products_handled,image);
		storeDAO.insertStore(newStore);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("detail.jsp");
		session.setAttribute("UserMarketName", newStore.getName());
		session.setAttribute("UserMarketAddress", newStore.getAddress());
		session.setAttribute("UserMarketPhone", newStore.getPhone());
		session.setAttribute("UserMarketBusiness_hours", newStore.getBusiness_hours());
		session.setAttribute("UserMarketProduct_handle", newStore.getProducts_handled());
		session.setAttribute("UserMarketImage", newStore.getImage());

		dispatcher.forward(request, response);
//		response.sendRedirect("detail");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

}
