<%-- 
    Document   : contact
    Created on : Nov 7, 2023, 9:18:13 AM
    Author     : SSD ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            String name1 = request.getParameter("name");
            String email = request.getParameter("email");
            String ph = request.getParameter("phone");
            String ms = request.getParameter("message");
            
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
                Statement st = con.createStatement();
                String sql = "Insert into ContactInfo(Name,Email,Phone,Message)values('"+name1+"','"+email+"','"+ph+"','"+ms+"')";
                st.executeUpdate(sql);
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
                
            }
            response.sendRedirect("home1.html");
            
            


            %>
    </body>
</html>
