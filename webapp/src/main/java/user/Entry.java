package user;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/entry/detail")
public class Entry extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String storeName = request.getParameter("storeName");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String time = request.getParameter("time");
		String name = request.getParameter("name");
		
		System.out.println(storeName);
		System.out.println(address);
		System.out.println(phone);
		System.out.println(time);
		System.out.println(name);
		
		System.out.println("ログイン成功");
		
		String uri = request.getContextPath() + "/user";
		response.sendRedirect(uri);
	}

}