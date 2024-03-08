package servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class update
 */
public class update extends HttpServlet {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int regno=Integer.parseInt(request.getParameter("regno"));
		String name=request.getParameter("name");
		String dep=request.getParameter("department");
		String sec=request.getParameter("section");
		String district=request.getParameter("district");
		String mobile=request.getParameter("mobileno");
		try {
			database db=new database();
			db.updateData(regno, name, dep, sec, district, mobile);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("select");
		
	}

}
