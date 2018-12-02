<%-- 
    Document   : admin
    Created on : 27 Nov, 2018, 3:40:36 PM
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
           String fine=request.getParameter("fine");
           String fees=request.getParameter("fees");
           String attendance=request.getParameter("attendance");
           String marks=request.getParameter("marks");
           try{
		String myUrl="jdbc:mysql://localhost/acadview";
		//step 1:
		Class.forName("com.mysql.jdbc.Driver");
      		//step 2:
		Connection conn=DriverManager.getConnection(myUrl,"root","");
                String query="insert into admin values('"+name+"','"+fine+"','"+fees+"','"+attendance+"','"+marks+"'"; 
		//step 3:
		Statement st=conn.createStatement();
		//step 4:
		ResultSet rs =st.executeQuery(query);
		if(rs.next()){
                    out.print ("<script>alert('Successfully entered data.');</script>");
                    out.println("<script>window.location.href='index.html';</script>");                      
		}  
                else
                 out.print ("<script>alert('Invalid entry');</script>");
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