<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*;" %>
<%! 
       String ano,type,bal;  
%>
<%
      ano=request.getParameter("ano");
      type=request.getParameter("type");
      bal=request.getParameter("bal");
      try{
            Class.forName("sun.jdbc.odbc.JdbcdbcDriver");
            Connection cn=DriverManager.getConnection("jdbc:odbc:dns2");
            PreparedStatement s=cn.prepareStatement("insert into Account values(?,?,?)");
            s.setString(1,ano);
            s.setString(2,type);
            s.setString(3,bal);
            s.executeUpdate();
            out.println("Record is saved");
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("select * from Account");
           
%>

<table border="1" width="40%" cellspacing=0>
<%      while(rs.next())
            {
%>
<tr> <td><%= rs.getString("Account_no") %></td>
            <td><%= rs.getString("Account_type") %></td>
            <td><%= rs.getString("Account_bal") %></td>
</tr>
<%
            }
            cn.close();
          }catch(Exception e)
            {      
                   out.println(e);      
            }
%>
</body>
</html>