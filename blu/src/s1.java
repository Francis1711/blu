

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class s1
 */
@WebServlet("/s1")
public class s1 extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		boolean b=false;
		Cookie cks[]=request.getCookies();
		
		if(cks!=null)
		{
			for(int i=0;i<cks.length;i++)
			{
					if(cks[i].getName().equals("counter"))
					{
						int count=Integer.parseInt(cks[i].getValue());
						count++;
						
						cks[i].setMaxAge(0);
						
						Cookie ck=new Cookie("counter", Integer.toString(count));
						response.addCookie(ck);
						
						pw.println("You have visited this page for :"+count+"tiems");
						b=true;
						break;
					}
			}
		}
		if(b==false)
		{
			Cookie ck = new Cookie("Counter", "1");
			response.addCookie(ck);
			pw.println("Welcome!! ");
		}	
	}

}
