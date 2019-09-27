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
		int rno=Integer.parseInt(request.getParameter("txtRollNo"));
		String SName=request.getParameter("txtName");
		String SGender=request.getParameter("gen");
		String SClass=request.getParameter("Class");
		String SComp_Know=request.getParameter("Comp");
		
		out.println("\n<h1> Student Information </h1>");
		
		out.println("<hr><br>");
		out.println("\n RollNo :"+rno);
		out.println("<br>");
		out.println("\n Name :"+SName);
		out.println("<br>");
		out.println("\n Gender :"+SGender);
		out.println("<br>");
		out.println("\n Class :"+SClass);
		out.println("<br>");
		out.println("\n Comp_Know:"+SComp_Know);
	%>
</body>
</html>