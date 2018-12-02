<%-- 
    Document   : fees
    Created on : 27 Nov, 2018, 11:43:38 AM
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
        <table width='100%'>
           <tr style="background-color:whitesmoke; color: green; font-weight: bold; font-size: 14">
                <td>Student's Name</td>
                <td>Fees Due(in Rupees)</td>
            </tr>
        <%
           String name=request.getParameter("name");
           Connection conn=null;
           Statement st=null;
           ResultSet rs=null;
           try
             {
                String myUrl="jdbc:mysql://localhost/acadview";
		Class.forName("com.mysql.jdbc.Driver");      		
		conn=(Connection)DriverManager.getConnection(myUrl,"root","");
                st=conn.createStatement();
                String qry="select name,fees from admin where name= '"+name+"'";    
                rs=st.executeQuery(qry);
                while(rs.next())
                {
                %>
                <tr style="color:whitesmoke;">
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                </tr>
                <%   
                }
             }
            catch(Exception e)
            {                
                out.println(e);   
            }
        %>
        </table>
    </body>
</html>
