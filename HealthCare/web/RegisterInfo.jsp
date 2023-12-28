<%-- 
    Document   : RegisterInfo
    Created on : Jul 11, 2023, 7:20:45 PM
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
            String add = request.getParameter("address");
            String conn = request.getParameter("contact");
            String gend = request.getParameter("gender");
            String doc = request.getParameter("doctor");
            String res = request.getParameter("reason");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
                Statement st = con.createStatement();
                String sql = "Insert into RegisterInfo(Name,Address,Contact,Gender,Doctor,Reason)values('"+name1+"','"+add+"','"+conn+"','"+gend+"','"+doc+"','"+res+"')";
                st.executeUpdate(sql);
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
                
            }
            response.sendRedirect("Confirm.html");
            
            


            %>
    </body>
</html>
