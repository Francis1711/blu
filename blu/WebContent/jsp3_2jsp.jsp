<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%! int n,rem,r; %>
<% n=Integer.parseInt(request.getParameter("num"));
      if(n<10)
     {     
       out.println("Sum of first and last digit is   ");
%><font size=18 color=red><%= n %></font>
<%
     }
    else
    {
      rem=n%10;
      do
      {
      	r=n%10;
        n=n/10;
      }while(n>0);
         
      	n=rem+r;
        out.println("Sum of first and last digit is    ");
%><font size=18 color=red><%= n %></font>
<%
     }
%>
</body>
</html>