package Com.owlSquad.controller;

import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logincontroller
 */
@WebServlet( urlPatterns = {"/login2"})
public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final String URL = "jdbc:mysql://localhost/owl-squad";
    static final String USERNAME = "root";
    static final String PASSWORD = "";
       
    RequestDispatcher dispatcher = null;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
				
				HttpSession session = request.getSession();
				
				
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection(URL,USERNAME,PASSWORD);
					PreparedStatement pst = con.prepareStatement("select * from users where email = ? and password = ?");
					pst.setString(1, uemail);
					pst.setString(2, upwd);
					
					ResultSet rs = pst.executeQuery();
					
					if (rs.next()) {
						session.setAttribute("name",rs.getString("name"));
						dispatcher = request.getRequestDispatcher("entry.jsp");
					}else {
						request.setAttribute("status", "failed");
						dispatcher = request.getRequestDispatcher("login.jsp");

					}
					
					dispatcher.forward(request, response);

				} catch (Exception e) {
					e.printStackTrace();
				}
	}

}
