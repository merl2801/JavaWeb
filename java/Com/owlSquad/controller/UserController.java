package Com.owlSquad.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Com.owlSquad.DAO.UserDAO;
import Com.owlSquad.Model.User;

/**
 * Servlet implementation class RegisterController
 */
@WebServlet( urlPatterns = {"/register","/entry","/login"})
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
	public void init() {
		userDAO = new UserDAO();
	}
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response);

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/register":
				insertUser(request, response);
				break;
			case "/login":
				loginUser(request, response);
				break;
			case "/entry":
				showEntryPage(request, response);			
			default:
				break;
			}
			} catch (SQLException ex) {
			// TODO: handle exception
				throw new ServletException(ex);
		}
	
	}
	
	public void showEntryPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		RequestDispatcher dispatcher = request.getRequestDispatcher("entry.jsp");
		dispatcher.forward(request, response);
	}
	
	
	
	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		HttpSession session = request.getSession();
		 MessageDigest digest = null;
		 try {
		 	digest = MessageDigest.getInstance("SHA-1");
		 } catch (NoSuchAlgorithmException e1) {
		 	// TODO 自動生成された catch ブロック
		 	e1.printStackTrace();
		 }
		String name = request.getParameter("name");
		name = new String(name.getBytes("8859_1"), "UTF-8");
		String email = request.getParameter("email");
		String password = request.getParameter("password");	
		 byte[] result = digest.digest(password.getBytes());
		 password= String.format("%040x", new BigInteger(1, result));
		
		
		String post = request.getParameter("post-office");
		String prefecture = request.getParameter("prefecture");
		prefecture = new String(prefecture.getBytes("8859_1"), "UTF-8");
		String city = request.getParameter("city");
		city = new String(city.getBytes("8859_1"), "UTF-8");
		String street = request.getParameter("street");
		street = new String(street.getBytes("8859_1"), "UTF-8");
		String room_number = request.getParameter("room_number");
		room_number = new String(room_number.getBytes("8859_1"), "UTF-8");
		User user = new User(name, email, password, post, prefecture, city, street,room_number);
		userDAO.insertUser(user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("entry.jsp");
		session.setAttribute("Uname", user.getName());
		session.setAttribute("Uemail", user.getEmail());
		session.setAttribute("Upassword", user.getPassword());
		session.setAttribute("Upost", user.getPost_office());
		session.setAttribute("Uprefecture", user.getPrefecture());
		session.setAttribute("Ucity", user.getCity());
		session.setAttribute("Ustreet", user.getStreet());
		session.setAttribute("Uroom_number", user.getRoom_number());
		dispatcher.forward(request, response);


		
	}
	
	private void loginUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		HttpSession session = request.getSession();
		 MessageDigest digest = null;
		 try {
		 	digest = MessageDigest.getInstance("SHA-1");
		 } catch (NoSuchAlgorithmException e1) {
		 	// TODO 自動生成された catch ブロック
		 	e1.printStackTrace();
		 }

		String uemail = request.getParameter("userName");
		String upwd = request.getParameter("password");
		byte[] result = digest.digest(upwd.getBytes());
		 upwd = String.format("%040x", new BigInteger(1, result));
		 User user = new User();
		 user.setEmail(uemail);
		 user.setPassword(upwd);	
		 
		 try {
			if(userDAO.loginUser(user)) {
				response.sendRedirect("entry.jsp");
			} else {
				response.sendRedirect("MarketList.jsp");
            }
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}

}
