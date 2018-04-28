<%-- 
    Document   : delete
    Created on : Apr 28, 2018, 11:38:11 PM
    Author     : shubham
--%>

<%@page import="java.sql.*"%>
<%

String id=request.getParameter("id");
int no=Integer.parseInt(id);
String status=request.getParameter("status");
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servicerecord", "root", "");
Statement st = conn.createStatement();
st.executeUpdate("DELETE FROM servicedetail WHERE id = '"+no+"'");
response.sendRedirect("status.jsp");
}
catch(Exception e){}
%>
