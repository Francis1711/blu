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
	String product[]=request.getParameterValues("chk1");
	int total=0;
	for(int i=0;i<product.length;i++)
	{
		total+=Integer.parseInt(product[i]);
	}
	session.setAttribute("total",total);
	response.sendRedirect("jsp2_3ShopAgain.html");
%>
</body>
</html>