<%-- 
    Document   : logout
    Created on : 2 Dec, 2018, 5:22:44 PM
    Author     : JashanVincy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            out.print ("<script>alert('Successfully Logged out.');</script>");
            out.println("<script>window.location.href='home.html';</script>");   
        %>
        
    </body>
</html>
