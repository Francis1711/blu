

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class s4
 */
@WebServlet("/s4")
public class s4 extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String sno = req.getParameter("SeatNo");
		String sname = req.getParameter("StudName");
		String cls = req.getParameter("Class");
		int total = Integer.parseInt(req.getParameter("TotalMks"));

		out.print("<h4><br>Seat No: " + sno);
		out.print("<br>Student Name: " + sname);
		out.print("<br>Class: " + cls);
		out.print("<br>Total marks: " + total);

		float per = total/6;
		out.print("<br>Percentage : " + per);
		if(per>69)
			out.print("<br> Grade : A+" );		
		else if(per>59)
			out.print("<br> Grade : A" );
		else if(per>49)
			out.print("<br> Grade : B" );
		else if(per>34)
			out.print("<br> Grade : C" );
		else 
			out.print("<br> <font color='red'> Fail </font>" );
	}

	

}
