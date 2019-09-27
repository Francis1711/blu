

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class s3
 */
@WebServlet("/s3")
public class s3 extends HttpServlet {
	
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		HttpSession session=request.getSession();
		pw.println("the prevoious timeout was "+session.getMaxInactiveInterval());
		session.setMaxInactiveInterval(2*60*60);
		pw.println("<br>the newly assigned timeout is "+session.getMaxInactiveInterval());
		
		
	}


}
