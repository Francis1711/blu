

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class User
 */
@WebServlet("/User")
public class User extends HttpServlet {
	public void doGet(HttpServletRequest rq,HttpServletResponse rs) throws IOException{
		PrintWriter a=rs.getWriter();
		String mess="";
		int flag1=1;
	try {
		String struser =rq.getParameter("uname");
		String strpass =rq.getParameter("pass");
		//a.println("__:"+struser+"  ___ "+strpass);
	    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	    Connection con = DriverManager.getConnection("jdbc:odbc:dns2");
	    String sql = "Select username,password from stud";
	    Statement stmt = con.createStatement();
	    ResultSet rs1 = stmt.executeQuery( sql );
	   
	    while(rs1.next())
	    {
	  	if(rs1.getString("username").equals(struser) && rs1.getString("password").equals(strpass))
	    	{
	  		   flag1=2;
	    	  break;
	    	
	    	}
	    	else
	    	{
	    		flag1=1;
	    	}
	    	
	  	
	    }
	    
	    if(flag1==2)
	    	a.println("message:sucess");
	    if(flag1==1)
	    		a.println("message:wrong");
	}
	catch (Exception e){
		
	}
	
		
}

}
