<%-- 
    Document   : student
    Created on : 24 Nov, 2018, 5:05:05 PM
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
           String uname=request.getParameter("name");
           String pwd=request.getParameter("password");
           try{
		String myUrl="jdbc:mysql://localhost/acadview";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="Select name,password from registration where name= '"+uname+"' and password='"+pwd+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
                    out.print ("<script>alert('Successfully Logged in.');</script>");
                    out.println("<script>window.location.href='index.html';</script>");                      
		}  
                else
                 out.print ("<script>alert('Invalid username or password.');</script>");
		//step 5
		st.close();
		}
		catch(Exception e){
			System.out.println("Got an exception! ");
			System.out.println(e.getMessage());
		}
           
        %>
    </body>
</html>