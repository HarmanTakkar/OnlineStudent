<%-- 
    Document   : teafeedback
    Created on : 27 Nov, 2018, 4:05:06 PM
    Author     : JashanVincy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String experience=request.getParameter("experience");
           String comments=request.getParameter("comments");
           String name=request.getParameter("name");
           String email=request.getParameter("email");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/acadview";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into feedback_teacher values('"+experience+"','"+comments+"','"+name+"','"+email+"')");              
                out.println("<script>alert('Posted Successfully.');</script>");
                out.println("<script>window.location.href='index.html';</script>");
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>