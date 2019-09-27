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
		String Email=request.getParameter("txtEmail");
		out.println(Email);
		if(Email.contains("@"))
        {
        out.println("Given Email Id is Valid");
        }
        else        
        {
        out.println("Given Email id is not Valid");
        }
	%>
</body>
</html>