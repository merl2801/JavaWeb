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
		int role_as = 0;
		
		User user = new User(name, email, password, role_as);
		userDAO.insertUser(user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("entry.jsp");
		session.setAttribute("Uname", user.getName());
		session.setAttribute("Uemail", user.getEmail());
		session.setAttribute("Upassword", user.getPassword());
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
		 
		 int role_as_1 = 1;
		 
		 User user = new User();
		 
		 User role_as_Admin = new User();
		 
		 user.setEmail(uemail);
		 user.setPassword(upwd);
		 role_as_Admin.setRole_as(role_as_1);
		 role_as_Admin.setEmail(uemail);
		 role_as_Admin.setPassword(upwd);
		
		 
		 
		 try {
			if(userDAO.loginUser(user) && userDAO.checkRole_as(role_as_Admin)) {
//				session.setAttribute("email", user.getEmail());
				response.sendRedirect("Admin/MarketList.jsp");
			}else if(userDAO.loginUser(user)) {
				session.setAttribute("email", user.getEmail());
				response.sendRedirect("storesuccess.jsp");
			}else {
				response.sendRedirect("login.jsp");
            }
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}
	
	public void LoginDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
		
	}

}