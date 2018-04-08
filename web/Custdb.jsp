<%-- 
    Document   : Custdb
    Created on : Mar 31, 2018, 1:28:22 PM
    Author     : shubham
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String name =request.getParameter("n1");
    String address =request.getParameter("n2");
    String email =request.getParameter("n3");
    String contact =request.getParameter("n4");
    String service =request.getParameter("service");
    String servicedate =request.getParameter("n6");
    String noplate =request.getParameter("n7");
    String model =request.getParameter("n8");
    String status =request.getParameter("status");
    
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servicerecord", "root", "");
    Statement st=conn.createStatement();

    int i=st.executeUpdate("insert into servicedetail(cust_name,cust_address,email,contact,noservices,servicedate,noplate,model,status) values('"+name+"','"+address+"','"+email+"','"+contact+"','"+service+"','"+servicedate+"','"+noplate+"','"+model+"','"+status+"')");
     response.sendRedirect("CustInfo.jsp");
    }
    catch(Exception e)
    {
    System.out.print(e);
    System.out.print("error");
    //e.printStackTrace();
    }
%>
