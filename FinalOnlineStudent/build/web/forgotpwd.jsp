<%-- 
    Document   : forgotpwd
    Created on : 26 Nov, 2018, 2:11:26 PM
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
    <body  background='images/bg-2.jpg'>
     <font style="color:whitesmoke;">
       <%
           String email=request.getParameter("email");
           String father_name=request.getParameter("father_name");
          
           try{
		String myUrl="jdbc:mysql://localhost/acadview";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="Select email,father_name,password from registration where email= '"+email+"'and father_name='"+father_name+"'";
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
                     out.println("Your Password is :-"+rs.getString("password"));
                     Thread.sleep(5000);
                     out.println("<script>window.location.href='login.html';</script>");                      
		}  
                else
                out.println("Invalid email or father's name.");
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
