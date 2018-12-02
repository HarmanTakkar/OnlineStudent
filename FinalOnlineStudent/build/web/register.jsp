<%-- 
    Document   : register
    Created on : 24 Nov, 2018, 8:13:21 PM
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
           String name=request.getParameter("name");
           String fname=request.getParameter("father_name");
           String address=request.getParameter("address");
           String gender=request.getParameter("gender");
           String state=request.getParameter("state");
           String city=request.getParameter("city");
           String dob=request.getParameter("dob");
           String pincode=request.getParameter("pincode");
           String course=request.getParameter("course");
           String email=request.getParameter("email");
           String password=request.getParameter("password");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/acadview";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                st.executeUpdate("insert into registration values('"+name+"','"+fname+"','"+address+"','"+gender+"','"+state+"','"+city+"','"+dob+"','"+pincode+"','"+course+"','"+email+"','"+password+"')");              
                out.println("<script>alert('Registered Successfully.');</script>");
                out.println("<script>window.location.href='login.html';</script>");
            }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
    </body>
</html>