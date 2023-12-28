<%-- 
    Document   : currentpatient
    Created on : Nov 6, 2023, 6:08:33 PM
    Author     : SSD ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#BDCDD6">
        
        <%@page import=" java.sql.*"%>
    <center>
        <h1><i><span>CURRENT PATIENTS DETAILS</span></i></h1>
        
 <%
try{
 Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
Statement st=con.createStatement();
String sql ="select * from RegisterInfo";
ResultSet rs= st.executeQuery(sql);
%>

<table border="1" cellspacing="5">
    <thead>
<tr>
    <td><b>Patient Name</b></td>
    <td><b>Address</b></td>
    <td><b>Contact No.</b></td>
    <td><b>Gender</b></td>
    <td><b>Doctor</b></td>
    <td><b>Reason</b></td>


</tr>
    </thead>
    <tbody>
<%
while(rs.next()){
%>
<tr>
    <td><i><%=rs.getString("Name") %></i></td>
    <td><i><%=rs.getString("Address") %></i></td>
    <td><i><%=rs.getString("Contact") %></i></td>
    <td><i><%=rs.getString("Gender") %></i></td>
    <td><i><%=rs.getString("Doctor") %></i></td>
    <td><i><%=rs.getString("Reason") %></i></td>
</tr>
    </tbody>
<%
}
con.close();
} catch (Exception e)
{
e.printStackTrace();
}
%>
    </body>
</html>
