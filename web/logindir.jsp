<%-- 
    Document   : logindir
    Created on : Apr 8, 2018, 2:17:36 PM
    Author     : shubham
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    if (userid.equals("admin") && pwd.equals("admin")) {
        session.setAttribute("userid",true);
        response.sendRedirect("CustInfo.jsp");
    } else {
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>
