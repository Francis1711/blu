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
	String product2[]=request.getParameterValues("chk1");
	int total2=0;
	for(int i=0;i<product2.length;i++)
	{
		total2+=Integer.parseInt(product2[i]);
	}
	int total1=Integer.parseInt(session.getAttribute("total1").toString());
%>
<center>
	<h1>Bill Information</h1>
</center>
<table border=2 cellspacing=0>
	<tr>
		<td><b>Page1:</b></td>
		<td>Rs.<%=total1 %></td>
	</tr>
	<tr>
		<td><b>Page2:</b></td>
		<td>Rs.<%=total2 %></td>
	</tr>	
	<tr>
		<td><b>Grand Total:</b></td>
		<td>Rs.<%=total1+total2 %></td>
	</tr>
</table>
</body>
</html>