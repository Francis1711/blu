<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	
	try
	{
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection cn=DriverManager.getConnection("jdbc:odbc:dsn2");
		Statement st=cn.createStatement();
		ResultSet rs=st.executeQuery("select * from tblHospital");
		
	
	out.println("\n<h1> Hospital Information </h1>");
	%>
	
	<table border="2">
		<tr>
			<td>Hno</td>
			<td>Hname</td>
			<td>Address</td>
		</tr>
		<%      while(rs.next())
                        {
        %>
		<tr>
			<td><%= rs.getInt("HNO") %></td>
				<td><%= rs.getString("HNAME") %></td>
					<td><%= rs.getString("ADDRESS") %></td>
		</tr>
		<% 
                        }
	}
	catch(Exception e)
	{
			out.println(e);
	}
		%>
	</table>
</body>
</html>