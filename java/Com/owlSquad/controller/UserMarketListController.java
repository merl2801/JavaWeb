package Com.owlSquad.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Com.owlSquad.DAO.MarketDAO;
import Com.owlSquad.Model.MarketList;

/**
 * Servlet implementation class User_Market
 */
@WebServlet(urlPatterns = {"/User_market"})
public class UserMarketListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MarketDAO marketDAO;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserMarketListController() {
    	marketDAO = new MarketDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	doGet(request, response);
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/User_market":
				UlistMarket(request, response);
				break;

			default:
				break;
			}
		} catch (SQLException ex) {
			// TODO: handle exception
			throw new ServletException(ex);
		}
		
	}
	
	private void UlistMarket(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		// TODO Auto-generated method stub
		 List<MarketList> Ulistmarket = marketDAO.selectAllMarket();
		 request.setAttribute("UlistMarket", Ulistmarket );
		RequestDispatcher dispatcher = request.getRequestDispatcher("UserMarketList.jsp");
		dispatcher.forward(request, response);
	}

}
