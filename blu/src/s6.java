

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class s6
 */
@WebServlet("/s6")
public class s6 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		try{
			String s1=request.getParameter("ch");
			Cookie c=new Cookie("hob", s1);
			pw.println("hobby are:"+s1);
			response.addCookie(c);
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
